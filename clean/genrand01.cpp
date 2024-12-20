#include <iostream>
#include <vector>
#include <random>
#include <cstdlib>
#include <ctime>
#include <algorithm>
using namespace std;
int main(int argc, char* argv[]){
        std::mt19937 rng(static_cast<unsigned int> (std::time(0)));
        std::uniform_real_distribution<double> uni(0.0,1.0);
        std::vector<double> randvec(4);
        int idx=std::atoi(argv[1]);
        for (auto& num : randvec){
                num=uni(rng);
        }
	    std::sort(randvec.begin(), randvec.end(), std::greater<double>());
        std::cout<<randvec[idx]<<std::endl;
        return 0;
}
