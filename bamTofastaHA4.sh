#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/ANGSD/nonpractice/angsd/H_argophyllus
#SBATCH -J bamTofastaHA4
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bamTofastaHA4.out
#SBATCH -e /global/home/users/peter_stokes/bamTofastaHA4.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools fasta arg04-seTX.XRQ_nuclear.realigned.bam > arg04-seTX.XRQ_nuclear.realigned.fa