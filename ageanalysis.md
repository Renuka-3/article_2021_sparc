
```
## Error in age_group %in% "middle_age": object 'age_group' not found
```


# Alpha diversity analysis


```
## Error in is(x): object 'Q' not found
```

# Group-wise comparisons
* Diversity index: diversity_shannon


```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in list2(...): object 'A' not found
```

```
## Error in factor(age_group): object 'age_group' not found
```

```
## Error in paste0("wilcoxon tast p=", round(pv, 2)): object 'pv' not found
```

<img src="figure_age/group_comp-1.png" title="plot of chunk group_comp" alt="plot of chunk group_comp" width="50%" />


# Ordination



# Principal Coordinates Analysis (PCoA)

* Ordination method: PCoA
* Dissimilarity measure: jaccard


```
## Error in microbiome::transform(Q, "compositional"): object 'Q' not found
```

<img src="figure_age/pcoa-1.png" title="plot of chunk pcoa" alt="plot of chunk pcoa" width="50%" />


## Differential abundance analysis 

Differential abundance analysis is carried out using DESeq2 method


```
## Error in eval(expr, envir, enclos): object 'Q' not found
```

```
## Error in complete.cases(.): error in evaluating the argument '...' in selecting a method for function 'complete.cases': Error in sample_data(x) : object 'Q' not found
```

```
## Error in sample_data(x): object 'mypseq' not found
```

```
## Error in `$<-.data.frame`(`*tmp*`, group, value = structure(integer(0), .Label = character(0), class = "factor")): replacement has 0 rows, data has 58
```

```
## Error in sample_data(mypseq) <- sample_data(df): object 'mypseq' not found
```

```
## Error in sample_data(physeq, FALSE): object 'mypseq' not found
```

```
## Error in is(object, "DESeqDataSet"): object 'ds2' not found
```

```
## Error in is(object, "DESeqDataSet"): object 'dds' not found
```

```
## Error in as.data.frame(res): object 'res' not found
```

```
## Error: arrange() failed at implicit mutate() step. 
## ✖ Could not create a temporary column for `..1`.
## ℹ `..1` is `padj`.
```

```
## Error in eval(substitute(select), nl, parent.frame()): object 'log2FoldChange' not found
```



