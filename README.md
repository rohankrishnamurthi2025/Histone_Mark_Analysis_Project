## Histone Mark Analysis Project
Rohan Krishnamurthi

Mentors: Maalavika Pillai, Luís Amaral

### Objective:
Aim: to test if specific histone marks are enriched in true peaks or spurious peaks

Marks to test: 
1.	Active transcription: H3K4me3, H3K27ac
2.	Repressive: H3K27me3, H3K9me3
3.	Bivalency: H3K4me3 + H3K27me3 (peaks for both must be present)

### Part 1: Histone Data
For the histone files, I ran a multi-intersect for all replicates and then sub-selected peaks that are found in all of the samples. For bivalency, I ran multi-inter with files for replicates of H3K4me3 and H3K27me3 in a given cell line.

### Part 2: Transcription Factor ChIP-seq Data
In this section, I copied files from a data repository in Quest, Northwestern's high-performance computing cluster, to my own folder in Quest, and then to my local system. There are about 15 transcription factor files for each of the five cell line. 

### Part 3: Transcription Factor ChIP-seq Data, continued
To obtain an accurate edge list from each file, I select peaks that are accessible and present in at least one sample, selected the correct rows and merged to remove any overlapping edges, and saved these files.

### Part 4: Intersection of Histone Mark and Transcription Factor Data
Lastly, I ran an intersection of each histone mark file with each transcription factor files within every individual cell line.


### Folders
- `Bash Scripts`: contains Bash scripts used to process and automate the transfer of files between the local system and Quest
- `Python Scripts`: contains Python scripts used to process and run intersection of both histone mark and transcription factor files

   -`histone_overlap_1.1.ipynb`: running intersections of histone mark files from replicate experiments of the same histone mark within the same cell line, and additional processing

   -`intersection_1.1.ipynb`: running intersections of each histone mark file with each transcription factor files within every individual cell line

   -`tf_data_1.1.ipynb`: reading in and processing transcription factor ChIP-seq files within the same cell line
  
- `histone_data`: raw histone mark bed files for each replicate experiment
- `histone_processed_data`: processed histone mark bed files within each cell line
- `intersections`: contains intersections histone mark and transcription factor files
- `tf_ChIP_data`: contains raw and processed transcription factor ChIP-seq data

### Miscellaneous Files
- `Project Overview.docx`: document containing more detailed information regarding the steps of this project
- `TF_TSS_10kb_named.bed`: bed file containing locations of 10 kilo base pairs around transcription start sites on each gene
