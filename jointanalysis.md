Ordination
==========

*Principal Coordinates Analysis (PCoA)*
---------------------------------------

-   Ordination method: PCoA
-   Dissimilarity measure: bray

<img src="figure_joint/pcoa-1.png" width="33%" /><img src="figure_joint/pcoa-2.png" width="33%" /><img src="figure_joint/pcoa-3.png" width="33%" />

PERMANOVA analysis
==================

    ## 
    ## Call:
    ## adonis(formula = t(otu_table(phy)) ~ Diet + Geographical_location +      age_group, data = meta(phy), permutations = 99, method = distance) 
    ## 
    ## Permutation: free
    ## Number of permutations: 99
    ## 
    ## Terms added sequentially (first to last)
    ## 
    ##                       Df SumsOfSqs MeanSqs F.Model      R2 Pr(>F)   
    ## Diet                   1    0.3745 0.37445 0.95573 0.01605   0.47   
    ## Geographical_location  2    1.7028 0.85138 2.17301 0.07299   0.01 **
    ## age_group              2    0.8792 0.43960 1.12202 0.03769   0.28   
    ## Residuals             52   20.3734 0.39180         0.87328          
    ## Total                 57   23.3298                 1.00000          
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Conclusion
==========

There is a significant difference in microbiota community composition
between different geographical areas.

No significant effect is observed in diet or age group.
