---
title: "Location analysis"
author: "Renuka"
date: "2020-11-04"
output: html_document
---

# Analysis




## Alpha diversity analysis

Diversity index: diversity_shannon



<img src="figure_location/group_comp-1.png" title="plot of chunk group_comp" alt="plot of chunk group_comp" width="50%" />



## Differential abundance analysis (with Kruskal-Wallis test)

In (jointanalysis.md) it was shown that geographical location has a significant effect.

Here, we investigate individual taxonomic groups in more detail.

Significant (or marginally significant) taxa between geographical locations.

<img src="figure_location/diffab-1.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-2.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-3.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-4.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-5.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-6.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-7.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-8.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-9.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-10.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-11.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-12.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-13.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-14.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-15.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-16.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-17.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-18.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-19.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-20.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-21.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-22.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-23.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" /><img src="figure_location/diffab-24.png" title="plot of chunk diffab" alt="plot of chunk diffab" width="25%" />




```r
#Initializing data frame
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

![plot of chunk heatmaps](figure_location/heatmaps-1.png)
