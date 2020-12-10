#### Install busco: 
conda install -c bioconda -c conda-forge busco=4.1.4 

#### Calculate N50 of the assembly: MAYBE works?  
miniasm $minimap_overlap.paf \
> $miniasm_assembly.gfa
less $miniasm_assembly.gfa
q
 
n50 () {
  bioawk -c fastx ' { print length($seq); n=n+length($seq); } END { print n; } ' $1 \
  | sort -rn \
  | gawk ' NR == 1 { n = $1 }; NR > 1 { ni = $1 + ni; } ni/n > 0.5 { print $1; exit; } '
} 

miniasm $minimap_overlap.paf \
> $miniasm_assembly.gfa \
| awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' $miniasm_assembly.gfa \
| tee >(n50 /dev/stdin > n50.txt) \
| fold -w 60 \
> $miniasm_assembly_N50processed.fa
less $miniasm_assembly_N50processed.fa
q





miniasm $minimap_overlap.paf \
> $miniasm_assembly.gfa \
| awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' $miniasm_assembly.gfa \
| tee >(n50 /dev/stdin > n50.txt) \
| fold -w 60 \
> $miniasm_assembly_N50processed.fa
less $miniasm_assembly_N50processed.fa
q

More JJ scripts from Nov 30th: but mine is not a fast a file? 
bioawk -c fastx ' { print length($seq) } ' $miniasm_assembly.gfa \
| less 

JJ's script from Nov 30th: first one that is greater than 50% is the N50
miniasm $minimap_overlap.paf \ 
| gawk ' { tot=tot+$1; print $1 "\t" tot } END { print tot } ' \
| sort -k1,1rn \
| gawk ' NR == 1 { tot = $1 } NR >1 && $2/tot >= 0.5  { print $1 } '
#output
gawk: cmd. line:1: (FILENAME=- FNR=2) fatal: division by zero attempted

miniasm $minimap_overlap.paf \ 
| gawk ' { tot=tot+$1; print $1 "\t" tot } END { print tot } ' \
| sort -k1,1rn \
| gawk ' NR == 1 { tot = $1 } NR == 1 { tot = $1 } NR >1 { print $0 "\t" $2 / tot } ' | column t

JJ's script from Nov 30th: first one that is greater than 50% is the N50
miniasm $minimap_overlap.paf \ 
| gawk ' { tot=tot+$1; print $1 "\t" tot } END { print tot } ' \
miniasm_assembly.gfa \
| sort -k1,1rn \
| gawk ' NR == 1 { tot = $1 } NR >1 && $2/tot >= 0.5  { print $1 } ' 


| column -t \
> $miniasm_assembly_N50.fa
less miniasm_assembly_N50.fa
q


#script adapted from Paula's: 
awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' $miniasm_assembly.gfa \
| tee >(n50 /dev/stdin > n50.txt) \
| fold -w 60 \
> $miniasm_assembly_N50.fa
#ouput: bash: n50: command not found...





