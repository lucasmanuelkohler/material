**ChIP-Seq**

DNA with bound proteins are digested. Then, selected proteins and their bound DNA can be isolated using Chromatin Immunopercipitation (ChIP). The isolated DNA can then be sequenced using high troughput sequencing methods and from there we can draw conclusions on the binding sites of the proteins in question.

*To-Do* make the link (technology -> application -> statistics)

ChIP-Seq can be used to determine binding sites of many different proteins, usually transcription factors, since we could draw conclusions about gene activity if we can understand TF-binding patterns. 
The sensitivity of the method depends mainly on the sequencing depth used.

## Analysis

First of all the dataset is compared to a reference dataset. It is done to find the locations that match the reference-dataset perfectly (or nearly perfectly). Usually, only two mismatches in the first 25-bp of the read are allowed. One does not compare all the read, partly because mismatches become more frequent at the end of reads. 

The next step is to get rid of 'background-reads' that are quite similar but do not result from the binding process. It is very important to take the ratio '#background-reads / #reads' into account for further analysis. If we do not, the interpretation could be flawed. 

The most important thing is to find the binding location. This is done by peak calling. In a successfull experiment, there should be two peaks: One at the 3'-end and one at the 5'-end (Crick and Watson). Those give a candidate binding location.
Those peaks need to be shifted to get a 'real' candidate. This can be done by numerous ways. In the paper listed below some are mentioned: 
> Kharchenko et al. used the cross-correlation magnitude to find the optimal shifting distance, while Ji et al. used half of the average peak length to shift. 
> An alternative strategy, which we have used to identify the candidate region [...], is to call peaks from the Watson strand and from the Crick strand separately, and then regard the region bracketed by the two strand-specific peak locations as the candidate TF-binding region.
Then one has to calculate the significance of the regions found. To do this it is useful to use the background distribution to asses the statistical significance of the peaks. Common distributions are the Poisson distribution or even better the negative Binomial distribution. For more detail see the article. There are a lot of possibilities to find the candidate regions and decide if they are useful, but it would be too much describing them here.
After finding those peaks, they are assosiated to a gene, since this is the main object of the method. Normally, the closest gene is used as reference. 
Then the predicted peak regions are analysed by de novo motif discovery. If we do not know, where the TF binds exactly, the binding motifs from the peak sequences have to be discovered from their orthologous sequences. CisGenome (a program) does this with a Gibbs sampling module (Lawrence et al., 1993, Liu, 1994). To get more reliable information, the Gibbs sample is redone several times independently. 

Source: 
[The Analysis of ChIP-Seq Data](https://www.sciencedirect.com/science/article/pii/B9780123850751000032)


github usernames:

lwidmer94  
benlug  
Jette87   
MeretMosimann
