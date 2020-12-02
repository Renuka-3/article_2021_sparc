---
title: "CSTAnalysis_SkinSamples.Rmd"
author: "Renuka"
date: "2020-12-03"
output: html_document
---



# Transform the data (proportions)


# Cluster into CSTs
![plot of chunk MDS_CLRleo](figure/MDS_CLRleo-1.png)

```
##  [1] 5.9840548 3.7404996 2.0896780 1.3230250 1.1019674 0.9766566 0.9021602
##  [8] 0.6464166 0.5868130 0.5087633 0.4418356 0.3914422 0.3474311 0.3149250
## [15] 0.3031454 0.2890737 0.2568495 0.2294809 0.2250794 0.2010400
```

```
## [1] -0.05442782 -0.06150271 -0.07856958 -0.09270186 -0.10894815 -0.12931259
```

## Denoise distance matrix
![plot of chunk PCoA-cutoff2_CLRleo](figure/PCoA-cutoff2_CLRleo-1.png)![plot of chunk PCoA-cutoff2_CLRleo](figure/PCoA-cutoff2_CLRleo-2.png)

## Determine number of clusters
We will use the gap statistic to indicate the number of clusters in this data:

```
## Clustering k = 1,2,..., K.max (= 12): .. done
## Bootstrapping, b = 1,2,..., B (= 50)  [one "." per sample]:
## .................................................. 50
```

![plot of chunk gap-stat_CLRleo](figure/gap-stat_CLRleo-1.png)

## Cluster into CSTs

Perform PAM 3-fold clusters:



## Evaluate clustering

![plot of chunk see-pam-k5u_CLRleo](figure/see-pam-k5u_CLRleo-1.png)







<img src="figure/see-pam-k3Sampesl55_CLRleo-1.png" title="plot of chunk see-pam-k3Sampesl55_CLRleo" alt="plot of chunk see-pam-k3Sampesl55_CLRleo" width="50%" />

# Principal Coordinates Analysis (PCoA)

Coloured by DMM community type

<img src="figure/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="33%" />

### Heatmap

Heatmaps for the community state types.

<img src="figure/clust-diverse_CLRleo-1.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" /><img src="figure/clust-diverse_CLRleo-2.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" /><img src="figure/clust-diverse_CLRleo-3.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" />


### Boxplots for each genus in the three clusters

<img src="figure/clust-diverse_boxplot_CLRleo-1.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-2.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-3.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-4.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-5.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-6.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-7.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-8.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-9.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" /><img src="figure/clust-diverse_boxplot_CLRleo-10.png" title="plot of chunk clust-diverse_boxplot_CLRleo" alt="plot of chunk clust-diverse_boxplot_CLRleo" width="25%" />


Table of full names for the taxa:



