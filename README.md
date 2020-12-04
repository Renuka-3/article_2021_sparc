# Skin microbiome


Summary
* [phyloseq_optimization](phyloseq_optimization.md) 
----------------------------------------------------------------------------

### Data files

* [phyloseq20.Rmd](phyloseq20.Rmd): Phyloseq file is made using OTU table, 
Taxonomic table and metadata of individuals.
* Create the phyloseq object with: (create_phyloseq.R) (Create_phyloseq.Rmd)

* [main.R](main.R)
Fist run DM analysis to get results of CST analysis. (source file for CST analysis)

### Analysis files
* [CSTAnalysis_SkinSamples](CSTAnalysis_SkinSamples.md):

* [DirichletMultinominalanalysis](DirichletMultinominalanalysis.md): DMM analysis
showed three clusters, cluster1 is mainly driven by Anderseniella, Frondihabitans, 
Alkalibacillus and Agaribacter. cluster2 with Frondihabitans and Alkalibacillus.
cluster3 is maily driven by Alkalibacillus genus.


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
1. Core genera: It showes Staphylococcus, Bacillus, Corynebacterium and Anaerococcus
are most abundant genera. Firmicutes, Proteobacteria, Actinobacteria, and Bacteroidetes
are most abundant phyla present on the skin. (see coreanalysis.md)

2. Diet: No significant differences obserbed in alpha and beta diversity. (see dietanalysis.md)

3. Age: No significant differences observed in Alpha diversity. Significant difference obseved 
in PERMANOVA analysis (see ageanalysis.md)

4. Location: 


