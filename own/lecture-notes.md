# STA 426 Supplementary Lecture Notes

## Mapping Reads (October 8, 2017)

### Sequence alignment

	- Rare mutation means greater penalty in score matrix and alignment. 

	- Note the gap score and alignment score

### Local alignment&ndash;Smith-Waterman

	- Columns and rows correspond to true and obtained sequences. Start at top left corner 'walk/track' and note the penalties for differences along the way

	- Look at masx score

	- how much to tolerate mismatches

### Index Genome:

Methods

	1. Spaced seeds
	2. __Burrows-Wheeler transform__ 
		
#### Burrows-Wheeler transform

		- Useful because of _Last-First mapping property_. From last sequence can build up last matrix by jumping from the last to the first columns. From this you can get the position of the base in the original gene.
		- relative order of particular a char in last and first columns are the same (in example, c's are in the order 2, 1, 3)

	- Reversibility: build column by sorting it (alphabetical). Make last column by cyclic permutation right one of this first column&mdash;concat last char of that to the first such the the first row is the original sequence.

	- Index genome + BWT $\rightarrow$	index with same size of original genome, compute back the original genome 
		- Looking up a seed ("Lookup AAC")
			- look at first seed (i.e. look at all c's in first row, then follow up with the a's in the last column, and then jump from the last to the corresponding rows by first column) i.e. in exaple, we look at the 2nd and 3rd a's so we jump to the second and third rows containing a in the first column.

	- need to store only one column for index

#### BWT: Tolerating mismatches with index lookup

	- index lookup needs perfect matching (finding the correct rows when jumping from last to first columns). How to deal with this? (ref slides)
		- (ref slides): look up other possibilities \{\rightarrow\} effort becomes 3x greater. which alignment satisfies the most segments?


###
