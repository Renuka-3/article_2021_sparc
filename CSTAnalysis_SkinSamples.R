## ----initCST_CLR, message=F, echo=F, echo=FALSE---------------------------------------------------------------------------------------------------------------
library("phyloseq")
library("ggplot2")
library("cluster")
library("igraph")
library("markovchain")
library("RColorBrewer")
library(microbiome)
library("gridExtra")
library(tidyr)
library(dplyr)
set.seed(455423)
options(stringsAsFactors = FALSE)
theme_set(theme_bw())


## ----transform-data_CLRleo, message=FALSE, echo=FALSE, warning=FALSE------------------------------------------------------------------------------------------
# Init / Read data
ps <- readRDS("data/processed/phyloseq/phy20.1.RDS")
tt <- data.frame(tax_table(ps))
ps <- transform(ps, "compositional")


## ----MDS_CLRleo, warning=FALSE, message=FALSE, echo=FALSE, warning=FALSE--------------------------------------------------------------------------------------
braydist <- phyloseq::distance(ps, method="bray")
ord <- ordinate(ps, method = "MDS", distance = braydist)
plot_scree(ord) + xlim(as.character(seq(1,15))) + ggtitle("MDS-bray ordination eigenvalues")
evs <- ord$value$Eigenvalues
print(evs[1:20])
print(tail(evs))


## ----PCoA-cutoff2_CLRleo, warning=FALSE, message=FALSE, echo=FALSE, warning=FALSE-----------------------------------------------------------------------------
h_sub5 <- hist(evs[6:length(evs)], 100)
plot(h_sub5$mids, h_sub5$count, log="y", type='h', lwd=10, lend=2)


## ----gap-stat_CLRleo, message=FALSE, echo=FALSE, warning=FALSE------------------------------------------------------------------------------------------------
NDIM <- which(cumsum(evs^2/sum(evs^2)) > 0.9) - 1 # Pick components so that we reach 90% information
x <- ord$vectors[,1:NDIM]  # rows=sample, cols=MDS axes, entries = value
pamPCoA = function(x, k) {
  list(cluster = pam(x[,1:2], k, cluster.only = TRUE))
}
gs <- clusGap(x, FUN = pamPCoA, K.max = 12, B = 50)
plot_clusgap(gs) + scale_x_continuous(breaks=c(seq(0, 12, 2)))


## ----pam-k5_CLRleo, message=FALSE, echo=FALSE, warning=FALSE--------------------------------------------------------------------------------------------------
K <- 3 
x <- ord$vectors[,1:NDIM]
clust <- as.factor(pam(x, k=K, cluster.only=T))
sample_data(ps)$CST <- clust
CSTs <- as.character(seq(K))
fisher.test(table(sample_data(ps)[, c("CST", "Geographical_location")]))


## ----see-pam-k3_CLRleo,eval=T,results = 'hide',  message=FALSE, echo=FALSE, warning=FALSE---------------------------------------------------------------------
# Length 6 for consistency with pre-revision CST+ coloration
CSTColors <- brewer.pal(6,"Paired")[c(1,3,2,5,4,6)] 
names(CSTColors) <- CSTs
#CSTColorScale <- scale_colour_discrete(name = "CST", values = CSTColors[1:K])
#CSTFillScale <- scale_fill_discrete(name = "CST", values = CSTColors[1:K])
ok <- ordinate(ps, method="NMDS", distance=braydist)

## ----NMDS, message=FALSE, message=FALSE, echo=FALSE, warning=FALSE, fig.show="hold", out.width="50%"----------------------------------------------------------
plot_ordination(ps, ok, color="CST") + ggtitle("NMDS -- bray -- CST")
plot_ordination(ps, ok, color="Geographical_location") + ggtitle("NMDS -- bray -- Location")


## ----pcoa, echo=FALSE, message=FALSE, fig.width=7, fig.height=5, out.width="50%", fig.show="hold", warning=FALSE----------------------------------------------
theme_set(theme_bw(base_size=25))
method <- "PCoA"
trans <- "compositional"
distance <- "bray"
p1 <- plot_landscape(microbiome::transform(ps , "compositional"),
                    distance = distance,
                    method = method,
                    size = 3,
                    col = "CST",
                    shading = FALSE) +
  labs(title = "CST") + 		    		    
  scale_colour_brewer(palette = "Set1")		    
print(p1)

theme_set(theme_bw(base_size=15))
p2 <- plot_landscape(microbiome::transform(ps , "compositional"),
                    distance = distance,
                    method = method,
                    size = 3,
                    col = "Geographical_location",
                    shading = FALSE) +
  labs(title = "Location") + 		    
  scale_colour_brewer(palette = "Set1")		    
print(p2)


## ----clust-diverse_CLRleo, eval= T, message=FALSE, echo=FALSE, warning=FALSE, out.width="33%", fig.show="hold", warning=FALSE---------------------------------
theme_set(theme_bw(base_size = 17))
library(BBmisc)
library(reshape2)
library("RColorBrewer")
library(tidyr)
set.seed(1234)

# Identify ASVs that are most different between CSTs
pvs <- c()
for (tax in taxa(ps)) {
  pvs[[tax]] <- kruskal.test(abundances(ps)[tax,] ~ meta(ps)$CST)$p.value
}
pvs <- sort(unlist(pvs))
significant.taxa <- names(pvs)[which(as.numeric(p.adjust(pvs)) < 0.25)]

# Pick full names for the taxa
full.names <- apply(tax_table(ps), 1, function (x) {paste(x, collapse = "_")})

pso<- prune_taxa(significant.taxa, ps)
pso1<- microbiome::transform(pso, 'clr')
g<- otu_table(pso1)
g1<-BBmisc::normalize(g@.Data, 'standardize', range = c(0,1))
colnames(g1)<- colnames(otu_table(pso1)@.Data)
j<- otu_table(g1, taxa_are_rows = T)
otu_table(pso1)<- j
p <- list()
sort.taxa <- neatsort(pso1, "rows")
dfm <- tab <- data.frame(ASV = significant.taxa, Full_name = full.names[significant.taxa])
dfm$short_name <- dfm$Full_name %>% strsplit("_" ) %>% sapply(tail, 1 )
#tab$short_names <- tab$Full_name %>% strsplit("_" ) %>% sapply(tail, 1 )



for(CST in CSTs) {
  pshm <- prune_samples(sample_data(pso1)$CST == CST, pso1)
  dfm <- melt(abundances(pshm))
  ##colnames(dfm) <- c("Taxa", "Sample", "value")
  #colnames(dfm) <- c("short_name", "Sample", "value")
  ##dfm$Taxa <- factor(dfm$Taxa, levels = short_names)
  ##dfm$short_name <- factor(dfm$short_name)
  # dfm$Sample <- factor(dfm$Sample, levels = neatsort(pshm, "cols"))
  dfm$short_name <- full.names[as.character(dfm$Var1)] %>% strsplit("_" ) %>% sapply(tail, 1 )
  p[[CST]]<- heat((dfm), "Var2","short_name", "value", legend.text = "Abundance", order.rows = F, 
                order.cols = F, limits= c(-5,5), step = 0.5) +
		ggtitle(paste("CST:", CST)) + theme(axis.text.x = element_blank())
print(p[[CST]])
}


## ----full_names, echo=FALSE-----------------------------------------------------------------------------------------------------------------------------------
library(knitr)
tab <- data.frame(ASV = significant.taxa, Full_name = full.names[significant.taxa])
rownames(tab) <- NULL
kable(tab)

