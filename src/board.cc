#include "../include/board.h"
#include <algorithm>
#include <iostream>

void Board::init()
{
	std::fill_n(up,7,0);
	std::fill_n(down,6,0);
	std::fill_n(bup,6,0);
	std::fill_n(bdown,6,0);
}

int Board::calc(int* d, int pos)
{
	enum {zero,one,two,three,four,five,six};
	// up[] : 11(1),12(2),13(3),14(4),15(5),16(6)
	// down[] : 21(choice),22(f_kind),23(s_straight),24(l_straight),25(FH),26(yatch)
	int sum = 0;
	if(pos/10 == 1)
	{
		if(pos%10 == one && bup[0] == false){
			for(int a=0; a<5; a++){
				if(d[a] == one) sum += d[a];
			}
			bup[0] = true;
		}
		if(pos%10 == two && bup[1] == false){
			for(int a=0; a<5; a++){
				if(d[a] == two) sum += d[a];
			}
			bup[1] = true;
		}
		if(pos%10 == three && bup[2] == false){
			for(int a=0; a<5; a++){
				if(d[a] == three) sum += d[a];
			}
			bup[2] = true;
		}
		if(pos%10 == four && bup[3] == false){
			for(int a=0; a<5; a++){
				if(d[a] == four) sum += d[a];
			}
			bup[3] = true;
		}
		if(pos%10 == five && bup[4] == false){
			for(int a=0; a<5; a++){
				if(d[a] == five) sum += d[a];
			}
			bup[4] = true;
		}
		if(pos%10 == six){
			for(int a=0; a<5; a++){
				if(d[a] == six) sum += d[a];
			}
		}
	}
	if(pos/10 == 2)
	{
		if(pos%10 == 1 && bdown[0] == false){
			for(int a=0; a<5; a++){
				sum+= d[a];
			}
			bdown[0] = true;
		}
		if(pos%10 == 2 && bdown[1] == false){
			int count = 1;
			std::sort(d,d+5);
			int sum_t = d[0];
			int eyes = d[0];
			for(int a=1; a<5; a++){
				if(d[a] == eyes) {count++;}
				else if(d[a] != eyes) {eyes = d[a];}
				sum_t += d[a];
			}
			if(count >=4) sum = sum_t;
//			else {std::cout << "It is not four of a kinds "<< std::endl;}
			bdown[1] = true;
		}
		if(pos%10 == 3 && bdown[2] == false){
			int count = 1;
			std::sort(d,d+5);
			int eyes = 1;
			for(int a=1; a<5; a++){
				if(d[a] == eyes+a) count++;
//				else std::cout << "It is not small straights "<< std::endl;
			}
			if(count >=4) sum = 30;
			bdown[2] = true;
		}
		if(pos%10 == 4 && bdown[3] == false){
			int count = 1;
			std::sort(d,d+5);
			int eyes = 2;
			for(int a=1; a<5; a++){
				if(d[a] == eyes+a) count++;
//				else std::cout << "It is not large straights "<< std::endl;
			}
			if(count >=5) sum = 30;
			bdown[3] = true;
		}
		if(pos%10 == 5 && bdown[4] == false){
			std::sort(d,d+5);
			int eyes[2];	std::fill_n(eyes,2,0);
			int count[2];	std::fill_n(count,2,0);
			eyes[0] = d[0]; count[0] = 1;
			for(int b=0; b<2; b++){
				for(int a=1; a<5; a++){
					if(d[a] == eyes[b]) 
					{
						count[b] += 1;
						std::cout << d[a] << " " << eyes[b] << " " << count[b] << std::endl;
					}
					else if(d[a] != eyes[b]) eyes[1] = d[a];
			}}
			if( count[0] + count[1] >= 4) sum =30;
			bdown[4] = true;
		}
		if(pos%10 == 6 && bdown[5] == false){
			int eyes = d[0];
			int count = 1;
			for(int a=1; a<5; a++){
				if(d[a] == eyes) count++;
			}
			if(count == 5) sum = 50;
			bdown[5] = true;
		}
	}
	return sum;
}

void Board::insert(int point, int pos)
{
	int pos_d = pos%10-1;
	int pos_b = pos/10;
	if(pos_b == 1) up[pos_d] = point;
	if(pos_b == 2) down[pos_d] = point;
}
void Board::bonus()
{
	int sum = 0;
	for(int a=0; a<6; a++)
	{
		sum += up[a];
	}
	if(sum >=63) up[6] = 35;
}

void Board::print()
{
	char* up_str[] = {"Ones","Twos","Threes","Fours","Fives","Sixes","Bonus"};
	char* down_str[] = {"Choice","f_Kind","s_Str","l_Str","FH","Yatch"};
	std::cout << "------------------------------" << std::endl;
	for(int a=0; a<7; a++){
		std::cout << up_str[a] << "\t"<< up[a] << std::endl;
	}
	std::cout << "------------------------------" << std::endl;
	for(int a=0; a<6; a++){
		std::cout << down_str[a] << "\t" << down[a] << std::endl;
	}
	std::cout << "------------------------------" << std::endl << std::endl;
}
