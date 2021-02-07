
## create phyloseq with control sample

library(ggplot2)
library(microbiome)
library(phyloseq)
library(dada2)
library(readxl)
library(dplyr)

otu_mat    <- as.data.frame(read_excel("data/with_control/Tables_control/otu_with_control.xlsx"))
tax_mat    <- as.data.frame(read_excel("data/with_control/Tables_control/taxa_with_control.xlsx"))
samples_df <- as.data.frame(read_excel("data/with_control/Tables_control/meta_with_control.xlsx"))

row.names(otu_mat) <- otu_mat$OTUU
otu_mat <- otu_mat %>% select (-OTUU)
row.names(tax_mat) <- tax_mat$OTUU
tax_mat <- tax_mat %>% select (-OTUU) 

row.names(samples_df) <- samples_df$Sample
#samples_df <- samples_df %>% select (-Sample) 
otu_mat <- as.matrix(otu_mat)
tax_mat <- as.matrix(tax_mat)
OTU = otu_table(otu_mat, taxa_are_rows = TRUE)
TAX = tax_table(tax_mat)
sam = sample_data(as.data.frame(samples_df))

# Add age group information also
cphy <- phyloseq(OTU, TAX, sam)
saveRDS(cphy, file = "data/with_control/phyloseq/cphy.RDS")