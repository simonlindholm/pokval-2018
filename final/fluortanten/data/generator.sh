#!/bin/bash
PPATH=$(realpath ..)
. ../../testdata_tools/gen.sh

setup_dirs
use_solution prefix_sums.cpp
compile copy.sh
compile generator.py

samplegroup
sample 1

group grupp1 32
tc tc0-1-1-1 copy ../manual_data/tc0-1-1-1.in
tc tc0111 copy ../manual_data/tc0111.in
tc tc-1-1-10 copy ../manual_data/tc-1-1-10.in
tc tc1110 copy ../manual_data/tc1110.in
tc small-1 generator n=500
tc small-2 generator n=1000
tc small-3 generator n=1000
tc small-4 generator n=1000
tc small-5 generator n=1000
tc small-6 generator n=1000 s=1
tc small-7 generator n=1000 s=-1

group grupp2 12
tc tc-1-1-10
tc tc0111
tc increasing-1 generator n=1000000 s=1
tc increasing-2 generator n=1000000 s=1
tc increasing-3 generator n=1000000 s=1
tc increasing-4 generator n=1000000 s=1
tc increasing-5 generator n=1000000 s=1

group grupp3 11
tc tc0-1-1-1
tc tc1110
tc decreasing-1 generator n=1000000 s=-1
tc decreasing-2 generator n=1000000 s=-1
tc decreasing-3 generator n=1000000 s=-1
tc decreasing-4 generator n=1000000 s=-1
tc decreasing-5 generator n=1000000 s=-1

group grupp4 45
include_group grupp1
include_group grupp2
include_group grupp3
tc large-1 generator n=100000
tc large-2 generator n=500000
tc large-3 generator n=1000000
tc large-4 generator n=1000000
tc large-5 generator n=1000000 

cleanup_programs
