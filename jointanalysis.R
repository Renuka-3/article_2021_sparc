## ----init, echo=FALSE, message=FALSE--------------------------------------------------------------------------------------------------------------------------
library(microbiome)
library(phyloseq)
library(vegan)
library(Cairo)
library(knitr)
library(knitcitations)
library(microbiome)
library(ggplot2)
library(dplyr)
library(vegan)
library(phyloseq)
library(microbiome)
library(phyloseq)
library(reshape2)
library(DESeq2)


opts_chunk$set(dev="CairoPNG")
knitr::opts_chunk$set(fig.path="figure_joint/")

method <- "PCoA"
trans <- "compositional"
distance <- "bray"
phy <- readRDS("data/processed/phyloseq/phy20.1.RDS")


## ----pcoa, echo=FALSE, message=FALSE, fig.width=9, fig.height=5, out.width="33%", fig.show="hold", warning=FALSE----------------------------------------------
theme_set(theme_bw(25))
p <- plot_landscape(microbiome::transform(phy , "compositional"),
                    distance = distance,
                    method = method,
                    size = 3,
                    col = "Diet",
                    shading = FALSE) +
  scale_colour_brewer(palette = "Set1")	+ labs(title = "Diet")  	    
print(p)

p1 <- plot_landscape(microbiome::transform(phy , "compositional"),
                    distance = distance,
                    method = method,
                    size = 3,
                    col = "Geographical_location",
                    shading = FALSE) +
  scale_colour_brewer(palette = "Set1") + labs(title = "Location")    
print(p1)

theme_set(theme_bw(25))
p2 <- plot_landscape(microbiome::transform(phy , "compositional"),
                     distance = distance,
                     method = method,
                     size = 3,
                     col = "age_group",
                     shading = FALSE) +
  scale_colour_brewer(palette = "Set1")	+ labs(title = "Age")	    
print(p2)


## ----PERMANOVA, echo=FALSE, message=FALSE, echo=F-------------------------------------------------------------------------------------------------------------
res <- adonis(t(otu_table(phy)) ~ Diet + Geographical_location + age_group,
         data = meta(phy),
	 permutations=99,
	 method = distance)
print(res)

