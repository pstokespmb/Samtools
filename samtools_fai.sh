#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas/
#SBATCH -J samtools_fai
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/samtools_fai.out
#SBATCH -e /global/home/users/peter_stokes/samtools_fai.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.6

samtools faidx HanXRQr1.0-20151230_ch01_to_17.fa