#!/bin/bash
#
#SBATCH --job-name=slurm_debug_testing
#SBATCH --ntasks=64
#SBATCH --nodes=1
#SBATCH --time=48:10:00
#SBATCH --mem-per-cpu=300M
#SBATCH --output=%x-%j.log

export SBATCH_DEFAULTS="--output=slurm_logs/%x-%j.log"
date
echo $(nproc)
date
