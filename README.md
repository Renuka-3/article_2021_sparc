# Skin microbiome


Summary
* [phyloseq_optimization](phyloseq_optimization.md) 
----------------------------------------------------------------------------

### Data files

* [phyloseq20.Rmd](phyloseq20.Rmd): Phyloseq file is made using OTU table, 
Taxonomic table and metadata of individuals.
* Create the phyloseq object with: (create_phyloseq.R) (Create_phyloseq.Rmd)


### Analysis files
* [CSTAnalysis_SkinSamples](CSTAnalysis_SkinSamples.md): Here clustering was evaluated using CST values for 
significant genera observed in different locations.

* [DirichletMultinominalanalysis](DirichletMultinominalanalysis.md): heading towards community type analysis.


* [Joint analysis](jointanalysis.md): this shows that only geographic
location has significant effect on the overall community composition.


* [Location analysis ](locationanalysis.md): Here we investigate in more
detail which taxonomic groups differ between locations.


* [ageanalysis](ageanalysis.md)
1. alpha diversity analysis- shannon diversity analysis using wilcoxon test
2. PCoA analysis
3. DESeq2 analysis
4. Investigate the top factors

* [dietanalysis](dietanalysis.md)
1. alpha diversity analysis- shannon diversity analysis using Kruskal test
2. Beta diversity analysis- PCoA analysis, PERMANOVA
3. DESeq2 analysis
4. Investigate the top factors


* [coreanalysis](coreanalysis.md)
1. core_genera_heatmap
2. phylum abundance distribution

### Conclusion
1. Core genera: Staphylococcus, Bacillus, Corynebacterium and Anaerococcus
are most abundant genera. Firmicutes, Proteobacteria, Actinobacteria, and Bacteroidetes
are most abundant phyla present on the skin. (see coreanalysis.md)

2. Diet: No significant differences obserbed in alpha and beta diversity. (see dietanalysis.md)

3. Age: No significant differences observed in Alpha diversity. Significant difference obseved 
in PERMANOVA analysis (see ageanalysis.md)

4. Location: Significant differences obserbved in specific taxonomic groups. No significant 
differences observed in alpha diversity. (see locationanalysis.md)

5. Joint analysis: Significant differences observed in bacterial community composition of geographical
location by PERMANOVA analysis. (see jointanalysis.md)

6. DMM analysis: Three distinct clusters were observed, cluster1 is mainly driven by Anderseniella,
Frondihabitans, Alkalibacillus and Agaribacter. Cluster2 with Frondihabitans and Alkalibacillus.
cluster3 is maily driven by Alkalibacillus genus. (see DirichletMultinominalanalysis.md)

7. CST analysis: signifiant genera were plotted by CST values of three clustres

