# Skin microbiome


Summary
* [phyloseq_optimization](phyloseq_optimization.md) 
----------------------------------------------------------------------------

### Data files

* [phyloseq20.Rmd](phyloseq20.Rmd): Phyloseq file is made using OTU table, 
Taxonomic table and metadata of individuals.
* Create the phyloseq object with: [create_phyloseq.R](create_phyloseq.R)

### Conclusions
1. [Core genera](coreanalysis.md): Staphylococcus, Bacillus, Corynebacterium and Anaerococcus
are most abundant genera. Firmicutes, Proteobacteria, Actinobacteria, and Bacteroidetes
are most abundant phyla present on the skin.

2. [Diet](dietanalysis.md): No significant differences obserbed in alpha and beta diversity.

3. [Age](ageanalysis.md): No significant differences observed in Alpha diversity. Significant difference obseved 
in PERMANOVA (Beta diversity) analysis.

4. [Location](locationanalysis.md): Significant differences obserbved in specific taxonomic groups. No significant 
differences observed in alpha diversity. 

5. [Joint analysis](jointanalysis.md): Significant differences observed in bacterial community composition of geographical
location by PERMANOVA analysis. 

6. [CST analysis](CSTAnalysis_SkinSamples.md): Significant genera were plotted of different locations using CST values.


### Analysis files
* CSTAnalysis_SkinSamples: Here clustering was evaluated using CST values for 
significant genera observed in different locations.

* Joint analysis: This shows that only geographiclocation has significant
effect on the overall community composition.

* Location analysis: Here we investigate in more detail which taxonomic groups differ between locations.

* ageanalysis
1. alpha diversity analysis- shannon diversity analysis using wilcoxon test
2. PCoA analysis
3. DESeq2 analysis
4. Investigate the top factors

* dietanalysis
1. alpha diversity analysis- shannon diversity analysis using Kruskal test
2. Beta diversity analysis- PCoA analysis, PERMANOVA
3. DESeq2 analysis
4. Investigate the top factors

* coreanalysis
1. core_genera_heatmap
2. phylum abundance distribution

