#Homework 3 

##Summarize Genome Assembly 

###File Integrity on gzipped fasta file using a checksum 
Ran checksum prior to unzipping 
My checksum: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz 
Online checksum for same file: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz 
They match! 
*See file_integrity.sh for script under Scripts directory in homework3 branch 

###Calculate Summaries of the Genome
*See Genome_summaries.sh for script under Scripts directory in homework3 branch 

####1. Total number of nucleotides: 143,726,002 bases 
####2. Total number of Ns: mean 616.6 sd 690.7 for N count 
####3. Total number of sequences: 1,870 sequences 

##Summarize an Anotation File

###File Integrity on gzipped gtf annotation using a checksum
Ran checksum prior to unzipping 
dmel-all-r6.36.gtf.gz: OK
They match! 
*See file_integrity2.sh for script under Scripts directory in homework3 branch 

###Compile a Report Summarizing the Annotation  

####A) Total number of features of each type, sorted from the most common to the least common: 
####1. Total number of nucleotides: 
####2. Total number of Ns:
####3. Total number of sequences: 

####B) Total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)