---
title: "CSTAnalysis_SkinSamples.Rmd"
author: "Renuka"
date: "4 November 2020"
output: html_document
---



# Transform the data (proportions)


# Cluster into CSTs
![plot of chunk MDS_CLRleo](figure/MDS_CLRleo-1.png)

## Denoise distance matrix
![plot of chunk PCoA-cutoff2_CLRleo](figure/PCoA-cutoff2_CLRleo-1.png)![plot of chunk PCoA-cutoff2_CLRleo](figure/PCoA-cutoff2_CLRleo-2.png)

## Determine number of clusters
We will use the gap statistic to indicate the number of clusters in this data:
![plot of chunk gap-stat_CLRleo](figure/gap-stat_CLRleo-1.png)

## Cluster into CSTs
Perform PAM 3-fold clusters:

## Evaluate clustering

![plot of chunk see-pam-k5u_CLRleo](figure/see-pam-k5u_CLRleo-1.png)

#### Ordination plot for the Diet group








<img src="figure/see-pam-k3Sampesl55_CLRleo-1.png" title="plot of chunk see-pam-k3Sampesl55_CLRleo" alt="plot of chunk see-pam-k3Sampesl55_CLRleo" width="50%" />

# Principal Coordinates Analysis (PCoA)
Coloured by DMM community type
<img src="figure/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="33%" />

### Heatmap
<img src="figure/clust-diverse_CLRleo-1.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" /><img src="figure/clust-diverse_CLRleo-2.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" /><img src="figure/clust-diverse_CLRleo-3.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" />
### Boxplots for each genus in the three clusters
<img src="figure/clust-diverse_boxplot_CLRleo-1.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-2.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-3.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-4.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-5.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-6.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-7.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-8.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-9.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-10.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-11.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-12.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-13.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-14.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-15.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-16.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-17.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-18.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-19.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-20.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-21.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-22.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-23.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-24.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-25.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-26.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-27.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-28.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-29.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-30.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-31.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-32.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-33.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-34.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-35.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-36.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-37.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-38.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-39.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-40.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-41.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-42.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-43.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-44.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-45.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-46.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-47.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-48.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-49.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-50.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" />
### adjusted pvalues for kruskal tests By Benjamini-Hochberg



##### -----------------------------------------------------------------

|        |  Veg| Mixed|
|:-------|----:|-----:|
|Clust.1 | 53.3|  46.7|
#### Fisher-exact test at the first and second visits between clusters

```
##      Diet
## CST   Mixed Veg Sum
##   1      14  16  30
##   2       5   8  13
##   3       9   6  15
##   Sum    28  30  58
```

```
## [1] "Fisher exact test p-value is: "
```

```
## [1] 0.5411113
```
