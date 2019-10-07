# Group 6

@lucasmanuelkohler
@peicai
@protelescristata
@...

# Part b
## what the ChIP-Seq does

#### Combination of chromatin immunoprecipitation (ChIP) with ultra high-throughput massively parallel sequencing.

#### Allows mapping of protein-DNA interactions in vivo on a genome scale.

#### Enables mapping of transcription factor binding, DNA binding proteins, RNA PoI II occupancy or Histone modification marks at genome scale.

## make the link (technology -> application -> statistics)

#### Chromatin Immunoprecipitation (ChIP) -> ChIP-Seq -> Poisson distributions, a negative binomial,...（ Used in peak calling process） 
##### Another application of ChIP-Seq is differential peak calling: This aims to identify differences in two ChIP-seq signals. To identify the differential peaks Hidden Markov Models (HMM) are used. 
##### HMM: A statistical model which consists of a unobservable Markov chain emitting (observable) symbols at each state depending only on the current state (Markov Property). Due to the presence of hidden random variables the optimization is not straightforward. A popular optimization technique is the Baum-Welch algorithm.
[Paper on Differential Peak finding by Allhoff et al.](https://academic.oup.com/nar/article/44/20/e153/2607977)
