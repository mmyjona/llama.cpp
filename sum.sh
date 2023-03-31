#!/bin/bash

# If an argument is provided, use it as the value of the variable "my_arg"
if [ $# -gt 1 ]; then
  model=$1
  text_file=$2
else
  echo "plz provide model size & text file path for summarize"
  exit 0
fi
./build/bin/main.exe -m ./models/Alpaca/$model/ggml-alpaca-$1-q4.bin --color -f ./prompts/alpaca_sum_cn.txt\
 --n_parts 1 -c 2048 -n -1  --reverse-prompt "\"\"\"" --reverse-prompt "[text]" \
 -p "[text]: $(cat $text_file)\n [summary zh]:"