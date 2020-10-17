# Skin microbiome


Summary
* [phyloseq_optimization](phyloseq_optimization.md) 
----------------------------------------------------------------------------

### Data files

* [phyloseq20.Rmd](phyloseq20.Rmd)
* Create the phyloseq object with: (create_phyloseq.R)

Phyloseq needs to be created before analysing microbiome data. OTU
table, Taxonomic table and metadata files required to creat phyloseq
object.


### Analysis files

* [coreanalysis](coreanalysis.md)
1. core_genera_heatmap
2. phylum abundance distribution

* [locationanalysis](locationanalysis.md)
1. Alpha diversity analysis- shannon diversity analysis using wilcoxon test
2. Beta diversity analysis- PCoA analysis, PERMANOVA
3. DESeq2 analysis
4. Investigate the top factors

* [ageanalysis20](ageanalysis20.md)
1. alpha diversity analysis- histogram of core genera, shannon diversity analysis using wilcoxon test
2. PCoA analysis
3. DESeq2 analysis

* [dietanalysis](dietanalysis.md)
1. alpha diversity analysis- shannon diversity analysis using Kruskal test
2. Beta diversity analysis- PCoA analysis, PERMANOVA
3. DESeq2 analysis
4. Investigate the top factors
