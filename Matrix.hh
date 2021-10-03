#ifndef Matrix_hh
#define Matrix_hh 1

#include <iostream>
#include <vector>
using namespace std;

class Matrix
{
	public:
		Matrix(const int n, const int N)
		{
			fRowMat.assign(n,0);
			for(int i=0; i<n; ++i)
			{
				fMatrix.push_back(fRowMat);
			}
		};
		virtual ~Matrix() {};
		void setElement(int row, int col, double value)
		{
			fMatrix[row][col] = value;
		};
		double getElement(int row, int col)
		{
			return fMatrix[row][col];
		};
		int getRowDim()
		{
			int row = fMatrix.size();
			return row;
		};
		int getColDim()
		{
			int col = fMatrix.at(0).size();
			return col;
		};
		vector<vector<double>> getMatrix()
		{
			return fMatrix;
		};
	private:
		vector<vector<double>> fMatrix;
		vector<double> fRowMat;
};
#endif
