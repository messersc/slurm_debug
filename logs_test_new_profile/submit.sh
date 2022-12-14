#!/bin/bash
#
#SBATCH --job-name=slurm_debug_testing
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --time=48:10:00
#SBATCH --mem-per-cpu=300M
#SBATCH --output=%x-%j.log
#SBATCH --reservation=cmesser_m_16

export SBATCH_DEFAULTS="--output=slurm_logs/%x-%j.log"
date
#srun snakemake --use-conda -j200 --profile=/data/gpfs-1/work/users/cmesser_m/dev/snakemake_profile_patched
srun snakemake --use-conda -j200 --profile=cubi-v1 --cluster "sbatch --reservation=cmesser_m_16"
date
