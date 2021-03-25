# Analysis



# Alpha diversity analysis


```
##    observed    chao1 diversity_inverse_simpson diversity_gini_simpson
## I1      100 245.8000                  2.742798             0.63540883
## I2       92 165.6333                  1.052462             0.04984661
## I3       95 159.6538                  1.931888             0.48237170
## I4       38  66.9000                  4.132087             0.75799152
## I5       78 158.1818                  1.745322             0.42703968
## I6       44 106.5000                  1.112965             0.10149904
##    diversity_shannon diversity_fisher diversity_coverage evenness_camargo
## I1         1.3694541        13.364437                  1        0.9474949
## I2         0.1878765        10.980589                  1        0.9985936
## I3         1.2914717        14.410657                  1        0.2914961
## I4         1.6716162         6.171426                  2        0.9940274
## I5         0.9880714        11.186785                  1        0.9839926
## I6         0.2698556         4.792753                  1        0.9988391
##    evenness_pielou evenness_simpson evenness_evar evenness_bulla dominance_dbp
## I1      0.29737317       0.02742798     0.1579553     0.07787295     0.5107450
## I2      0.04154916       0.01143980     0.2065513     0.02556145     0.9747164
## I3      0.28359828       0.02033567     0.1915306     0.11600791     0.7101353
## I4      0.45953997       0.10873912     0.1497128     0.16037771     0.2988308
## I5      0.22679307       0.02237592     0.1909460     0.07726423     0.7435424
## I6      0.07131132       0.02529466     0.1186903     0.03944664     0.9471353
##    dominance_dmn dominance_absolute dominance_relative dominance_simpson
## I1     0.8213804              12121          0.5107450         0.3645912
## I2     0.9809117              46570          0.9747164         0.9501534
## I3     0.7990093               7455          0.7101353         0.5176283
## I4     0.5718707                869          0.2988308         0.2420085
## I5     0.8430057               8866          0.7435424         0.5729603
## I6     0.9841771              44056          0.9471353         0.8985010
##    dominance_core_abundance dominance_gini rarity_log_modulo_skewness
## I1                0.9810804      0.9948356                   2.061147
## I2                0.9960023      0.9978941                   2.061260
## I3                0.8909316      0.9937761                   2.061270
## I4                0.9381018      0.9934163                   2.061423
## I5                0.8940792      0.9960293                   2.061195
## I6                0.9922606      0.9981882                   2.060696
##    rarity_low_abundance rarity_rare_abundance
## I1          0.014537334          0.0024018203
## I2          0.008874377          0.0009418561
## I3          0.022575729          0.0125738236
## I4          0.015474553          0.0127235213
## I5          0.010902382          0.0012579671
## I6          0.006277545          0.0001504891
```

```
## [1] TRUE
```

```
## [1] TRUE
```



|      |        x|
|:-----|--------:|
|Mixed | 1.270704|
|Veg   | 1.236754|


# Group-wise comparisons
* Diversity index: diversity_shannon

<img src="figure_diet/group_comp-1.png" title="plot of chunk group_comp" alt="plot of chunk group_comp" width="50%" />

# Ordination



## *Principal Coordinates Analysis (PCoA)*

* Ordination method: PCoA
* Dissimilarity measure: bray

<img src="figure_diet/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" />

## Differential abundance analysis 

Differential abundance analysis is carriedout using DESeq2 method


| log2FoldChange|      padj|taxon   |full_name                                                                                             |
|--------------:|---------:|:-------|:-----------------------------------------------------------------------------------------------------|
|       6.538842| 0.0000001|OTU526  |Bacteria_Actinobacteria_Actinobacteria_Micrococcales_Brevibacteriaceae_Brevibacterium                 |
|       4.239621| 0.0002373|OTU194  |Bacteria_Firmicutes_Tissierellia_Tissierellales_Peptoniphilaceae_Anaerococcus                         |
|       4.871275| 0.0026454|OTU1034 |Bacteria_Firmicutes_Tissierellia_Tissierellales_Peptoniphilaceae_Finegoldia                           |
|       3.805141| 0.0423790|OTU1768 |Bacteria_Firmicutes_Clostridia_Clostridiales_Peptoniphilus_Peptoniphilus                              |
|       2.462234| 0.0423790|OTU661  |Bacteria_Firmicutes_Clostridia_Clostridiales_Clostridiaceae_Clostridium                               |
|       4.214174| 0.0434546|OTU2054 |Bacteria_Proteobacteria_Gammaproteobacteria_Oceanospirillales_Saccharospirillaceae_Saccharospirillum  |
|       2.897576| 0.0434546|OTU1849 |Bacteria_Actinobacteria_Actinobacteria_Propionibacteriales_Propionibacteriaceae_Propionibacterium     |
|       3.662462| 0.0489192|OTU2076 |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _Enterobacteriaceae_Salmonella           |
|       3.243989| 0.0489192|OTU2306 |Bacteria_Actinobacteria_Actinobacteria_Propionibacteriales_Propionibacteriaceae_Tessaracoccus         |
|       4.247971| 0.0564232|OTU929  |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _Enterobacteriaceae_Enterobacter         |
|       4.553118| 0.0677388|OTU1864 |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _Morganellaceae_Proteus                  |
|       2.849115| 0.0981577|OTU1709 |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _Erwiniaceae_Pantoea                     |
|       1.986647| 0.0981577|OTU2172 |Bacteria_Firmicutes_Bacilli_Bacillales_Staphylococcaceae_Staphylococcus                               |
|       4.456895| 0.1654653|OTU1797 |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _NA_Phytobacter                          |
|       4.037909| 0.2060017|OTU804  |Bacteria_Proteobacteria_Gammaproteobacteria_Enterobacterales _Enterobacteriaceae_Cronobacter          |
|      -2.573789| 0.2060017|OTU1275 |Bacteria_Actinobacteria_Actinobacteria_Micrococcales_Micrococcaceae_Kocuria                           |
|       6.204146| 0.2172731|OTU1370 |Bacteria_Proteobacteria_Gammaproteobacteria_Xanthomonadales_Xanthomonadaceae_Luteimonas               |
|       3.095269| 0.2172731|OTU1874 |Bacteria_Proteobacteria_Gammaproteobacteria_Alteromonadales _Pseudoalteromonadaceae_Pseudoalteromonas |
|       2.421420| 0.2172731|OTU1450 |Bacteria_Actinobacteria_Actinobacteria_Micrococcales_Microbacteriaceae_Microbacterium                 |

<img src="figure_diet/DESeq2-1.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-2.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-3.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-4.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-5.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-6.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-7.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-8.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-9.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-10.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-11.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" /><img src="figure_diet/DESeq2-12.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="50%" />

# PERMANOVA analysis

p value for the effect of diet is (p=0.31), which is not significant.


```
## [1] 0.34
```

```
## Analysis of Variance Table
## 
## Response: Distances
##           Df  Sum Sq  Mean Sq F value Pr(>F)
## Groups     1 0.01306 0.013062  0.8866 0.3504
## Residuals 56 0.82502 0.014733
```

# Investigate the top factors

![plot of chunk top_factors](figure_diet/top_factors-1.png)
