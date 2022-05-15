#!bin/bash

./steps/make_mfcc.sh ../../../../usc/data/train
./steps/make_mfcc.sh ../../../../usc/data/test
./steps/make_mfcc.sh ../../../../usc/data/dev

./steps/compute_cmvn_stats.sh ../../../../usc/data/train
./steps/compute_cmvn_stats.sh ../../../../usc/data/test
./steps/compute_cmvn_stats.sh ../../../../usc/data/dev


