#include <iostream>
#include <vector>
#include <random>
#include <cstdlib>
#include <ctime>
using namespace std;
int main(int argc, char* argv[]){
        std::mt19937 rng(static_cast<unsigned int> (std::time(0)));
        std::uniform_real_distribution<double> uni(0.0,0.5);
        std::vector<double> randvec(3);
        int idx=std::atoi(argv[1]);
        for (auto& num : randvec){
                num=uni(rng);
        }
        std::cout<<randvec[idx]<<std::endl;
        return 0;
}
