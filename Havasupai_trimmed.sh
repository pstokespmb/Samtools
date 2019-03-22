#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/stat_phylo
#SBATCH -J bam_trim12
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bam_trim12.out
#SBATCH -e /global/home/users/peter_stokes/bam_trim12.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools view -b Havasupai_sorted_markdup_recal.bam "HanXRQChr1:470930-474700" > Havasupai_trimmed.bam