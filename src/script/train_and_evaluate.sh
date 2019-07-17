#!/usr/bin/env bash

# Modify the pythonpath
PYTHONPATH=./src:$PYTHONPATH

# Launch you envs
#source activate pytorch-0.4.0

# Location for storing the checkpoint
dir=$1

# Location of your dataset
ntu=$2

# Training the CNN-backbone
#python main.py --dir $dir --root $ntu -b 10 -j 4 --epochs 10 --time 8 --pose-predictions

# Training the Glimpse Clouds
#python main.py --dir $dir --root $ntu -b 32 -j 4 --epochs 10 --time 8 --glimpse-clouds --pose-predictions

# Evaluating on the test set
python main.py --dir $dir --root $ntu -b 32 -j 4 --time 8 --glimpse-clouds --pose-predictions -e
#python main.py --dir $dir --root $ntu -b 32 -j 4 --time 8 --pose-predictions e
