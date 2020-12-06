# Skin microbiome


Summary
* [phyloseq_optimization](phyloseq_optimization.md) 
----------------------------------------------------------------------------

### Data files
* Create the phyloseq object with: [create_phyloseq.R](create_phyloseq.R) This phyloseq object is made 
using OTU table, Taxonomic table and metadata of individuals.

### Conclusions
1. [Core genera](coreanalysis.md): 
Following are the most prevalent genera and phyla found on human skin,
* Most prevalent genera: Staphylococcus, Bacillus, Corynebacterium and Anaerococcus.
* Most prevalent phyla: Firmicutes, Proteobacteria, Actinobacteria, and Bacteroidetes


2. [Diet](dietanalysis.md) and [Age](ageanalysis.md):
* Alpha diversity analysis- No significant differences observed
* Beta diversity analysis- No significant differences observed
* DESeq2 analysis- 



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

