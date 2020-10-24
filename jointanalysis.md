---
title: "joint analysis"
author: "Renuka"
date: "24 October 2020"
output: html_document
---


# Ordination



## *Principal Coordinates Analysis (PCoA)*

* Ordination method: PCoA
* Dissimilarity measure: bray

<img src="figure_joint/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" /><img src="figure_joint/pcoa-2.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" /><img src="figure_joint/pcoa-3.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" />

# PERMANOVA analysis


```r
res <- adonis(t(otu_table(phy)) ~ Diet + Geographical_location + age_group,
         data = meta(phy),
	 permutations=99,
	 method = method)
```

```
## Error in vegdist(lhs, method = method, ...): invalid distance method
```

```r
print(res)
```

```
## 
## Call:
## adonis(formula = t(otu_table(phy)) ~ Diet + Geographical_location +      age_group, data = meta(phy), permutations = 99, method = "jaccard") 
## 
## Permutation: free
## Number of permutations: 99
## 
## Terms added sequentially (first to last)
## 
##                       Df SumsOfSqs MeanSqs F.Model      R2 Pr(>F)   
## Diet                   1    0.4264 0.42635 0.99578 0.01690   0.44   
## Geographical_location  2    1.5967 0.79833 1.86457 0.06328   0.01 **
## age_group              2    0.9438 0.47189 1.10215 0.03741   0.20   
## Residuals             52   22.2642 0.42816         0.88241          
## Total                 57   25.2310                 1.00000          
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

# Differential abundance analysis


|taxon   |      padj|full_name                                                                                          |
|:-------|---------:|:--------------------------------------------------------------------------------------------------|
|OTU1137 | 0.0004564|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Halobacillus                                    |
|OTU1980 | 0.0005883|Bacteria_Firmicutes_Bacilli_Bacillales_Sporolactobacillaceae_Pullulanibacillus                     |
|OTU1053 | 0.0009277|Bacteria_Firmicutes_Bacilli_Lactobacillales_Leuconostocaceae_Fructobacillus                        |
|OTU860  | 0.0014029|Bacteria_Firmicutes_Negativicutes_Selenomonadales_Sporomusaceae_Desulfosporomusa                   |
|OTU611  | 0.0029045|Bacteria_Fibrobacteres_Chitinispirillia _Chitinispirillales _Chitinispirillaceae_Chitinivibrio     |
|OTU2335 | 0.0033954|Bacteria_Firmicutes_Clostridia_Thermoanaerobacterales_Thermoanaerobacteraceae_Thermoanaerobacter   |
|OTU610  | 0.0052708|Bacteria_Fibrobacteres_Chitinispirillia _Chitinispirillales _Chitinispirillaceae_Chitinispirillum  |
|OTU1429 | 0.0069412|Bacteria_Firmicutes_Bacilli_Bacillales_Thermoactinomycetaceae_Melghirimyces                        |
|OTU2057 | 0.0069827|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Salimicrobium                                   |
|OTU2529 | 0.0078574|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Virgibacillus                                   |
|OTU1075 | 0.0095364|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Geobacillus                                     |
|OTU915  | 0.0124887|Bacteria_Proteobacteria_Gammaproteobacteria_Chromatiales_Ectothiorhodospiraceae_Ectothiorhodospira |
|OTU1223 | 0.0126271|Bacteria_Actinobacteria_Actinobacteria_Micrococcales_Intrasporangiaceae_Janibacter                 |
|OTU211  | 0.0237266|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Anoxybacillus                                   |
|OTU15   | 0.0249790|Bacteria_Firmicutes_Negativicutes_Acidaminococcales_Acidaminococcaceae_Acidaminococcus             |
|OTU2283 | 0.0249790|Bacteria_Cyanobacteria_NA_Synechococcales_Synechococcaceae_Synechococcus                           |
|OTU1888 | 0.0250103|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Pseudogracilibacillus                           |
|OTU2390 | 0.0295262|Bacteria_Spirochaetes_Spirochaetia_Spirochaetales_Spirochaetaceae_Treponema                        |
|OTU1235 | 0.0297481|Bacteria_Firmicutes_Bacilli_Bacillales_Staphylococcaceae_Jeotgalicoccus                            |
|OTU562  | 0.0388722|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Calditerricola                                  |
|OTU1798 | 0.0389941|Bacteria_Actinobacteria_Actinobacteria_Micromonosporales_Micromonosporaceae_Phytomonospora         |
|OTU76   | 0.0470674|Bacteria_Actinobacteria_Actinobacteria_Streptosporangiales_Thermomonosporaceae_Actinomadura        |
|OTU1062 | 0.0788540|Bacteria_Firmicutes_Clostridia_Thermoanaerobacterales_Thermoanaerobacteraceae_Gelria               |
|OTU2153 | 0.0788540|Bacteria_Spirochaetes_Spirochaetia_Spirochaetales_Spirochaetaceae_Spirochaeta                      |
|OTU169  | 0.0795218|Bacteria_Firmicutes_Clostridia_Clostridiales_Eubacteriaceae_Aminicella                             |
|OTU184  | 0.0795218|Bacteria_Actinobacteria_Actinobacteria_Pseudonocardiales_Pseudonocardiaceae_Amycolatopsis          |
|OTU2286 | 0.0795218|Bacteria_Firmicutes_Clostridia_Clostridiales_Peptococcaceae_Syntrophobotulus                       |
|OTU2333 | 0.0795218|Bacteria_Firmicutes_Clostridia_Clostridiales_Peptococcaceae_Thermincola                            |
|OTU2388 | 0.0795218|Bacteria_Actinobacteria_Actinobacteria_Corynebacteriales_NA_Tomitella                              |
|OTU2394 | 0.0795218|Bacteria_Firmicutes_Bacilli_Lactobacillales_Carnobacteriaceae_Trichococcus                         |
|OTU1810 | 0.1017300|Bacteria_Firmicutes_Bacilli_Bacillales_Planococcaceae_Planomicrobium                               |
|OTU1336 | 0.1409617|Bacteria_Firmicutes_Bacilli_Bacillales_Bacillaceae_Lentibacillus                                   |
|OTU922  | 0.1592962|Bacteria_Firmicutes_Clostridia_Clostridiales_Clostridiales Family XIII. Incertae Sedis_Emergencia  |
|OTU2218 | 0.1613689|Bacteria_Firmicutes_Bacilli_Lactobacillales_Streptococcaceae_Streptococcus                         |

<img src="figure_joint/DESeq2-1.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-2.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-3.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-4.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-5.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-6.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-7.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-8.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-9.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-10.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-11.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-12.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-13.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-14.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-15.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-16.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-17.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-18.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-19.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-20.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-21.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-22.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-23.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-24.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-25.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-26.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-27.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-28.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-29.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-30.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-31.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-32.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-33.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" /><img src="figure_joint/DESeq2-34.png" title="plot of chunk DESeq2" alt="plot of chunk DESeq2" width="25%" />


