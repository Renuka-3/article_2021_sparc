---
title: "Dirichlet multinominal analysis"
author: "Renuka"
date: "2020-10-25"
output: html_document
---





The following `length(taxa)` taxonomic groups are detected with `100 * prev.th`% prevalence at `100 * det.th`% relative abundance: `print(paste(taxa, collapse = ", "))`.
```




```
##   Soft kmeans
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.000140
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##   Expectation Maximization setup
##   Expectation Maximization
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.011442
##     iteration 20 change 0.001447
##   Expectation Maximization setup
##   Expectation Maximization
##     iteration 10 change 0.000100
##   Hessian
##   Soft kmeans
##     iteration 10 change 0.002256
##   Expectation Maximization setup
##   Expectation Maximization
##     iteration 10 change 1.705260
##     iteration 20 change 0.278879
##   Hessian
```

```
##          pi     theta
## 1 0.6052825  6.797004
## 2 0.2063949 57.980333
## 3 0.1883226 44.659227
```

The optimal number of clusters is: `which.min(unlist(lplc))`.

The (main) drivers per component are visualized.

<img src="figure_DMM/DMM-1.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" /><img src="figure_DMM/DMM-2.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" /><img src="figure_DMM/DMM-3.png" title="plot of chunk DMM" alt="plot of chunk DMM" width="33%" />

