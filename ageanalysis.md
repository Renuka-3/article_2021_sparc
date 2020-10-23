---
title: "ageanalysis"
author: "Renuka"
date: "20 October 2020"
output: html_document
---




```
## Error in age_group %in% middleage: object 'age_group' not found
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
## Error in df[[index]]: object of type 'closure' is not subsettable
```

```
## Error in terms.formula(formula, data = data): 'data' argument is of the wrong type
```

```
## Error:   You're passing a function as global data.
##   Have you misspelled the `data` argument in `ggplot()`
```

```
## Error in print(p1): object 'p1' not found
```


# Ordination



## *Principal Coordinates Analysis (PCoA)*

* Ordination method: PCoA
* Dissimilarity measure: jaccard


```
## Error in microbiome::transform(Q, "compositional"): object 'Q' not found
```

```
## Error in print(p): object 'p' not found
```


```
## Error in eval(expr, envir, enclos): object 'Q' not found
```

```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in sample_data(x): object 'mypseq' not found
```

```
## Error in df[[group]]: object of type 'closure' is not subsettable
```

```
## Error in access(object, "sam_data", errorIfNULL): sam_data slot is empty.
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
## Error in df$taxon <- rownames(df): object of type 'closure' is not subsettable
```

```
## Error in UseMethod("arrange_"): no applicable method for 'arrange_' applied to an object of class "function"
```

```
## Error in subset.default(df, select = c(log2FoldChange, padj, taxon)): argument "subset" is missing, with no default
```

```
## Error in eval(expr, envir, enclos): object 'full.names' not found
```

```
## Error in seq_len(m): argument must be coercible to non-negative integer
```

```
## Error in sample_data(x): object 'Q' not found
```

```
## Error in microbiome::transform(Q, "clr"): object 'Q' not found
```

```
## Error in eval(expr, envir, enclos): object 'top.taxa' not found
```

#PERMANOVA analysis

```r
library(microbiome)
library(ggplot2)
library(dplyr)

pseq <- Q
```

```
## Error in eval(expr, envir, enclos): object 'Q' not found
```

```r
data = microbiome::meta(Q)
```

```
## Error in sample_data(x): object 'Q' not found
```

```r
# Pick relative abundances (compositional) and sample metadata 
pseq.rel <- microbiome::transform(pseq, "compositional")
```

```
## Error in microbiome::transform(pseq, "compositional"): object 'pseq' not found
```

```r
otu <- abundances(pseq.rel)
```

```
## Error in is(x): object 'pseq.rel' not found
```

```r
meta <- meta(pseq.rel)
```

```
## Error in sample_data(x): object 'pseq.rel' not found
```

```r
library(vegan)
library(phyloseq)
permanova <- adonis(t(otu) ~ age_group,
               data = meta(Q), permutations=99, method = "bray")
```

```
## Error in sample_data(x): object 'Q' not found
```

```r
# P-value
print(as.data.frame(permanova$aov.tab)["age_group", "Pr(>F)"])
```

```
## Error in as.data.frame(permanova$aov.tab): object 'permanova' not found
```

```r
dist <- vegdist(t(otu))
```

```
## Error in t(otu): object 'otu' not found
```

```r
anova(betadisper(dist, meta$age_group))
```

```
## Error in betadisper(dist, meta$age_group): distances 'd' must be a 'dist' object
```

# Investigate the top factors


```r
library(vegan)
coef <- coefficients(permanova)["age_group1", ]
```

```
## Error in coefficients(permanova): object 'permanova' not found
```

```r
top.coef <- coef[rev(order(abs(coef)))[1:20]]
```

```
## Error in abs(coef): non-numeric argument to mathematical function
```

```r
names(top.coef) <- full.names[names(top.coef)]
```

```
## Error in eval(expr, envir, enclos): object 'full.names' not found
```

```r
par(mar = c(3, 14, 2, 1))
barplot(sort(top.coef), horiz = T, las = 1, main = "Top taxa / 1")
```

```
## Error in sort(top.coef): object 'top.coef' not found
```
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
