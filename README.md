# Code repository for article_2021_sparc
Skin serves as a host for many microbial communities. The distribution and abundance of these microbes 
are influenced by multiple parameters such as, lifestyle, environment, age, geography etc.
Here we are investigating skin microbial community compostion along with its associated factors. 

### Data files
* [create_phyloseq.R](create_phyloseq.R):The phyloseq object is created 
using OTU table, Taxonomic table and metadata of individuals.

### Conclusions
1. [Core microbiota](output/core.md): Here we analysis relative abundance and prevalance of core microbiota.

2. [Joint analysis](jointanalysis.md): PERMANOVA analysis showed that, only geographiclocation 
has significant effect on the overall community composition.

3. [Location](location.md): Here we performed aplha,beta diversity and genus differential 
analysis using ANCOM based on geographic location.

4. [CST analysis](CSTAnalysis_SkinSamples.md): Here we identified three community state type analysis.

5. [Diet](diet.md) and [Age](age.md): We have also perfomed some 
additional analysis based on diet and age groups


Cite the code: [![DOI](https://sandbox.zenodo.org/badge/213624949.svg)](https://sandbox.zenodo.org/badge/latestdoi/213624949)
[![DOI](https://zenodo.org/badge/213624949.svg)](https://zenodo.org/badge/latestdoi/213624949)
