---

# ChIP-seq

## Introduction

Chromatin immunoprecipitation is a technique that studies protein-DNA interaction. Proteins are cross-linked to the DNA sequences they are bound to and the DNA is then fragmented. Antibodies are used to pull down the protein that bring down the sequences cross-linked with it. The cross-link is digested and the DNA fragments associated with the protein of interest are sequenced. 

This can be used to study binding targets of transcription factors, changes in binding patterns upon mutations in the protein of interest, etc.

## Applications

It is mainly used 
- To map global binding sites for any protein of interest.
- To identify the binding sites of DNA associated proteins.
- To analyze protein interactions with DNA

## Statistics


|Software | Statistics|
| --- | --- |
|[SICER](https://home.gwu.edu/~wpeng/Software.htm) | Clustering|
|[permseq](https://github.com/keleslab/permseq/) | lasso, log-linear model, Dirichlet-multinomial regression model|
|[hiddenDomains](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-0991-z) | HMM, Gaussian|


---

## ChIPSeq Assay: Method to determine Protein-DNA binding sites with the help of high-troughput DNA sequencing and Immunoprecipitation methods. The protein bound DNA is separated, sequenced and mapped back onto the genome.

Application: Investigation of unknown protein-DNA interactions and identification of binding sites - Interactome map showing all interactions of binding sites and proteins of interest.

Statistics: 
For detecting a binding site, so called peak calling methods have been developed. The algorithm is constructed such that it detects local concentrations of sequence hits (with the genome, a location cluster) and constructs a peak within it. Then, a threshold can be set, f.ex. by saying that the peak should at least be sixfold higher than in the control experiment, to distinguish between noise and signal. An additional criterion for this can be a minimal number of independent tags on a binding site (reads that cover the binding site differently and must have been obtained independently). The number again can be obtained from the ROC curve, by taking the threshold that is nearest to the top left corner.

To assess the quality of results by comparing with results of other methods: Receiver operating curve (ROC) of the test (sequence is read more than a certain number of times = is a binding site) and area under curve (AUC). The AUC and its se() can be used to calculate a p-value that the given result is a chance result of true AUC = 0.5 (0-Hypothesis).

To assess the precision of the DNA binding site identification, the results are compared with previously known binding sites, and then it is assessed how many of the comp. binding sites are within the ChIPSeq binding sites and where (center vs head or tail). It is also possible to compare the comp. binding sites on the genome with the ones obtained from ChIPSeq and thereby assessing how many were "missed" - only few missing indicate good coverage of the assay (that most binding sites were retrieved).

To assess how good the computationally obtained binding site is, one can generally look at sequences with high reads without the binding site (no statistical method though). Another method is to block the binding site and look for lower transcription levels (simple test for two distributions to have different mean).

Editors: Thomas Fischer, Mauro Schlepfer, Giuachin Kreiliger


---


#Exercise 2 Group 7 
(Almut Lütge @almutlue, Cristina Loureiro @CrLou,, Christoph Blapp @BlappChri)  

## RiboSeq
[RiboSeq](http://science.sciencemag.org/content/324/5924/218) quantifies ribosomal binding and position on mRNA to monitor protein translation. Bound ribosomes protect a 30 nt footprint from nucleosomal degradation. By deep sequencing these footprints can be quantified to analyse which mRNA is translated.

**Technology:** RiboSeq

**Applications:** quantifies translation (efficiency)

**Statistics:** Linear models, Gaussian errors, Log distribution

---

## Exercise 2 Part 2 - Tobias Hoch
Technology: Chem-seq

Application: This technique can be used to map genome-wide interactions between DNA and small molecules (like therapeutic drugs). This technique is therefore interesting to study for example the interaction between drugs and the DNA of patient. The small molecule is marked with a biotin tag. After fragmentation, bound DNA fragments are captured with streptavidin beads. Those fragments are then sequenced using massively parallel DNA sequencing.

Statistics: To analyze the data, the fragments have to be aligned using a alignment algorithm like the Needleman-Wunsch algorithm. 

---

### ChiRP-Seq
#### Group members: 
parizkh: Hana Parizkova

mkuijs: Merel Kuijs

lbourguignon : Lucie Bourguignon

#### Technology

Researchers treat cells containing the RNA molecule of interest so as to obtain chromatin segments that will react with the synthetic oligonucleotides designed to bind said RNA molecule. The resulting complexes are captured with streptavidin-labeled magnetic beads and treated with RNAse to isolate the bound DNA molecules. The DNA is sequenced using Next Generation Sequencing and the genomic locations corresponding to the obtained reads are determined.  

#### **Application**

The ChIRP-seq technology is a method of mapping _in vivo_ long noncoding RNA (lncRNA) binding sites genome-wide. Thus, one can study the interaction between RNAs and the chromatin. Just as ChIP-seq permits genome-wide explorations of DNA-proteins sequences, ChIRP-seq studies the "RNA interactome".

#### Statistics
- same as for ChIP-seq

- bimodal distribution (of ChIP/ChIRP-seq tags around the binding site)

- Poisson distribution of tags across genome (under null model), with dynamic parameter lambda

- FDR (False Discovery Rate) estimation

---

i6092467

**Technology**: Parallel Analysis of RNA Structure (**PARS-Seq**) is a technique that involves deep sequencing of RNA fragments. The fragments are treated with enzymes, which are specific to single- and double-stranded RNA. The structure can then be inferred by comparing digestion patterns of enzymes.

**Applications**: This strategy can be used for profiling secondary and tertiary structure of RNA; it is an alternative to mass spectrometry and crystallography. PARS-Seq has been used in studies on the structure of RNA in different conditions, for instance, to investigate the effect of temperature on RNA structures, effect of SNPs on in vitro RNA structure of human transcriptomes etc.

**Statistics**: When performing comparisons, often statistical hypothesis tests are used, involving FDR control and consequent *p*-value adjustment. When comparing different methods for secondary RNA structure prediction, ROC curves are used.

---
qwertv

## Genome-wide measurement of RNA secondary structure in yeast

**Idea**: 

* profile the structure of mRNA effectively, based on deep sequencing fragments of RNAs that were treated with structure-specific enzymes.

**Application**:  

* RNA structures may control gene activity

---

#Methyl-Seq
 [Methods](https://www.illumina.com/techniques/sequencing/methylation-sequencing.html)
 RBetschart: Raphael Betschart
retogerber: Reto Gerber
 ## Technology:
- Methyl-Seq is a sequencing method based on cytosine methylation. It is possible to do both genome-wide analysis and targeted approaches.
 ## Application:
Methyl-Seq analyzes methylation patterns of CpG (Cytosine nucleotide followed by Guanine), CHH and CHG regions.
 ##  Statistics:
Differential methylation analysis of multiple sample groups is a method that can be used to compare methylation of different samples.
[Methyl-Seq Methods](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3481483/pdf/1471-2164-13-S6-S14.pdf)


---

## ATAC-Seq
 ATAC-seq is a sensitive technique used to assess genome-wide chromatin accessibility at nucleotide level, aiming to characterize interactions between DNA and histone proteins.
The main actor is the hyperactive Tn5 transposase, which preferentially operates on nucleosome-free chromatin regions. 
The main advantage of this method is, that in combination with pre-loaded sequencing adapters, administration of Tn5 transposase enables a simultaneous fragmentation and adapter tagging for library preparation.
 ### Technology
 The chosen technology is ATAC-seq. 
 ### Applications
 Its applications include genome wide identification of changes in nucleosome position, transcription factor occupancy and chromatin density at nucleotide resolution.
This is helpful to characterize the development and the presence of pathological conditions. Furthermore, ATAC-seq can be applied to create personalized epigenomic maps, which display the individual daily changes in chromatin packaging.
 ### Statistical methods
 A pipeline was developed to process and analyse the ATAC-seq data. This pipeline uses various different statistical tools, which apply different types of statistical methods:
 **ZINBA (Zero-Inflated Negative Binomial Algorithm)** -> for peak calling: novel mixture regression model,determination of relative likelihood,posterior probabilities of component membership, weighted generalized linear models
 **ChromHMM**-> to calculate ATAC-seq insertion size enrichment analysis within chromatin annotations: multivariate Hidden Markov Model (defines chromatin states based on histone modification patterns)
 **DANPOS** -> for dynamic nucleosome analysis at single nucleotide resolution: quantile normalization, Poisson test (default), chi square test (alternative), negative binominal test (alternative)
 **CENTIPEDE** -> for transcription factor motif analysis: posterior probabilites (weighed)
 hierarchial clustering (Euclidean distance)
 hierarchical clustering (Pearson correlation)
 mean centering
 ### List of members
 Sarah Greve (github username: greves)
 Rosamaria Lugarà (github username: rlugar)
 
 ---
 
 ## Hi-C

### Technology

The chosen thechnology is Hi-C a method used for chromosome conformation capture


### Summary
Hi-C is a genome-wide sequencing technique used to investigate the 3D structure of chromitain within the nucleus. In the procedure DNA is cut by unspecific restriction enzymes. Consecutively the DNA fragments are covalently bound to neighbouring fragments. Thus fragments are merged that were close to each other in the 3D conformation of the DNA. 

### Computational Methods

In order to obtain information about the 3D structure of the chromatin the newly merged DNA fragments need to be sequenced and mapped to a reference genome. Various algorithms have been developed to effectively identify chromatin interactions and TADs (topologically associating domains).

Examples for such algorithms include Fit-Hi-C [1](https://noble.gs.washington.edu/proj/fit-hi-c/), HIPPIE [2](https://www.lisanwanglab.org/hippie/) and HiCseg [3](https://cran.r-project.org/web/packages/HiCseg/index.html)
.




###List of memebers

Jerome Zuercher (github username: jezuercher)


---

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


---


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


---

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
  
  ---

acciardo

### Statistics:
#### Some statistical models/methods that are used in this technique include maximum likelihood estimation to test for the fitness parameter used in the paper. Additionally, the authors also applied a generalized Bayesian autoregression approach for the same parameter. To describe the relative fitness of a mutation, the authors used a linear model with two parameters for proportions of a mutation across serial passages of the virus in cells.
=======
**Methods**: 

* define parallel analysis of RNA structure (PARS) score (high PARS score means a higher probability for a nucleotide to be in a double-stranded conformation). 
* To test whether PARS measures RNA structure, they compute *correlation* between PARS and footprinting. 
* Discrete *Fourier transformation* of average PARS was used to compute the periodicity
* Sliding window analysis of local PARS score to predict the encoding of signal sequence

---

CodingKaiser

##### ChemSeq
**Technology**

* A method similar to CHiP-seq, Chem-seq relies on small-molecule ligand-binding to identify sites throughout the human genome which are specifically targeted and bound to by the small molecule in question. Large-scale DNA sequencing is employed to determine which regions of the genome the small-molecule binds to.

**Applicaton**

* Chem-seq primarily allows for researchers to assess the genome binding-abilities of small-molecule therapeutics, specifically those which influence gene expression and regulation. Formaldehyde fixation of biotinylated small-molecule drugs can be used to isolate stretches of DNA where proteins or the DNA itself are bound to the molecule in question. This aids in drug discovery and may provide a read-out of specific to nonspecific binding of small molecule therapeutics.

**Statistics**

* The statistical significance of binding signal (i.e. specificity of binding) was determined using an exact test. P-values from this test were then subjected to a multiple testing correction technique known as Benhamin-Hochberg correction. This read-out was then used to filter out regions from the initial ~29.000 which were represented in the sequencing data, which were a result of noise in the data.


---
 