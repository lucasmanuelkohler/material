# Group 6

@lucasmanuelkohler
@peicai
@protelescristata
@...(don't know 4th username)

# Part b
## What is ChIP-Seq:

#### It is a combination of chromatin immunoprecipitation (ChIP) with ultra high-throughput massively parallel sequencing.

## What does it do:

#### It allows mapping of protein-DNA interactions in-vivo on a genome scale.

#### Also it nables mapping of transcription factor binding, DNA binding proteins, RNA PoI II occupancy or Histone modification marks at genome scale.

## Link(technology -> application -> statistics):

#### Chromatin Immunoprecipitation (ChIP) -> ChIP-Seq -> Poisson distributions, a negative binomial,...（ Used in peak calling process） 
##### Another application of ChIP-Seq is differential peak calling: This aims to identify differences in two ChIP-seq signals. To identify the differential peaks Hidden Markov Models (HMM) can be used. 
##### HMM: A statistical model which consists of a unobservable Markov chain emitting (observable) symbols at each state depending only on the current state (Markov Property). Due to the presence of hidden random variables the optimization is not straightforward. A popular optimization technique is the Baum-Welch algorithm.

[Paper on Differential Peak finding by Allhoff et al.](https://academic.oup.com/nar/article/44/20/e153/2607977)
