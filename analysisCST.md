





# Cluster into CSTs

![plot of chunk MDS_CLRleo](figure/MDS_CLRleo-1.png)

```
##  [1] 5.9840548 3.7404996 2.0896780 1.3230250 1.1019674 0.9766566 0.9021602 0.6464166 0.5868130 0.5087633 0.4418356 0.3914422 0.3474311 0.3149250 0.3031454
## [16] 0.2890737 0.2568495 0.2294809 0.2250794 0.2010400
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

Perform PAM K-fold clusters and assess significance of CST vs. location (p-value)


```
## 
## 	Fisher's Exact Test for Count Data
## 
## data:  table(sample_data(ps)[, c("CST", "Geographical_location")])
## p-value = 0.002411
## alternative hypothesis: two.sided
```



## Evaluate clustering


<img src="figure/NMDS-1.png" title="plot of chunk NMDS" alt="plot of chunk NMDS" width="50%" /><img src="figure/NMDS-2.png" title="plot of chunk NMDS" alt="plot of chunk NMDS" width="50%" />


# Principal Coordinates Analysis (PCoA)

Coloured by CST community type

<img src="figure/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="60%" /><img src="figure/pcoa-2.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="60%" /><img src="figure/pcoa-3.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="60%" />

### Heatmap

Heatmaps for the community state types. The most different OTUs are shown.


```
## Error in arrangeGrob(...): object 'p3' not found
```

<img src="figure/clust-diverse_CLRleo-1.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" /><img src="figure/clust-diverse_CLRleo-2.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" /><img src="figure/clust-diverse_CLRleo-3.png" title="plot of chunk clust-diverse_CLRleo" alt="plot of chunk clust-diverse_CLRleo" width="33%" />






Table of full names for the heatmap taxa:


|ASV     |Full_name                                                                        |
|:-------|:--------------------------------------------------------------------------------|
|OTU367  |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Bacillus                      |
|OTU2172 |Bacteria_Firmicutes_Bacilli_Bacillales_Staphylococcaceae_Staphylococcus          |
|OTU194  |Bacteria_Firmicutes_Tissierellia_Tissierellales_Peptoniphilaceae_Anaerococcus    |
|OTU2398 |Bacteria_Firmicutes_Bacilli_Bacillales_Sporolactobacillaceae_Tuberibacillus      |
|OTU1137 |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Halobacillus                  |
|OTU1075 |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Geobacillus                   |
|OTU2390 |Bacteria_Spirochaetes_Spirochaetia_Spirochaetales_Spirochaetaceae_Treponema      |
|OTU1980 |Bacteria_Firmicutes_Bacilli_Bacillales_Sporolactobacillaceae_Pullulanibacillus   |
|OTU860  |Bacteria_Firmicutes_Negativicutes_Selenomonadales_Sporomusaceae_Desulfosporomusa |
|OTU211  |Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Anoxybacillus                 |

