#!/bin/bash

#SBATCH --job-name=AF3_lactate

#SBATCH --partition=gpu

#SBATCH --gres=gpu:1

#SBATCH --cpus-per-task=10

#SBATCH --mem=32G

#SBATCH --time=24:00:00

#SBATCH --output=/home/skg245/2026_08_26_AF3_%j.out

#SBATCH --error=/home/skg245/2026_08_26_AF3_%j.err

#SBATCH --mail-type=ALL

#SBATCH --mail-user=skylar@kosticlab.org


module load alphafold/3.0.1


run_alphafold.py --output_dir=/home/skg245/2026_08_26_AF3_output --json_path=/home/skg245/AlphaFold3_call_26-08-26.JSON
