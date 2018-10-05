
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
<!-- ### Goal: 
#### write ~2 sentences about what the method does
#### again, make the link (technology -> application -> statistics)
#### list the github usernames of everyone in your group
#### submit a pull request to brainstorm_modified.md -->

* **Technology**: DNA-sequencing: 
process of determining the sequence of nucleotide (A, T, G or C) in a piece of DNA. Several sequencing methods exist, as Sanger sequencing, Illumina sequencing or  nanopore sequencing.
Source: [Khan Academy: DNA sequencing](https://www.khanacademy.org/science/high-school-biology/hs-molecular-genetics/hs-biotechnology/a/dna-sequencing)
* **Application**: Genome-Wide-Association-Studies (GWAS)
Carrying out genome-wide genetic association studies typically focus on associations between single-nucleotide polymorphisms (SNPs) and traits like major human diseases, but can equally be applied to any other organisms.
The ultimate goal of GWAS is to identify susceptibility genes for common disease and using these genetic risk factors to make predictions about who is at risk and to find indicators about the biological contributors. 
When applied to human data, GWA studies compare the DNA of participants having varying phenotypes for a particular trait or disease. Resulting conclusions about possible genetic drivers of a disease or trait could be used to develop new prevention and treatment strategies.
Source: [Genome-wide association studies: theoretical and practical concerns](https://www.nature.com/articles/nrg1522)
* **Statistical method**: Regularized Regression Methods for Variable Selection in high-dimensional Settings (n << p). When analysing data from GWAS with a regression model (e.g. logistic regression for case-control studies), the problem is often that there a many more covariates than there are observations. By adding a penalty term for size of the regression coefficients (L1 = Lasso, L2 = Ridge, a mix of L1 and L2 = Elastic Net), the optimization becomes easier and the variance of regression coefficient estimates is drastically reduced (however, in theory as n goes to infinity, the coefficients are more biased compared to ordinary ML estimation). The Lasso penalty is better suited for variable selection, whereas the ridge penalty is better suited if covariates are correlated, the elastic net penalty can be really powerful when both is the case. There are many extensions to penalized regression models, for example, these models can be easily translated to a [Bayesian framework](https://academic.oup.com/bioinformatics/article/27/4/516/197666).

* **GitHub usernames of groupmembers**:
  * SamCH93
  * sasieg
  * CharlotteMicheloud

[1] [https://liorpachter.wordpress.com/seq/](https://liorpachter.wordpress.com/seq/)



