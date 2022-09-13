#include <iostream>
#include <random>
#include <ctime>

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
		for(int turn=0; turn<12; turn++)
		{
			int r_count = 0;
			int reroll[5];	fill_n(reroll,5,0);
			int* d;
			for(int dice=0; dice<5; dice++)
			{
				d[dice] = rand()%6+1;
				cout << dice+1 << ". "<<d[dice] << " ";
			}
			cout << endl;
			while (r_count < 3)
			{
				cout << "Which dice do you want to reroll?( 0(skip) / 1(reroll) )" << endl;
				cout << r_count << " / 2 chances used" << endl; 
				cin >> reroll[0] >> reroll[1] >> reroll[2] >> reroll[3] >> reroll[4];
				for(int dice=0; dice<5; dice++)
				{
					if(reroll[dice] == 0){
						d[dice] = rand()%6+1;
						cout << dice+1 << ". "<<d[dice] << " ";
					}else{
						cout << dice+1 << ". "<<d[dice] << " ";
					}
				}
				r_count++;
			}
			int pos;
			cout << "which position you want to insert point?" << endl;
			cout << "ones(11) twos(12) threes(13) fours(14) fives(15) sixes(16)" << endl;
			cout << "choice(21) foK(22) s_Str(23) l_Str(24) FH(25) Yatch(26)" << endl;
			cin >> pos;
			int point = (int)board.calc(d,pos);
			board.insert(point,pos);
		}
	}
	return 0;
}
