#include "Matrix.hh"
#include "Vector.hh"

#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <cmath>
using namespace std;
//---------------------------------------------------
Vector* product(Matrix* mat, Vector* vec)
{
	int N = mat -> getRowDim();
	Vector* outvec = new Vector(N);
	for(int i=0; i<N; ++i) // Row
	{
		double temSum=0.;
		for(int j=0; j<N; ++j) // Coloum
		{
			vector<double> temvec = mat -> getMatrix().at(i);
			double value = temvec[j] * vec -> getElement(j) ;
			temSum = temSum + value;
		}
		outvec -> setElement(i, temSum);
	}
	return outvec;
}
//---------------------------------------------------
int main()
{
	ifstream matfile;
	matfile.open("temMat.txt");
	ifstream vecfile;
	vecfile.open("temVec.txt");

	int Nofvec;
	int nthvec;
	double vecvalue;
	vecfile >> Nofvec;
	Vector* vec = new Vector(Nofvec);
	while(vecfile >> nthvec >> vecvalue)
	{
		vec -> setElement(nthvec-1, vecvalue);
	}
	int NRowofMat;
	int NColofMat;
	int NnonZero;
	int row, col;
	double matvalue;
	matfile >> NRowofMat >> NColofMat >> NnonZero;
	Matrix* mat = new Matrix(NRowofMat,0);
	while(matfile >> row >> col >> matvalue)
	{
		mat -> setElement(row-1,col-1,matvalue);
	}
	matfile.close();
	vecfile.close();

	outvecfile.open("temVecY.txt");
	Vector* Y = product(mat,vec);
	vector<double> outvec = Y -> getVector();

	outvecfile << "un normalized" << endl;
	for(int i=0; i<outvec.size(); ++i)
	{
		outvecfile << outvec.at(i) << endl;
		if(i==outvec.size()) outvecfile << endl;
	}
	Y -> getL2NormVec();
	outvec = Y -> getVector();
	outvecfile << "normalized" << endl;
	for(int i=0; i<outvec.size(); ++i)
	{
		outvecfile << outvec.at(i) << endl;
	}
	outvecfile.close();
	vecfile.close();
	matfile.close();
	return 0;
}
