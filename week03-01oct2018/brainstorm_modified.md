
# Part 1 - Brainstorm: Statistics

## Distributions
## Statistical Models
## Methods for Estimation
## Methods for Hypothesis Testing

# Part 2 - Brainstorm: Technologies in Biology

## Microarray
## ...

## In-class exercise 1 (15 minutes)

### Technologies: 

```{r}
techs <- c("microarray", "rna-seq", "dna-seq", 
           "bisulphite-seq", "cytometry", "mass-spec", 
           "10x-chromium", "oxford-nanopore")

s <- sample(length(techs))
data.frame(row=s, techs)
```

### Task: 
#### produce a 2-3 point summary of "how it works"
#### links to a few (<5) good resources
#### create a markdown file for it and upload to README.me in "group assignment" repo

# Part 3 - Brainstorm: Applications in genomics 

# Part 4 - Brainstorm: Linking Technologies to Applications to Statistics

## e.g., microarray -> gene expression -> normally distributed (log intensities)

# Part 5 - Brainstorm: Methods/algorithms in genomics associated to Computer Science

# Part 6 - Pick a "technology" (from above, from [1] or otherwise) to briefly describe

## Exercise 2 (in groups of 1-3): 
### Goal: 
#### write ~2 sentences about what the method does
#### again, make the link (technology -> application -> statistics)
#### list the github usernames of everyone in your group
#### submit a pull request to brainstorm_modified.md

[1] [https://liorpachter.wordpress.com/seq/](https://liorpachter.wordpress.com/seq/)

## RNA-Seq

### Summary of the technology
RNA-Seq (RNA sequencing), also called whole transcriptome shotgun sequencing, uses next-generation sequencing to reveal the presence and quantity of RNA in a biological sample at a given moment.

### Application
RNA-Seq is used to analyze the continuously changing cellular transcriptome. Specifically, RNA-Seq facilitates the ability to look at alternative gene spliced transcripts, post-transcriptional modifications, gene fusion, mutations/SNPs and changes in gene expression over time, or differences in gene expression in different groups or treatments. 
In addition to mRNA transcripts, RNA-Seq can look at different populations of RNA to include total RNA, small RNA, such as miRNA, tRNA, and ribosomal profiling. RNA-Seq can also be used to determine exon/intron boundaries and verify or amend previously annotated 5' and 3' gene boundaries.

### Statistics
Some of the statistical methods developed for microarray data analysis can be applied to RNA-Seq data with or without modifications. Recently several additional methods have been developed specifically for RNA-Seq data sets.
Several statistical methods have been proposed to detect the differentially expressed genes from a counts table: Fisher's exact test, Likelihood ratio test, edgeR, DESeq, baySeq, BBSeq, Two-stage poisson model. The number of samples or replicates in a typical RNA-Seq experiment is usually small, thereby excluding the application of nonparametric methods that implement sample permutations. These methods differ in their underlying data distributions, how they handle biological replicates, and their ability to perform multi-group comparisons. Some of these methods have been implemented in related R/Bioconductor packages.

github username: cvanet



