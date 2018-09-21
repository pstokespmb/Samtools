#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_landrace
#SBATCH -J samtools_index_landrace
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/samtools_index_landrace.out
#SBATCH -e /global/home/users/peter_stokes/samtools_index_landrace.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

for i in /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_landrace/*.bam;do samtools index $i;done
