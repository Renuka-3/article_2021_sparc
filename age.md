# Alpha diversity analysis

    ## [1] TRUE

    ## [1] TRUE

<table>
<thead>
<tr class="header">
<th style="text-align: left;"></th>
<th style="text-align: right;">i</th>
<th style="text-align: right;">o</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">adult</td>
<td style="text-align: right;">1.4559824</td>
<td style="text-align: right;">0.6633482</td>
</tr>
<tr class="even">
<td style="text-align: left;">middle_age</td>
<td style="text-align: right;">0.8868898</td>
<td style="text-align: right;">0.4883428</td>
</tr>
<tr class="odd">
<td style="text-align: left;">elderly</td>
<td style="text-align: right;">1.3082521</td>
<td style="text-align: right;">0.8993438</td>
</tr>
</tbody>
</table>

# Group-wise comparisons

-   Diversity index: diversity\_shannon

<!-- -->

    ## 
    ##  Kruskal-Wallis rank sum test
    ## 
    ## data:  index by factor(age_group)
    ## Kruskal-Wallis chi-squared = 7.7239, df = 2, p-value = 0.02103

    ## 
    ##  Wilcoxon rank sum exact test
    ## 
    ## data:  index by factor(age_group)
    ## W = 302, p-value = 0.001873
    ## alternative hypothesis: true location shift is not equal to 0

    ## 
    ##  Wilcoxon rank sum exact test
    ## 
    ## data:  index by factor(age_group)
    ## W = 231, p-value = 0.7154
    ## alternative hypothesis: true location shift is not equal to 0

    ## 
    ##  Wilcoxon rank sum exact test
    ## 
    ## data:  index by factor(age_group)
    ## W = 99, p-value = 0.1258
    ## alternative hypothesis: true location shift is not equal to 0

    ## [1] 0.004 0.040 0.200 0.400

<img src="figure_age/group_comp-1.png" width="50%" />
