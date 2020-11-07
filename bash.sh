#!/bin/bash
# nesting for loops in bash scripting
A=("a1" "b2" "c3")
B=("one" "two")

for a in ${A[@]}; do # iterate a over A array
  for b in ${B[@]}; do # iterate b over B array
    echo "outputBash,$a,$b" >> output.csv 
  done
done
