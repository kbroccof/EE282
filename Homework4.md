# Homework 4

## Summarizing Partitions of a Genome Assembly 

### File Integrity  file using a checksum 
Ran checksum prior to unzipping

My checksum: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz

Online checksum for same file: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz 

They match!

*See `ChecksumPart1.sh` for script under ScriptsHW4 directory in homework4 branch*

### Calculate the following for all sequences ≤ 100kb and all sequences > 100kb: 

#### ≤ 100kb
1. Total number of nucleotides: 6,178,042 bases
2. Total number of Ns: 662,593 Ns
3. Total number of sequences: 1,863 sequences 

#### > 100kb 
1. Total number of nucleotides: 137,547,960 bases
2. Total number of Ns: 490,385 Ns
3. Total number of sequences: 7 sequences 

*See `Calculate.sh` for script under ScriptsHW4 directory in homework4 branch*

### Plots of the following for all sequences ≤ 100kb and all sequences > 100kb: 

#### ≤ 100kb
1.	Sequence length distribution. Use a histogram! A log scale will be helpful to show the full range of lengths.

LTELength_Hist.png

2.	 Sequence GC% distribution. Use a histogram!

LTEGC_Hist.png

3.	Cumulative sequence size sorted from largest to smallest sequences. Don't forget about the plotCDF utility we used in class.

dmelr6.lte.lengc.png

#### > 100kb
1.	Sequence length distribution. Use a histogram! A log scale will be helpful to show the full range of lengths.

GT_Length_Histogram.png

2.	 Sequence GC% distribution. Use a histogram!

GT_GC_Histogram.png

3.	Cumulative sequence size sorted from largest to smallest sequences. Don't forget about the plotCDF utility we used in class.

dmelr6.gt.lengc.png

*See `Plots.sh` for script under ScriptsHW4 directory in homework4 branch*

## Genome Assembly 

### Download and name file

*See `DownloadPart2.sh` for script under ScriptsHW4 directory in homework4 branch*

### Assemble a Genome from MinION Reads

*See `Assemble.sh` for script under ScriptsHW4 directory in homework4 branch*

### Assembly Assessment 
1.	Calculate the N50 (Links to an external site.) of your assembly (this can be done with faSize+awk+sort or with bioawk+awk+sort) and compare it to the Drosophila community reference's contig N50 (here (Links to an external site.))

N50 of my assembly: 4,494,246
N50 of Drosophila community reference's contig: 21,485,538
Well, clearly mine is wrong, but I've been at this for days and I finally have an answer and done is better than perfect and this is all I have left to give please accept my apologies. 

2.	Compare your assembly to both the contig assembly and the scaffold assembly from the Drosophila melanogaster on FlyBase using a contiguity plot.

Hint: use plotCDF or plotCDF2 as demonstrated in class and revisit this example, especially the FIFOs section, which demonstrates use of plotCDF2.

3.	Calculate BUSCO scores (Links to an external site.) of both assemblies and compare them. You can obtain the BUSCOs pipeline from conda.

*See `AssemblyAssessment.sh` for script under ScriptsHW4 directory in homework4 branch*

## Extra Credit 

*See `EC.sh` for script under ScriptsHW4 directory in homework4 branch*
