#include "../include/board.h"
#include <algorithm>
#include <iostream>

void Board::init()
{
	std::fill_n(up,6,0);
	std::fill_n(down,6,0);
}

int Board::calc(int* d, int pos)
{
	enum {zero,one,two,three,four,five,six};
	// up[] : 11(1),12(2),13(3),14(4),15(5),16(6)
	// down[] : 21(choice),22(f_kind),23(s_straight),24(l_straight),25(FH),26(yatch)
	int sum = 0;
	if(pos/10 == 1)
	{
		if(pos%10 == one){
			for(int a=0; a<5; a++){
				if(d[a] == one) sum += d[a];
		}}
		if(pos%10 == two){
			for(int a=0; a<5; a++){
				if(d[a] == two) sum += d[a];
		}}
		if(pos%10 == three){
			for(int a=0; a<5; a++){
				if(d[a] == three) sum += d[a];
		}}
		if(pos%10 == four){
			for(int a=0; a<5; a++){
				if(d[a] == four) sum += d[a];
		}}
		if(pos%10 == five){
			for(int a=0; a<5; a++){
				if(d[a] == five) sum += d[a];
		}}
		if(pos%10 == six){
			for(int a=0; a<5; a++){
				if(d[a] == six) sum += d[a];
		}}
	}
	if(pos/10 == 2)
	{
		if(pos%10 == 1){
			for(int a=0; a<5; a++){
				sum+= d[a];
		}}
		if(pos%10 == 2){
			int count = 1;
			int sum_t = d[0];
			int eyes = d[0];
			for(int a=1; a<5; a++){
				if(d[a] == eyes) {count++;}
				else if(d[a] != eyes) {eyes = d[a];}
				sum_t += d[a];
			}
			if(count >=4) sum = sum_t;
//			else {std::cout << "It is not four of a kinds "<< std::endl;}
		}
		if(pos%10 == 3){
			int count = 1;
			std::sort(d,d+5);
			int eyes = 1;
			for(int a=1; a<5; a++){
				if(d[a] == eyes+a) count++;
//				else std::cout << "It is not small straights "<< std::endl;
			}
			if(count >=5) sum = 30;
		}
		if(pos%10 == 4){
			int count = 1;
			std::sort(d,d+5);
			int eyes = 2;
			for(int a=1; a<5; a++){
				if(d[a] == eyes+a) count++;
//				else std::cout << "It is not large straights "<< std::endl;
			}
			if(count >=5) sum = 30;
		}
		if(pos%10 == 5){
			int eyes[2];	std::fill_n(eyes,2,0);
			int count[2];	std::fill_n(count,2,0);
			eyes[0] = d[0]; count[0] = 1;
			for(int b=0; b<2; b++){
				for(int a=1; a<5; a++){
					if(d[a] == eyes[b]) count[b] += 1;
					else if(d[a] != eyes[b]) eyes[1] = d[a];
			}}
			if( count[0] + count[1] == 5) sum =30;
		}
		if(pos%10 == 6){
			int eyes = d[0];
			int count = 1;
			for(int a=0; a<5; a++){
				if(d[a] == eyes) count++;
			}
			if(count == 5) sum = 50;
		}
	}
	return sum;
}

void Board::insert(int point, int pos)
{
	int pos_d = pos%10;
	int pos_b = pos/10;
	if(pos_b == 1) up[pos_d] = point;
	if(pos_b == 2) down[pos_d] = point;
}

void Board::print()
{
	for(int a=0; a<6; a++){
		std::cout << up[a] << std::endl;
	}
	for(int a=0; a<6; a++){
		std::cout << down[a] << std::endl;
	}
}
