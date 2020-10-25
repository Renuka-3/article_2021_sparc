---
title: "Dirichlet multinominal analysis"
author: "Renuka"
date: "2020-10-25"
output: html_document
---




```
## Error in eval(expr, envir, enclos): object 'opts_chunk' not found
```

The following `length(taxa)` taxonomic groups are detected with `100 * prev.th`% prevalence at `100 * det.th`% relative abundance: `print(paste(taxa, collapse = ", "))`.
```




```
##   Soft kmeans
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.000341
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.000462
##   Expectation Maximization setup
##   Expectation Maximization
##     iteration 10 change 0.000100
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.012585
##     iteration 20 change 0.000057
##   Expectation Maximization setup
##   Expectation Maximization
##     iteration 10 change 0.000005
##   Hessian
```

```
##          pi     theta
## 1 0.6052877  6.796869
## 2 0.2063944 57.979654
## 3 0.1883180 44.660728
```

The optimal number of clusters is: `which.min(unlist(lplc))`.

The (main) drivers per component are visualized.

<img src="figure_DMM/DMM-1.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" /><img src="figure_DMM/DMM-2.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" /><img src="figure_DMM/DMM-3.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" />

