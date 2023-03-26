#!/bin/bash

# If an argument is provided, use it as the value of the variable "my_arg"
if [ $# -gt 1 ]; then
  model=$1
  text_file=$2
else
  echo "plz provide text file path for summarize"
  exit 0
fi
./build/bin/main.exe -m ./models/Alpaca/$model/ggml-alpaca-7b-q4.bin --color -f ./prompts/alpaca_sum.txt\
 --n_parts 1 -c 2048\
 -p "'text: $(cat $text_file)'\n summary:"