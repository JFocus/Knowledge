#include <iostream>
#include <stdio.h>
#include <string.h>
using namespace std;
#include <list>
int main()
{
	struct test
	{
		int a;
	};
	test hello = {10};
	test *hello1[20];
	hello1[1]->a = 10;
	
}
