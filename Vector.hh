#ifndef Vector_hh
#define Vector_hh 1
#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

class Matrix;
class Vector
{
	public:
		Vector(int dim)
		{
			fVector.assign(dim,0);
		};
		virtual ~Vector() {};
		void setElement(int index, double value)
		{
			fVector[index]=value;
		};
		double getElement(int index)
		{
			return fVector[index];
		};
		vector<double> getVector()
		{
			return fVector;
		};
		vector<double> getL2NormVec()
		{
			int N = fVector.size();
			double temSum=0;
			for(int i=0; i<N; ++i)
			{
				double temvalue = pow(fVector.at(i),2);
				temSum = temSum + temvalue;
			}
			temSum = sqrt(temSum);
			for(int i=0; i<N; ++i)
			{
				fVector.at(i) = fVector.at(i) / temSum;
			}
			return fVector;
		};
	private:
		vector<double> fVector;
};
#endif
