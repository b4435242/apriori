#!/bin/bash

for i in {1..5}
do
    echo "support: $i"
    ./apriori $i input.txt answer.txt
    ./apriori_omp $i input.txt output.txt
    ./check output.txt answer.txt
done