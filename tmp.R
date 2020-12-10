### Boxplots for each genus in the three clusters

```{r clust-diverse_boxplot_CLRleo, message=FALSE, echo=FALSE, warning=FALSE, out.width="25%", fig.height=5, fig.width=6}
theme_set(theme_bw(base_size = 20))
library(ggbeeswarm)
df<- meta(pso)

for (tax in rev(significant.taxa)) {

  # Pick the abundance values for the given taxonomic group ("tax")
  # Let us use compositional transformed values
  df$signal <- abundances(transform(pso, "compositional"))[tax,]

  # Retrieve the full name for this taxon
  tax.full.name <- full.names[tax]

  # Plot taxon abundance (signal) against the cluster (CST) as a boxplot
  p <- ggplot(df, aes(x = CST, y = signal)) +
         labs(title = tax) +
         geom_boxplot() +
	 geom_beeswarm() +
	 labs(y = "Relative abundance (%)") + 
	 scale_y_log10(labels = scales::percent)
  print(p)
  
}
```




```{r heatmaps, echo=FALSE, fig.width=10, fig.height=5, warning=FALSE}
# Initializing data frame

otu_vs_sample <- data.frame(matrix(ncol = length(df$taxon),nrow = length(abundances(ps)[1,])))
colnames(otu_vs_sample) <- df$taxon
rownames(otu_vs_sample) <- colnames(abundances(ps))
otu_vs_sample$location <- NA

#Collecting the data to data frame
for (i in c(1:length(df$taxon))){
  for (j in c(1:length(abundances(ps)[1,]))){
    #Abundances e.g. otu_vs_sample["I1", "OTU237"] <- abundances(ps)["OTU237", I1"]
    otu_vs_sample[rownames(otu_vs_sample)[j],colnames(otu_vs_sample)[i]] <- abundances(ps)[colnames(otu_vs_sample)[i],rownames(otu_vs_sample)[j]]
    #Location information e.g.  otu_vs_sample$location[1] <- d$Geographical_location[d$Sample == "I1"]
    otu_vs_sample$location[j] <- d$Geographical_location[d$Sample == rownames(otu_vs_sample)[j]] 
  }
}

#Rownames to data frame's 1st column
library(data.table)
setDT(otu_vs_sample, keep.rownames = TRUE)[]
colnames(otu_vs_sample)[1] <- "Sample"

#Subsetting data by location
pune_data <- otu_vs_sample %>% filter(location == "Pune")
ahmednagar_data <- otu_vs_sample %>% filter(location == "Ahmednagar")
nashik_data <- otu_vs_sample %>% filter(location == "Nashik")

#Deletes location data
pune_data$location <- NULL
ahmednagar_data$location <- NULL
nashik_data$location <- NULL

#Changing data frames' format
pune_data <- melt(pune_data)
colnames(pune_data) <- c("Sample", "Taxa", "value")

ahmednagar_data <- melt(ahmednagar_data)
colnames(ahmednagar_data) <- c("Sample", "Taxa", "value")

nashik_data <- melt(nashik_data)
colnames(nashik_data) <- c("Sample", "Taxa", "value")

#Creating heatmaps
pune_heat <- heat(pune_data, "Sample","Taxa", "value", legend.text = "Abundance",order.rows = F, 
   order.cols = F, limits= c(-10,10), step = 1) + ggtitle("Pune") + theme(axis.text = element_text(size = 8), axis.text.x = element_blank(), plot.title = element_text(size = 8), legend.title = element_text(size = 8), legend.text = element_text(size = 8), legend.key.height = unit(1.5, "cm"))
 
ahmednagar_heat <- heat(ahmednagar_data, "Sample","Taxa", "value", legend.text = "Abundance",order.rows = F,
  order.cols = F, limits= c(-10,10), step = 1) + ggtitle("Ahmednagar") + theme(axis.text = element_text(size = 8), axis.text.x = element_blank(), plot.title = element_text(size = 8), legend.title = element_text(size = 8), legend.text = element_text(size = 8), legend.key.height = unit(1.5, "cm"))

nashik_heat <- heat(nashik_data, "Sample","Taxa", "value", legend.text = "Abundance",order.rows = F,
  order.cols = F, limits= c(-10,10), step = 1) + ggtitle("Nashik") + theme(axis.text = element_text(size = 8), axis.text.x = element_blank(), plot.title = element_text(size = 8), legend.title = element_text(size = 8), legend.text = element_text(size = 8), legend.key.height = unit(1.5, "cm"))

#Arranging heatmaps to one picture
library(cowplot)
heatmap_grid <- plot_grid(pune_heat + theme(legend.position="none"), ahmednagar_heat + theme(legend.position="none"), nashik_heat + theme(legend.position="none"), ncol = 3, axis = "t", scale = 0.85)

#Displaying the heatmaps and legend
heatmap_grid + draw_grob(get_legend(pune_heat+ theme(legend.position="bottom", legend.key.width = unit(2, "cm"), legend.key.height = unit(0.2, "cm"))), 0.5, -0.38, 0, 1)
```




library(nlme)
library(tidyverse)
library(ggplot2)
library(compositions)
source("scripts/ancom_v2.1.R")
source("~/Rpackages/ANCOM/scripts/ancom_v2.1.R")

library(readr)
library(tidyverse)

sample_var = "Sample"
group_var = NULL
out_cut = 0.05
zero_cut = 0.90
lib_cut = 1000
neg_lb = FALSE
feature_table <- abundances(phy)
meta_data <- meta(phy)

prepro <- feature_table_pre_process(feature_table, meta_data, sample_var, group_var, out_cut, zero_cut, lib_cut, neg_lb)

feature_table = prepro$feature_table # Preprocessed feature table
meta_data = prepro$meta_data # Preprocessed metadata
struc_zero = prepro$structure_zeros # Structural zero info

main_var = "Geographical_location";
p_adj_method = "BH";
alpha = 0.05
adj_formula = NULL;
rand_formula = NULL

res <- ANCOM(feature_table, meta_data, struc_zero, main_var, p_adj_method, 
            alpha, adj_formula, rand_formula)

head(res)

# write_csv(res$out, "outputs/res.csv")


