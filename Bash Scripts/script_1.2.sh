#!/bin/bash
#SBATCH -A b1042 ## <-- EDIT THIS TO BE YOUR ALLOCATION
#SBATCH -N 1
#SBATCH -n 10
#SBATCH --time=48:00:00
#SBATCH --mem=48G
#SBATCH --partition  genomics
#SBATCH --job-name=targetOverlap
#SBATCH --mail-type=END,FAIL

module load bedtools #peak calling

cd /projects/b1042/AmaralLab/Rohan/tf_ChIP_data/

for folder in 'A549' 'HepG2' 'GM12878' 'MCF-7' 'K562'; do
	cd $folder
	echo $folder

	mylist = ()

	for file in folder; do
		echo "Processing $file"
		awk '$"./ATAC-seq/consensuspeaks_all_targets_10kb_sorted.bed" == 1' file.bed > filtered.bed
	
	done

	#merge: c = a.merge()
	#save

	cd ../
done
