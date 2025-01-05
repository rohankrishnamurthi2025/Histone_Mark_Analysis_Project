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

cd /projects/b1042/AmaralLab/Maalavika/CellLineSpecificNetworks/TFbindingModel/TF_ChIPfitv2/

for folder in 'A549' 'HepG2' 'GM12878' 'MCF-7' 'K562'; do
	cd $folder
	echo $folder
	
	cd ChIP-seq
	cp *_consensus_accessible_peaks.bed /projects/b1042/AmaralLab/Rohan/tf_ChIP_data/$folder
	
	cd ../../
done
