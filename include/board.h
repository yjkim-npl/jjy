#include <stdio.h>
class Board
{
	private:
		int up[6];//ones, twos, threes, fours, fives, sixes;
		int down[6];//choice, f_kind, s_straight, l_straight, FH, Yatch;
	public:
		void init();
		int calc(int* d, int pos);
		void insert(int point, int pos);
		void print();
};
		
