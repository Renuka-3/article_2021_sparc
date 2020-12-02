---
title: "CSTAnalysis_SkinSamples.Rmd"
author: "Renuka"
date: "2020-12-03"
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

Heatmaps for the community state types.

<img src="figure/clust-diverse_CLRleo-1.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" /><img src="figure/clust-diverse_CLRleo-2.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" /><img src="figure/clust-diverse_CLRleo-3.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="20%" />


### Boxplots for each genus in the three clusters

<img src="figure/clust-diverse_boxplot_CLRleo-1.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-2.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-3.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-4.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-5.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-6.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-7.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-8.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-9.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-10.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" />


Table of full names for the taxa:




##### -----------------------------------------------------------------

What is the purpose of this analysis? Some comments would help.


|        |  Veg| Mixed|
|:-------|----:|-----:|
|Clust.1 | 53.3|  46.7|

#### Fisher-exact test at the first and second visits between clusters

Do we have first and second visits?


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
