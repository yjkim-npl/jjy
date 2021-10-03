#include "Matrix.hh"
#include "Vector.hh"

#include <vector>
#include <fstream>
#include <iostream>
#include <string>
using namespace std;
//---------------------------------------------------
Vector* product(Matrix* mat, Vector* vec, int irow, int frow)
{
	int N = mat -> getRowDim();
	Vector* outvec = new Vector(N);
	for(int i=irow; i<frow; ++i) // Row
	{
		double temSum=0.;
		for(int j=0; j<N; ++j) // Coloum
		{
			vector<double> temvec = mat -> getMatrix().at(i);
			double value = temvec[j] * vec -> getElement(j) ;
			temSum = temSum + value;
			cout << Form("Processing %dth event",j) << endl;
			cout << temvec[j] << " * " << vec-> getElement(j) << " = " << value << endl;
		}
		outvec -> setElement(i, temSum);
	}
	return outvec;
}
//---------------------------------------------------
int hw1(int irow=0, int frow=7)
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
		vec -> setElement(nthvec, vecvalue);
	}
//	delete vec;
	int NRowofMat;
	int NColofMat;
	int NnonZero;
	int row, col;
	double matvalue;
	matfile >> NRowofMat >> NColofMat >> NnonZero;
	Matrix* mat = new Matrix(NRowofMat,0);
	while(matfile >> row >> col >> matvalue)
	{
		mat -> setElement(row,col,matvalue);
	}
	matfile.close();
	vecfile.close();

// calculation (Y=AX & |Y|	
//	Vector* Y = product(mat,vec,irow,frow);

//	ofstream outvecfile;
//	outvecfile.open("VectorY.txt");
//
//	vector<double> outvec = Y -> getVector();
//	cout << outvec.size() << endl;
//	return 0;
//	for(int i=0; i<outvec.size(); ++i)
//	{
//		outvecfile << outvec.at(i) << endl;
//	}
//	delete mat;
//	delete vec;
//	delete Y;
//	outvecfile.close();
//	vecfile.close();
//	matfile.close();
	return 0;
}
