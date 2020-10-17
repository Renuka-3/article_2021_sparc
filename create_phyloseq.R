library(ggplot2)
library(phyloseq)
library(dada2)
library(readxl)
library(dplyr)

# Here, just add folder "data" in this repository directly (do not add
# data folder to git). Or alternatively, create here a "symbolic link"
# whose names is "data" and that points to your data location.
#otu_mat<- read_excel("D:/sparc/manuscript/diet,location/otu.xlsx")
#tax_mat<- read_excel("D:/sparc/manuscript/diet,location/taxa.xlsx")
#samples_df <- read_excel("D:/sparc/manuscript/diet,location/meta.xlsx")
#otu_mat<- read_excel("data/diet,location/otu.xlsx")
#tax_mat<- read_excel("data/diet,location/taxa.xlsx")
#samples_df <- read_excel("data/diet,location/meta.xlsx")

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

phy20.1 <- phyloseq(OTU, TAX, sam)
saveRDS(phy20.1, file = "data/phy20.1.RDS")
