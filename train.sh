

#!/usr/bin/env bash
#!/bin/bash
#SBATCH --job-name=swin
#SBATCH -p a100
#SBATCH -N 1
#SBATCH -n 36 # number of cores (here 2 cores requested)
#SBATCH --time=2-00:00:00 # time allocation, which has the format (D-HH:MM), here set to 1 hour
#SBATCH --gres=gpu:4,tmpfs:1000G # generic resource required (here requires 1 GPU)
#SBATCH --mem=120GB # specify memory required per node (here set to 8 GB)
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yiping.ji@adelaide.edu.au
##SBATCH --gres=tmpfs:1000G
#SBATCH --signal B:USR2
#SBATCH -A strategic
source ~/.bashrc
conda activate llama
cd /gpfs/users/a1906566/2024/DoRA/commonsense_reasoning