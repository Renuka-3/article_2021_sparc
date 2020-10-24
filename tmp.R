padj.th <- 0.25
quiet(ds2 <- phyloseq_to_deseq2(phy, ~ Geographical_location))
dds <- DESeq(ds2)
res <- results(dds)
df <- as.data.frame(res)
df$taxon <- rownames(df)
df <- df %>% arrange(padj, desc(abs(log2FoldChange))) %>%
  filter(padj < padj.th) 
df <- subset(df, select= c(log2FoldChange, padj, taxon))
rownames(df) <- NULL

