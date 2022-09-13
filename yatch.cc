#include <iostream>
//#include <random>
#include <ctime>
#include <cstdlib>

#include "include/board.h"
using namespace std;

int main(int argc, char** argv)
{
	srand((int)time(NULL));
	int OPT;
	cout << "Wanna play yatch?" << endl;
	cin >> OPT;
	while(OPT != 0)
	{
		Board board;
		board.init();
		for(int turn=0; turn<20; turn++)
		{
			cout << "--------------------" << endl;
			cout << turn << "th turn" << endl;
			int r_count = 0;
			int reroll[5];	fill_n(reroll,5,0);
			int temp;
			int d[5];
			for(int a=0; a<5; a++)
			{
				d[a] = (int)rand()%6 + 1;
//				cout << " "<< d[a];// << endl;
			}
//			std::sort(d,d+5);
			cout << " " <<  d[0] << " " 
				 << d[1] << " " 
				 << d[2] << " " 
				 << d[3] << " " 
				 << d[4] << " " 
				 << endl;
			while (r_count < 4)
			{
				cout << "Which dice do you want to reroll?( 0(skip) / 1(reroll) )" << endl;
				cout << r_count << " / 4 chances used" << endl; 
				cin >> temp;
				reroll[0] = temp/10000;
				reroll[1] = (temp%10000)/1000;
				reroll[2] = (temp%1000)/100;
				reroll[3] = (temp%100)/10;
				reroll[4] = (temp%10)/1;
//				cin >> reroll[0] >> reroll[1] >> reroll[2] >> reroll[3] >> reroll[4];
				cout << endl;
				for(int dice=0; dice<5; dice++)
				{
					if(reroll[dice] == 1){
						d[dice] = rand()%6+1;
						cout << " "<< d[dice];// << endl;
					}else{
						cout << " "<< d[dice];// << endl;
					}
				}
				cout << endl;
				r_count++;
			}
			int pos;
label:
			cout << "which position you want to insert point?" << endl;
			cout << "ones(11) twos(12) threes(13) fours(14) fives(15) sixes(16)" << endl;
			cout << "choice(21) foK(22) s_Str(23) l_Str(24) FH(25) Yatch(26)" << endl;
			cin >> pos;
			if(pos<=10 && pos >=27) {cout << "insert correct pos" << endl; goto label;}
			int point = (int)board.calc(d,pos);
			board.insert(point,pos);
			board.print();
		}
	}
	return 0;
}
