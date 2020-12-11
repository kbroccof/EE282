#### Install busco: 
conda install -c bioconda -c conda-forge busco=4.1.4 

#### Calculate N50 of the assembly:
n50 () {
  bioawk -c fastx ' { print length($seq); n=n+length($seq); } END { print n; } ' $1 \
  | sort -rn \
  | gawk ' NR == 1 { n = $1 }; NR > 1 { ni = $1 + ni; } ni/n > 0.5 { print $1; exit; } '
} 

miniasm -f iso1_onp_a2_1kb.fastq minimap_overlap.paf \
> miniasm_assembly.gfa 
#less miniasm_assembly.gfa
#q

awk ' $0 ~/^S/ { print ">" $2" \n" $3 } ' miniasm_assembly.gfa | tee >(n50 /dev/stdin > n50.txt) | fold -w 60 > miniasm_assembly_N50processed.fa
less n50.txt
q
#output: 
4494246






