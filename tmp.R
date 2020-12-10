### Boxplots for each genus in the three clusters

```{r clust-diverse_boxplot_CLRleo, message=FALSE, echo=FALSE, warning=FALSE, out.width="25%", fig.height=5, fig.width=6}
theme_set(theme_bw(base_size = 20))
library(ggbeeswarm)
df<- meta(pso)

for (tax in rev(significant.taxa)) {

  # Pick the abundance values for the given taxonomic group ("tax")
  # Let us use compositional transformed values
  df$signal <- abundances(transform(pso, "compositional"))[tax,]

  # Retrieve the full name for this taxon
  tax.full.name <- full.names[tax]

  # Plot taxon abundance (signal) against the cluster (CST) as a boxplot
  p <- ggplot(df, aes(x = CST, y = signal)) +
         labs(title = tax) +
         geom_boxplot() +
	 geom_beeswarm() +
	 labs(y = "Relative abundance (%)") + 
	 scale_y_log10(labels = scales::percent)
  print(p)
  
}
```


library(nlme)
library(tidyverse)
library(ggplot2)
library(compositions)
source("scripts/ancom_v2.1.R")
source("~/Rpackages/ANCOM/scripts/ancom_v2.1.R")

library(readr)
library(tidyverse)

sample_var = "Sample"
group_var = NULL
out_cut = 0.05
zero_cut = 0.90
lib_cut = 1000
neg_lb = FALSE
feature_table <- abundances(phy)
meta_data <- meta(phy)

prepro <- feature_table_pre_process(feature_table, meta_data, sample_var, group_var, out_cut, zero_cut, lib_cut, neg_lb)

feature_table = prepro$feature_table # Preprocessed feature table
meta_data = prepro$meta_data # Preprocessed metadata
struc_zero = prepro$structure_zeros # Structural zero info

main_var = "Geographical_location";
p_adj_method = "BH";
alpha = 0.05
adj_formula = NULL;
rand_formula = NULL

res <- ANCOM(feature_table, meta_data, struc_zero, main_var, p_adj_method, 
            alpha, adj_formula, rand_formula)

head(res)

# write_csv(res$out, "outputs/res.csv")


