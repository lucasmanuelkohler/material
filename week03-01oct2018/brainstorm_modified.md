
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

## Technology - Proteomics by Mass spectrometry (ms):
Ms makes use of characteristic fragmentation patterns of proteins. Peptides are analyzed based on their mass-over-charge ratio recorded by the mass spectrometer.  In tandem-ms (shotgun ms - untargeted analysis) rich population of proteins can be identified and (relative) quantitative information can be obtained in a high-throughput manner (either by spectra counting for peptide or by integrating information from extracted ion chromatograms).

## Application:
Identify classes/groups of proteins (eg. members of a pathway, protein complex etc) overrepresented in a sample of interest compared to a reference. Thus, these cellular processes might be associated with a specific condition or a disease according to the samples analyzed.

## Analysis:
Gene set enrichment analysis (GSEA) would be a way to identify changed cellular processes. For this protein abundances between samples can be compared and significantly different abundant proteins can be extracted (eg. by assigning a p-value using a paired t-test). Then a contingency table can built for each pathway in a set of pathways to count if the proteins with significantly different abundance belong to this pathway or not (first row). Only the top-n proteins in terms of log fold change are taken into account. The second row contains the counts of different proteins with no significant change in abundance either in the pathway of interest or not.
Iteratively n is increased and a p-value is calculated by using a fisher test. The lowest p-value for a pathway is kept and this is done for all pathways. Since this represents a multiple testing case it has to be corrected (eg. by Benjamin-Hochberg). Like this a p-value for the association of pathway with a certain condition is determined.

## Statistics used for a GSEA :
- Hypothesis testing - paired t-test, comparison of abundance of a protein between samples
- Fisher test on contingency table
- Correction for multiple testing - Benjamin-Hochberg

