all: apriori apriori_omp check



apriori : apriori.cpp
	g++ -o -O3 apriori apriori.cpp 

apriori_omp: apriori_omp.cpp
	g++ -o -O3 apriori_omp -fopenmp apriori_omp.cpp 

check: check.cpp
	g++ -o check check.cpp 

clean: 
	rm apriori.o apriori apriori_omp check