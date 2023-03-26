#!/bin/bash

# If an argument is provided, use it as the value of the variable "my_arg"
if [ $# -gt 1 ]; then
  model=$1
  text_file=$2
else
  echo "plz provide text file path for summarize"
  exit 0
fi
./build/bin/main.exe -m ./models/Alpaca/$model/ggml-alpaca-7b-q4.bin --color -f ./prompts/alpaca.txt\
 --repeat_last_n 256 --color --n_parts 1\
 -p "Building a website can be done in 10 simple steps:"
#  -p "[Text]: $(cat $text_file)\n [Summary]:"