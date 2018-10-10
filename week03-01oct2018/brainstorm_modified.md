
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
|---------|-----------|
|[SICER](https://home.gwu.edu/~wpeng/Software.htm) | Clustering|
|---------|-----------|
|[permseq](https://github.com/keleslab/permseq/) | lasso, log-linear model, Dirichlet-multinomial regression model|
|---------|-----------|
|[hiddenDomains](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-0991-z) | HMM, Gaussian|




#Exercise 2 Group 7 
(Almut Lütge @almutlue, Cristina Loureiro @CrLou,, Christoph Blapp @BlappChri)  

## RiboSeq
[RiboSeq](http://science.sciencemag.org/content/324/5924/218) quantifies ribosomal binding and position on mRNA to monitor protein translation. Bound ribosomes protect a 30 nt footprint from nucleosomal degradation. By deep sequencing these footprints can be quantified to analyse which mRNA is translated.


**Technology:** RiboSeq

**Applications:** quantifies translation (efficiency)

**Statistics:** Linear models, Gaussian errors, Log distribution
