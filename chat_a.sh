#!/bin/bash

# If an argument is provided, use it as the value of the variable "my_arg"
if [ $# -gt 0 ]; then
  model=$1
else
  # Otherwise, use a default value of "default_value"
  model="7B"
fi
./build/bin/main.exe -m ./models/Alpaca/$model/ggml-alpaca-7b-q4.bin --color -f ./prompts/alpaca.txt -ins -i --repeat_last_n 256 --repeat_penalty 1.178 --temp 0.7 --top_k 40 --top_p 0 --color -r "User:" --n_parts 1