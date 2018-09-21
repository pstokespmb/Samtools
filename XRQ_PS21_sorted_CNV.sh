#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J XRQ_PS21_sorted_CNV
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/XRQ_PS21_sorted_CNV.out
#SBATCH -e /global/home/users/peter_stokes/XRQ_PS21_sorted_CNV.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools sort -o XRQ_PS21_sorted_CNV.bam XRQ_PS21.bam