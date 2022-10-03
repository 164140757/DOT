#!/bin/sh		
#BSUB -J nerf
#BSUB -n 16    
#BSUB -q gpu         
#BSUB -gpgpu 4
#BSUB -o out.%J      
#BSUB -e err.%J  
#BSUB -W 48:00

nvidia-smi

module load anaconda3
module load cuda-11.4
source activate
conda activate Adnerf

python autotune.py -g '0 1 2 3' tasks/eval.json