#!/bin/zsh

#for i in {1..5}
#do
#echo "support: $i"
t1=$(./apriori 1 transactional_T10I4D100K.csv answer.txt)
t2=$(./apriori_omp 1 transactional_T10I4D100K.csv output.txt)
#./apriori 4 transactional_T10I4D100K.csv answer.txt
#./apriori_omp 4 transactional_T10I4D100K.csv output.txt
#./apriori 1 input.txt answer.txt
#./apriori_omp 1 input.txt output.txt
./check output.txt answer.txt
echo "$t1 $t2 speedup $((t1/t2))x"
#done
