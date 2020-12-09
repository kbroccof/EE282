#### Install busco: 
conda install -c bioconda -c conda-forge busco=4.1.4 

#### Calculate N50 of the assembly: 
miniasm $minimap_overlap.paf \
> $miniasm_assembly.gfa

miniasm $minimap_overlap.paf \
| 
> $miniasm_assembly_N50.gfa

#script adapted from Paula's: 
awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' $miniasm_assembly.gfa \
| tee >(n50 /dev/stdin > n50.txt) \
| fold -w 60 \
> $miniasm_assembly_N50.fa

awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' processed.gfa \
| tee >(n50 /dev/stdin > n50.txt) \
| fold -w 60 \
> processed.fa