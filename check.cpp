#include <iostream>
#include "common/checker.h"
using namespace std;


int main (int argc, char ** argv) {
    if(argc!=3) {
        cout << "error : The number of parameters must be 2";
        return 0;
    }
    Checker checker(argv[1], argv[2]);
    checker.compare();
}