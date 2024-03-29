library(ggplot2)
library(microbiome)
library(phyloseq)
library(dada2)
library(readxl)
library(dplyr)

otu_mat    <- as.data.frame(read_excel("data/processed/original_tables/otu.xlsx"))
tax_mat    <- as.data.frame(read_excel("data/processed/original_tables/taxa.xlsx"))
samples_df <- as.data.frame(read_excel("data/processed/original_tables/meta.xlsx"))

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
phy <- phyloseq(OTU, TAX, sam)

sample_data(phy)$age_group <- cut(meta(phy)$Age, breaks = c(0, 40, 59, Inf), labels = c("adult", "middle_age", "elderly"))

saveRDS(phy, file = "data/processed/phyloseq/phy20.1.RDS")

