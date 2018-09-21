#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J bamTofasta
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bamTofasta.out
#SBATCH -e /global/home/users/peter_stokes/bamTofasta.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools fasta XRQ_PS21_unmapped_sorted.bam > XRQ_PS21_unmapped_sorted.fa
