#include <stdio.h>
class Board
{
	private:
		int up[7];//ones, twos, threes, fours, fives, sixes, bonus;
		int down[6];//choice, f_kind, s_straight, l_straight, FH, Yatch;
		bool bup[6];
		bool bdown[6];
	public:
		void init();
		int calc(int* d, int pos);
		void insert(int point, int pos);
		void bonus();
		void print();
};
		
