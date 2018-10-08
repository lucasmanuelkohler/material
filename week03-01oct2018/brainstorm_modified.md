
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

### Exercise 2: Technology, Application, Statistics
### Date: 6 October 2018
### Contributors: Andrew Acciardo and Prachi Shukla
### Our technology: Cir-Seq
#### Cir-Seq original manuscript: Ashley Acevedo, Leonid Brodsky, and Raul Andino, “Mutational and Fitness Landscapes of an RNA Virus Revealed through Population Sequencing,” Nature 505, no. 7485 (January 30, 2014): 686–690, doi:10.1038/nature12861.
### Technology: 
#### Cir-Seq, short for Circular sequencing, is a method designed to generate tandem repeats of RNA that has been circularized. The repeats that are created are subsequently used in next generation sequencing. Cir-seq improves sequence data quality through redundancy.

### Application: 
#### Due to the number of tandem repeats generated, mutations that exist in the genome can be observed at a very high resolution and differentiated from enzymatic or sequencing errors. This technique can be used to identify the variance in viral populations and mutations that may be passed on to new generations of virions. It can be used to test mutations to contribute to the fitness of a virus.

### Statistics:
#### Some statistical models/methods that are used in this technique include maximum likelihood estimation to test for the fitness parameter used in the paper. Additionally, the authors also applied a generalized Bayesian autoregression approach for the same parameter. To describe the relative fitness of a mutation, the authors used a linear model with two parameters for proportions of a mutation across serial passages of the virus in cells.
