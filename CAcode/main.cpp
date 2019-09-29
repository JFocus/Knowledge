#include <iostream>
#include <string.h>
#include <fstream>
using namespace std;

#define length 10
const int gs2[32] = { 5, 6, 7, 8, 17, 18, 139, 140, 141, 251, 252, 254, 255, 256, 257, 258, 469, 470, 471, 472, 473, 474, 509, 512, 513, 514, 515, 516, 859, 860, 861, 862 };

void PRNCodeGenerator(int SateNum,int *CA_Code);
void ShiftRegister(int val, int * reg);
void ShiftRegister(int val, int * reg)
{
	memmove((reg + 1), reg, (length - 1) * sizeof(int));
	*reg = val;
}
void PRNCodeGenerator(int SateNum,int * CA_code)
{
	int  g1[1023], g2[1023];		//
	int save1, save2;
	int mCode1[length]={1}, mCode2[length]={1};
	int InitialPhase = gs2[SateNum - 1];

	//generate G1 code
	for (int i = 0; i<1023; i++)
	{
		g1[i] = *(mCode1 + 9);//G1序列输出
		save1 = (*(mCode1 + 2) + *(mCode1 + 9)) % 2;//产生反馈位[异或运算]
		ShiftRegister(save1, mCode1);

		g2[i] = *(mCode2 + 9);//G2序列输出，通过不同抽头输出
		save2 = (*(mCode2 + 1) + *(mCode2 + 2) + *(mCode2 + 5) + *(mCode2 + 7) + *(mCode2 + 8) + *(mCode2 + 9)) % 2;//产生反馈位
		ShiftRegister(save2, mCode2);
	}

	for (int i = 0; i < 1023; i++)
	{
			CA_code[i] = (int)(((g1[i] + g2[(i + 1023 - InitialPhase) % 1023]) % 2 - 0.5) * 2);//映射到-1，+1
	}
}

int main()
{
	int CACode[1023];
	int PRN;
	ofstream fout;
	fout.open("CACode.txt");
	if(!fout.is_open())
	{
		cout<<"could not record the data"<<endl;
		exit(EXIT_FAILURE);
	}
	cout<< "Please input the PRN of the satelite:  ";
	cin >>PRN;
	
	PRNCodeGenerator(PRN,CACode);
	for (int i = 0;i<1023;i++)
	{
		cout<<CACode[i]<<" ";
		fout<<CACode[i]<<endl;
	}
	cout<<endl;
	
}
