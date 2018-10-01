
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

ChIPSeq Assay: Method to determine Protein-DNA binding sites with the help of high-troughput DNA sequencing and Immunoprecipitation methods. The protein bound DNA is separated, sequenced and mapped back onto the genome.

Application: Investigation of unknown protein-DNA interactions and identification of binding sites - Interactome map showing all interactions of binding sites and proteins of interest.

Statistics: 
For detecting a binding site, so called peak calling methods have been developed. The algorithm is constructed such that it detects local concentrations of sequence hits (with the genome, a location cluster) and constructs a peak within it. Then, a threshold can be set, f.ex. by saying that the peak should at least be sixfold higher than in the control experiment, to distinguish between noise and signal. An additional criterion for this can be a minimal number of independent tags on a binding site (reads that cover the binding site differently and must have been obtained independently). The number again can be obtained from the ROC curve, by taking the threshold that is nearest to the top left corner.

To assess the quality of results by comparing with results of other methods: Receiver operating curve (ROC) of the test (sequence is read more than a certain number of times = is a binding site) and area under curve (AUC). The AUC and its se() can be used to calculate a p-value that the given result is a chance result of true AUC = 0.5 (0-Hypothesis).

To assess the precision of the DNA binding site identification, the results are compared with previously known binding sites, and then it is assessed how many of the comp. binding sites are within the ChIPSeq binding sites and where (center vs head or tail). It is also possible to compare the comp. binding sites on the genome with the ones obtained from ChIPSeq and thereby assessing how many were "missed" - only few missing indicate good coverage of the assay (that most binding sites were retrieved).

To assess how good the computationally obtained binding site is, one can generally look at sequences with high reads without the binding site (no statistical method though). Another method is to block the binding site and look for lower transcription levels (simple test for two distributions to have different mean).

Editors: Thomas Fischer, Mauro Schlepfer, Giuachin Kreiliger







[1] [https://liorpachter.wordpress.com/seq/](https://liorpachter.wordpress.com/seq/)



