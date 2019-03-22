#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/stat_phylo
#SBATCH -J samtools_index_all
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=122GB
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/peter_stokes/samtools_index_all_bams.out
#SBATCH -e /global/home/users/peter_stokes/samtools_index_all_bams.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools index -b annKS_sorted_markdup_recal.bam annKS_sorted_markdup_recal.bam