|Sample |H.W |Geographical_location |Gender |Religen   | Age|Occupation       |Soap                   |Diet  | Height| Weight|Mdical.conditions |  BMI|CST |    signal|taxon |full_name |
|:------|:---|:---------------------|:------|:---------|---:|:----------------|:----------------------|:-----|------:|------:|:-----------------|----:|:---|---------:|:-----|:---------|
|I1     |H1  |Ahmednagar            |M      |Hindu     |  54|Stenographer     |Lifeboy                |Veg   |  158.0|     62|NA                | 26.0|1   | 0.8540315|I1    |NA        |
|I2     |W1  |Ahmednagar            |F      |Hindu     |  46|House wife       |Lifeboy                |Veg   |  156.0|     61|NA                | 25.1|3   | 0.0052510|I2    |NA        |
|I3     |-   |Ahmednagar            |M      |Hindu     |  27|Student          |Lux                    |Veg   |  170.0|     71|NA                | 24.6|1   | 0.0017394|I3    |NA        |
|I4     |H2  |Pune                  |M      |Hindu     |  87|Retired          |Patanjali              |Veg   |  167.0|     49|BP                | 17.6|1   | 0.9314041|I4    |NA        |
|I5     |W2  |Pune                  |F      |Hindu     |  81|House wife       |Patanjali              |Veg   |  146.0|     52|NA                | 24.4|2   | 0.9968518|I5    |NA        |
|I6     |-   |Pune                  |F      |Hindu     |  44|Teacher          |Patanjali              |Veg   |  158.0|     77|NA                | 30.8|2   | 0.9989796|I6    |NA        |
|I7     |-   |Ahmednagar            |F      |Hindu     |  26|Private Service  |Jonson and jonson baby |Veg   |  173.7|     60|NA                | 19.9|3   | 0.0136121|I7    |NA        |
|I8     |-   |Ahmednagar            |M      |Christian |  91|Retired          |Cinthol                |Mixed |  167.6|     72|BP                | 25.6|3   | 0.0014899|I8    |NA        |
|I9     |-   |Ahmednagar            |F      |Christian |  54|Nurse            |Santoor                |Mixed |  161.5|     88|BP                | 33.7|3   | 0.0653319|I9    |NA        |
|I10    |H3  |Pune                  |M      |Hindu     |  53|Private survice  |Cinthol                |Mixed |  168.0|     78|NA                | 27.6|1   | 0.9936219|I10   |NA        |
|I11    |W3  |Pune                  |F      |Hindu     |  51|Professor        |Sinthol                |Mixed |  157.0|     70|NA                | 28.4|2   | 0.9923198|I11   |NA        |
|I12    |-   |Nashik                |F      |Muslim    |  17|Student          |Dove                   |Mixed |     NA|     NA|NA                |   NA|2   | 0.9925958|I12   |NA        |
|I13    |-   |Nashik                |F      |Muslim    |  35|Housewife        |Lifebuoy               |Mixed |     NA|     NA|NA                |   NA|3   | 0.0053711|I13   |NA        |
|I14    |H4  |Pune                  |M      |Hindu     |  73|Retired          |Godrej no. 1           |Veg   |  161.0|     65|BP, Diabetes      | 25.1|2   | 0.9988905|I14   |NA        |
|I15    |W4  |Pune                  |F      |Hindu     |  71|Retired          |Dettol                 |Veg   |  125.0|     60|BP, Diabetes      | 38.4|3   | 0.0016733|I15   |NA        |
|I16    |-   |Pune                  |M      |Hindu     |  48|Doctor           |Godrej no. 2           |Veg   |  155.0|     74|NA                | 30.8|2   | 0.9724002|I16   |NA        |
|I17    |H5  |Pune                  |M      |Hindu     |  80|Retired          |Dove                   |Veg   |  142.0|     56|Diabetes          | 27.8|2   | 0.8577162|I17   |NA        |
|I18    |W5  |Pune                  |F      |Hindu     |  74|House wife       |Dove                   |Veg   |  137.0|     46|BP                | 24.5|1   | 0.8362720|I18   |NA        |
|I19    |-   |Pune                  |F      |Hindu     |  42|House wife       |Dove                   |Veg   |  140.0|     55|Thyroid           | 28.1|2   | 0.9122137|I19   |NA        |
|I20    |H6  |Pune                  |M      |Hindu     |  74|Retired          |Dove                   |Mixed |  182.0|     90|BP                | 27.2|2   | 0.9946914|I20   |NA        |
|I21    |W6  |Pune                  |F      |Hindu     |  69|House wife       |Dove                   |Mixed |  161.5|     60|BP Diabetes       | 23.0|1   | 0.6904762|I21   |NA        |
|I22    |-   |Pune                  |F      |Hindu     |  45|House wife       |Dove                   |Mixed |  167.6|     90|NA                | 32.0|1   | 0.7575758|I22   |NA        |
|I23    |H7  |Pune                  |M      |Muslim    |  76|Retired          |Cinthol                |Mixed |  165.0|     72|NA                | 26.4|1   | 0.2380952|I23   |NA        |
|I24    |W7  |Pune                  |F      |Muslim    |  62|House wife       |Cinthol                |Mixed |  155.0|     75|BP                | 31.2|2   | 0.9970697|I24   |NA        |
|I25    |-   |Pune                  |F      |Muslim    |  43|House wife       |Cinthol                |Mixed |  155.0|     76|NA                | 31.6|1   | 0.1015905|I25   |NA        |
|I26    |H8  |Ahmednagar            |M      |Hindu     |  63|Retired          |Dettol                 |Veg   |  155.0|     70|NA                | 29.1|1   | 0.4535061|I26   |NA        |
|I27    |W8  |Ahmednagar            |F      |Hindu     |  49|House wife       |Dettol                 |Veg   |  170.0|     60|NA                | 20.8|1   | 0.4285714|I27   |NA        |
|I28    |H9  |Pune                  |M      |Hindu     |  52|Auto Driver      |Lifeboy                |Veg   |  168.0|     69|NA                | 24.4|1   | 0.1587302|I28   |NA        |
|I29    |W9  |Pune                  |F      |Hindu     |  46|House wife       |Dove                   |Veg   |  150.0|     43|NA                | 19.1|1   | 0.3012346|I29   |NA        |
|I30    |-   |Pune                  |F      |Hindu     |  75|House wife       |Lux                    |Veg   |  157.0|     75|BP, Diabetes      | 30.4|1   | 0.0158730|I30   |NA        |
|I31    |-   |Pune                  |F      |Hindu     |  50|House wife       |Lux                    |Veg   |  157.0|     76|NA                | 30.8|2   | 0.6204893|I31   |NA        |
|I32    |-   |Nashik                |M      |Muslim    |  14|Student          |Liril                  |Mixed |     NA|     NA|NA                |   NA|3   | 0.0035897|I32   |NA        |
|I33    |-   |Nashik                |M      |Muslim    |  27|Student          |Godrej no. 1           |Mixed |     NA|     NA|NA                |   NA|3   | 0.0010163|I33   |NA        |
|I34    |-   |Nashik                |M      |Muslim    |  56|Business         |Godrej no. 1           |Mixed |     NA|     NA|NA                |   NA|3   | 0.0005674|I34   |NA        |
|I35    |-   |Nashik                |M      |Muslim    |  20|Student          |Godrej no. 1           |Mixed |     NA|     NA|NA                |   NA|3   | 0.0043656|I35   |NA        |
|I36    |-   |Nashik                |M      |Muslim    |  38|Accountaant      |Lifebuoy               |Mixed |     NA|     NA|NA                |   NA|3   | 0.0012117|I36   |NA        |
|I37    |-   |Nashik                |M      |Muslim    |  37|Auto consultancy |Cinthol                |Mixed |     NA|     NA|NA                |   NA|3   | 0.0093874|I37   |NA        |
|I38    |-   |Nashik                |M      |Muslim    |  36|Broker           |Lux                    |Mixed |     NA|     NA|NA                |   NA|1   | 0.1153846|I38   |NA        |
|I39    |-   |Pune                  |F      |Hindu     |  74|House wife       |Lux                    |Veg   |  157.0|     66|BP                | 26.8|1   | 0.0291667|I39   |NA        |
|I40    |-   |Pune                  |F      |Hindu     |  48|Private survice  |Lux                    |Veg   |  150.0|     61|NA                | 27.1|1   | 0.4782609|I40   |NA        |
|I41    |H10 |Pune                  |M      |Hindu     |  74|Retired          |Sandle                 |Veg   |  167.0|     79|Diabetes          | 28.3|1   | 0.9950611|I41   |NA        |
|I42    |W10 |Pune                  |F      |Hindu     |  65|House wife       |Lux                    |Veg   |  164.4|     91|Diabetes          | 33.7|2   | 0.9985125|I42   |NA        |
|I43    |H11 |Pune                  |M      |Hindu     |  74|Retired          |Lux                    |Veg   |  154.4|     75|bp                | 31.5|1   | 0.4507772|I43   |NA        |
|I44    |W11 |Pune                  |F      |Hindu     |  69|House wife       |Hammam                 |Veg   |  150.4|     45|Diabetes          | 19.9|3   | 0.0685484|I44   |NA        |
|I45    |-   |Ahmednagar            |M      |Hindu     |  28|Survice          |Lux                    |Veg   |  163.0|     55|NA                | 20.7|1   | 0.0370370|I45   |NA        |
|I46    |-   |Pune                  |F      |Hindu     |  20|Student          |Medical                |Mixed |  164.0|     43|NA                | 16.0|2   | 0.5124618|I46   |NA        |
|I47    |-   |Ahmednagar            |F      |Hindu     |  20|Student          |Lux                    |Mixed |  153.0|     40|NA                | 17.1|1   | 0.2401575|I47   |NA        |
|I48    |-   |Pune                  |F      |Hindu     |  26|Student          |Lux                    |Veg   |  164.5|     65|NA                | 24.0|3   | 0.0105203|I48   |NA        |
|I49    |-   |Pune                  |M      |Hindu     |  23|Student          |Medimix                |Mixed |  170.0|     45|NA                | 15.6|1   | 0.9090909|I49   |NA        |
|I50    |-   |Pune                  |M      |Hindu     |  22|Shopkeeper       |Dettol                 |Veg   |  173.7|     81|NA                | 16.8|1   | 0.8711741|I50   |NA        |
|I51    |-   |Pune                  |M      |Hindu     |  16|Student          |Patanjali              |Veg   |  173.7|     54|NA                | 18.0|3   | 0.1494750|I51   |NA        |
|I52    |-   |Pune                  |M      |Hindu     |  23|Fitness Trainer  |Dettol                 |Mixed |  167.6|     61|NA                | 21.7|1   | 0.2625000|I52   |NA        |
|I53    |-   |Pune                  |M      |Hindu     |  23|Student          |Lux                    |Mixed |  176.7|     58|NA                | 18.6|1   | 0.1454273|I53   |NA        |
|I54    |-   |Pune                  |F      |Hindu     |  20|Student          |Camey                  |Mixed |  161.5|     52|NA                | 19.9|1   | 0.4541063|I54   |NA        |
|I55    |-   |Ahmednagar            |M      |Hindu     |  26|Private survice  |Santoor                |Mixed |  180.0|     67|NA                | 20.7|1   | 0.5090909|I55   |NA        |
|I56    |-   |Pune                  |M      |Hindu     |  22|Student          |Dove                   |Mixed |  161.5|     53|NA                | 20.3|1   | 0.0109428|I56   |NA        |
|I57    |-   |Nashik                |M      |Hindu     |  18|Student          |Dove                   |Mixed |  172.0|     50|NA                | 15.2|1   | 0.4818757|I57   |NA        |
|I58    |-   |Nashik                |F      |Hindu     |  20|Student          |Lux                    |Veg   |  151.0|     48|NA                | 21.1|1   | 0.1806515|I58   |NA        |

```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in microbiome::transform(Q, "clr"): object 'Q' not found
```

```
## Error in eval(expr, envir, enclos): object 'top.taxa' not found
```

# PERMANOVA analysis

effect of age on microbial community is observed to be significant (p=0.05)


```
## Error in eval(expr, envir, enclos): object 'Q' not found
```

```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in microbiome::transform(pseq, "compositional"): object 'pseq' not found
```

```
## Error in is(x): object 'pseq.rel' not found
```

```
## Error in sample_data(x): object 'pseq.rel' not found
```

```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in as.data.frame(permanova$aov.tab): object 'permanova' not found
```

```
## Error in t(otu): object 'otu' not found
```

```
## Error in betadisper(dist, meta$age_group): distances 'd' must be a 'dist' object
```

# Investigate the top factors


```
## Error in coefficients(permanova): object 'permanova' not found
```

```
## Error in abs(coef): non-numeric argument to mathematical function
```

```
## Error in eval(expr, envir, enclos): object 'top.coef' not found
```

```
## Error in sort(top.coef): object 'top.coef' not found
```

