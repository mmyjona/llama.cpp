#!/bin/bash

# If an argument is provided, use it as the value of the variable "my_arg"
if [ $# -gt 0 ]; then
  model=$1
else
  # Otherwise, use a default value of "default_value"
  model="7B"
fi
./build_linux/bin/main -m ./models/Alpaca/$model/ggml-model-q4_0.bin --color -f ./prompts/alpaca_cn.txt -ins -b 256 --top_k 10000 --temp 0.2 --repeat_penalty 1 --keep -1
./build/bin/main.exe -m ./models/Alpaca/$model/ggml-model-q4_0.bin --color -f ./prompts/alpaca_cn.txt -ins -b 256 --top_k 10000 --temp 0.2 --repeat_penalty 1 --keep -1