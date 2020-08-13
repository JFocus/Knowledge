#include <iostream>
#include <cmath>
#include <iomanip>
#include <vector>
#include <algorithm>
#include <list>
#include <Eigen/Dense>
#include <string>
#include <thread>
using namespace std;
class WorkerThread
{
public:
    void operator()()     
    {
        for(int i = 0; i<5;i++)
        std::cout<<"Worker Thread "<<std::this_thread::get_id()<<" is Executing "<<i<<std::endl;
    }
};

int money(int * inmoney)
{
        int a;
        for(int i = 0; i <1000000;i++)
        {
              a = *inmoney  ;
        } 
        if(*inmoney!=100 )
                cout<<"wrong money"<<endl;
        return *inmoney;

}
int testMultithreadedWallet()
{
};

int main(int argc, char **argv) {
    double a;
    cout<<a<<endl;
    return 0;
}
