#include <iostream>
#include "list.h"
#include <vector>
#include <list>
using namespace std;
int main(int argc, char ** argv)
{   
    //List Useage
    // constructors used in the same order as described above:
    std::list<int> first;                                // empty list of ints
    std::list<int> second (4,100);                       // four ints with value 100
    std::list<int> third (second.begin(),second.end());  // iterating through second
    std::list<int> fourth (third);                       // a copy of third

    // the iterator constructor can also be used to construct from arrays:
    int myints[] = {16,2,77,29};
    cout<<sizeof(myints)<<endl;
    std::list<int> fifth (myints, myints + sizeof(myints) / sizeof(int) );
    
    cout<<"the contents of the third list are: ";
    for(list<int>::iterator it = third.begin(); it!= third.end();it++)
    {
        cout<<*it<< ' ';
    }
    cout<<endl; 
    std::cout << "The contents of fifth are: ";
    for (std::list<int>::iterator it = fifth.begin(); it != fifth.end(); it++)
      std::cout << *it << ' ';
    std::cout << '\n';

    cout<<"The size of the fifth are: "<<fifth.size()<<endl;

    cout<<"The empty property of fifth is "<<fifth.empty()<<endl;

    fourth.clear();
    cout<<"The empry property of the fourth is "<<fourth.empty()<<endl;
    
    //push back
    cout<<"Back of the fifth is "<<fifth.back()<<endl;
    cout<<"Front of the fifth is "<<fifth.front()<<endl;

    //iterator
    std::list<int> mylist;
    std::list<int>::iterator it;

    // set some initial values:
    for (int i=1; i<=5; ++i) mylist.push_back(i); // 1 2 3 4 5

    it = mylist.begin();
    ++it;       // it points now to number 2           ^

    mylist.insert (it,10);                        // 1 10 2 3 4 5

    // "it" still points to number 2                      ^
    mylist.insert (it,2,20);                      // 1 10 20 20 2 3 4 5

    --it;       // it points now to the second 20            ^

    std::vector<int> myvector (2,30);
    mylist.insert (it,myvector.begin(),myvector.end());
                                                  // 1 10 20 30 30 20 2 3 4 5
                                                  //               ^
    std::cout << "mylist contains:";
    for (it=mylist.begin(); it!=mylist.end(); ++it)
      std::cout << ' ' << *it;
    std::cout << '\n';

    //Vector 
    std::vector<int> firstV;                                // empty vector of ints
    std::vector<int> secondV (4,100);                       // four ints with value 100
    std::vector<int> thirdV (second.begin(),second.end());  // iterating through second
    std::vector<int> fourthV (thirdV);                       // a copy of third
    int myownvector[] = {16,2,77,29};
    std::vector<int> fifthV(myownvector, myownvector + sizeof(myvector)/sizeof(int));
    std::cout << "The contents of fifth vector are: ";
    for (std::vector<int>::iterator it = fifthV.begin(); it != fifthV.end(); it++)
      std::cout << *it << ' ';
    std::cout << '\n';
    cout<<"The Capacity of the fifth vector is "<<fifthV.capacity()<<endl;
    fifthV.reserve(100);
    cout<<"The Capacity of the fifth vector is "<<fifthV.capacity()<<endl;
    cout<<"The size of the fifth vector is "<<fifthV.size()<<endl;
    cout<<"The contents of the fifth vector is "; // boundary check
    for(unsigned long i = 0; i < fifthV.size();i++)
    {
            cout<<fifthV.at(i)<<' ';
    }
    cout<<endl;

    cout<<"The contents of the fifth vector is ";// no boundary check
    for(unsigned long i = 0; i < fifthV.size();i++)
    {
            cout<<fifthV[i]<<' ';
    }
    cout<<endl;
    
    Vector<int> A;
    for(int i = 0;i<3;i++)
    {
            A.push_back(i);
    } 
    Vector<int> B = A;
    B = A;
    double C[4]{1,2,3,4};
    for(auto a : C)
    {
            cout<<a<<endl;
    } 
}
