#Summarize an Annotation File

##Compile a report summarizing the annotation
gunzip dmel-all-r6.36.gtf.gz

###Total number of features of each type, sorted from most common to least common 
less -S dmel-all-r6.36.gtf #aligns the data pretty 
gawk -F '\t' '{print $3}' dmel-all-r6.36.gtf >col.3.txt #print column 3 to this .txt file
sort col.3.txt > sorted.col.3.txt #sort the groupings from output from above
uniq -c sorted.col.3.txt > uniq.col.3.txt #group the features we just sorted
sort -k1,1nr  uniq.col.3.txt #sort the first field numerically and in reverse order 
#output
189268 exon
 162578 CDS
  46664 5UTR
  33629 3UTR
  30812 start_codon
  30754 stop_codon
  30728 mRNA
  17875 gene
   3047 ncRNA
    485 miRNA
    366 pseudogene
    312 tRNA
    300 snoRNA
    262 pre_miRNA
    115 rRNA
     32 snRNA
#attempt at pipeline 
less -S dmel-all-r6.36.gtf | gawk -F '\t' '{print $3}' dmel-all-r6.36.gtf | sort | uniq -c | sort -k1,1nr > done.txt
 
###Total number of genes per chromosome arm 
gawk -F '\t' '$3=="gene"{print $1}' dmel-all-r6.36.gtf | grep -P '^[4XY23][LR]?$' | sort | uniq -c
#output 
   3516 2L
   3653 2R
   3486 3L
   4225 3R
    114 4
   2691 X
    113 Y
#the first part selects only for genes from that unzipped gtf file 
#the output from that pipes into the grep, where we select for specific chromosomes (the ones asked for in this question) 
#then we sort the output into groupings 
#uniq -c tells us how many are in each grouping 