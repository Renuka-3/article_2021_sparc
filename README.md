# Skin microbiome
Skin serves as a host for many microbial communities. The distribution and abundance of these microbes 
are influenced by multiple parameters such as, lifestyle, environment, age, geography etc.
Here we are investigating skin microbial community compostion along with its associated factors. 

### Data files
* [create_phyloseq.R](create_phyloseq.R):The phyloseq object is created 
using OTU table, Taxonomic table and metadata of individuals.

* [create_control_phyloseq.R](create_control_phyloseq.R)

### Conclusions
1. [Core microbiota](core.md): 
Following are the most prevalent genera and phyla found on human skin,
* Most prevalent genera: Staphylococcus, Bacillus, Corynebacterium, and Anaerococcus.
* Most prevalent phyla: Firmicutes, Proteobacteria, and Actinobacteria


2. [Joint analysis](jointanalysis.md): PERMANOVA analysis showed that, only geographiclocation 
has significant effect on the overall community composition.


3. [Location](location.md):  
* Alpha diversity analysis- No significant differences observed.
* Beta diversity analysis- Significant differences observed and this analysis is available in Joint analysis.
* Differential abundance analysis (ANCOMBC)- Significant differences obserbved in some taxonomic groups.


4. [CST analysis](CSTAnalysis_SkinSamples.md): Here we identified three community state type analysis.


5. [Diet](diet.md) and [Age](age.md): We have also perfomed some 
additional analysis based on diet and age groups
* Alpha diversity analysis- No significant differences observed in both groups.
* Beta diversity analysis- No significant differences observed in diet, Significant differences obseved 
in PERMANOVA analysis of age.
* Differential abundance analysis (DESeq2)- Significant differences observed only in some genera in both gropus.
