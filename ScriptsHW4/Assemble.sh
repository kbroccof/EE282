#### Install minimap and miniasm: 
conda install -y miniasm minimap 

##### Using interactive shell: 
srun -c 32 -A ecoevo282 --pty --x11 bash -i


#### Using minimap to overlap reads: 
gunzip iso1_onp_a2_1kb.fastq.gz
less iso1_onp_a2_1kb.fastq
q 

minimap -t 32 -Sw5 -L100 -m0 iso1_onp_a2_1kb.fastq{,} \
> $minimap_check.paf
less $minimap_check.paf
q

minimap -t 32 -Sw5 -L100 -m0 iso1_onp_a2_1kb.fastq{,} \
> $minimap_overlap.paf
less $minimap_overlap.paf
q 


#### Using miniasm to construct an assembly:
miniasm -f iso1_onp_a2_1kb.fastq $minimap_overlap.paf \
> $miniasm_assembly.gfa
less $miniasm_assembly.gfa
q

 

