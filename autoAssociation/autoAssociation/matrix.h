#ifndef MATRIX_H
#define MATRIX_H
class Matrix
{
private:
    int m;
    int n;
public:

    int *data;
    Matrix(int mm,int nn);
    ~Matrix();

    int getRow();
    int getColum();
    int getXY(int x,int y);
    void setXY(int x,int y,int data);

    Matrix transpote();
    Matrix operator+(Matrix &);
    Matrix operator-(Matrix &);
    Matrix operator*(Matrix &);

};

extern Matrix matrix;
extern Matrix matrixSum;
extern Matrix transpose;
extern Matrix output1;

#endif // MATRIX_H

