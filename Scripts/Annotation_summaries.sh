#Summarize an Annotation File

##Compile a report summarizing the annotation
gunzip dmel-all-r6.36.gtf.gz

###Total number of features of each type, sorted from most common to least common 
dmel-all-r6.36.gtf | sort | uniq -c

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