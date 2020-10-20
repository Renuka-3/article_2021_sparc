---
title: "Location analysis"
author: "Renuka"
date: "2020-10-21"
output: html_document
---

# Analysis




# Alpha diversity analysis




# Group-wise comparisons

Diversity index: diversity_shannon

<img src="figure/group_comp-1.png" title="plot of chunk group_comp" alt="plot of chunk group_comp" width="50%" />

# Ordination



## Principal Coordinates Analysis (PCoA)

* Ordination method: PCoA
* Dissimilarity measure: jaccard

<img src="figure/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" />


## Differential abundance analysis (with DESeq2)


| log2FoldChange|      padj|taxon   |full_name                                                                        |
|--------------:|---------:|:-------|:--------------------------------------------------------------------------------|
|       5.890011| 0.0000000|OTU2172 |Bacteria_Firmicutes_Bacilli_Bacillales_Staphylococcaceae_Staphylococcus          |
|      -3.154752| 0.0070619|OTU367  |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Bacillus                      |
|      -3.199304| 0.0085109|OTU2529 |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Virgibacillus                 |
|      -2.511998| 0.0085109|OTU1680 |Bacteria_Firmicutes_Bacilli_Bacillales_Paenibacillaceae _Paenibacillus           |
|      -3.175628| 0.1176826|OTU251  |Bacteria_Actinobacteria_Actinobacteria_Micrococcales_Micrococcaceae_Arthrobacter |
|      -2.581503| 0.1319555|OTU1075 |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Geobacillus                   |

<img src="figure/DESeq2-1.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" /><img src="figure/DESeq2-2.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" /><img src="figure/DESeq2-3.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" /><img src="figure/DESeq2-4.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" /><img src="figure/DESeq2-5.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" /><img src="figure/DESeq2-6.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="33%" />

# PERMANOVA analysis


```r
library(microbiome)
library(ggplot2)
library(dplyr)

pseq <- phy# Rename the example data
data = microbiome::meta(phy)
# Pick relative abundances (compositional) and sample metadata 
pseq.rel <- microbiome::transform(pseq, "compositional")
otu <- abundances(pseq.rel)
meta <- meta(pseq.rel)
library(vegan)
library(phyloseq)
permanova <- adonis(t(otu) ~ Geographical_location,
               data = meta(phy), permutations=99, method = "bray")

# P-value
print(as.data.frame(permanova$aov.tab)["Geographical_location", "Pr(>F)"])
```

```
## [1] 0.01
```

```r
dist <- vegdist(t(otu))
anova(betadisper(dist, meta$Geographical_location))
```

```
## Analysis of Variance Table
## 
## Response: Distances
##           Df  Sum Sq Mean Sq F value Pr(>F)
## Groups     2 0.15882 0.07941  1.7537 0.1827
## Residuals 55 2.49040 0.04528
```

# Investigate the top factors

```r
library(vegan)
coef <- coefficients(permanova)["Geographical_location1", ]
top.coef <- coef[rev(order(abs(coef)))[1:20]]
names(top.coef) <- full.names[names(top.coef)]

par(mar = c(3, 14, 2, 1))
barplot(sort(top.coef), horiz = T, las = 1, main = "Top taxa")
```

![plot of chunk top_factors](figure/top_factors-1.png)

