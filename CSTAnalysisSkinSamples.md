---
title: "CST Analysis:SkinSamples"
author: "Renuka"
date: "4 November 2020"
output: html_document
---



```
## Warning: package 'ggplot2' was built under R version 3.6.3
```

```
## Warning: package 'igraph' was built under R version 3.6.3
```

```
## Warning: package 'markovchain' was built under R version 3.6.3
```

```
## Warning: package 'gridExtra' was built under R version 3.6.3
```
#Transform the data (proportions)


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

#### Ordination plot for the Diet group



















