
#include "matrix.h"

Matrix matrix(30,1);
Matrix matrixSum(30,30);
Matrix transpose(1,30);
Matrix output1(30,1);

Matrix::Matrix(int mm, int nn){
    data = new int[mm*nn];
    n = nn;
    m = mm;
    for(int i = 0;i< mm*nn;i++)
        *(data + i) = 0;

}

Matrix::~Matrix(){}

int Matrix::getRow(){
    return m;
}

int Matrix::getColum(){
    return n;
}
int Matrix::getXY(int x, int y){

    return data[x*n+y];
}
void Matrix::setXY(int x, int y, int da){
    data[x*n + y] = da;
}
Matrix Matrix::transpote(){
    Matrix T(this->n,this->m);
    for(int i = 0; i < m; i++){
        for(int j = 0; j < n;j++){
            T.setXY(j,i,getXY(i,j));
        }
    }
    return T;
}
Matrix Matrix::operator *(Matrix &ma){
    Matrix T(this->m,ma.n);
    for(int i = 0; i < m; i++){
        for(int j = 0;j < ma.n;j++){
            int v =0;
            for(int k = 0; k < n; k++){
                v +=(getXY(i,k)*ma.getXY(k,j));
            }
            T.setXY(i,j,v);
        }
    }
    return T;
}

Matrix Matrix::operator +(Matrix &ma){
    Matrix T(this->m ,this->n);
    for(int i = 0;i < m;i++){
        for(int j = 0; j < n; j++)
        {
            T.setXY(i,j,getXY(i,j)+ma.getXY(i,j));
        }
    }
    return T;
}
Matrix Matrix::operator -(Matrix &ma){
    Matrix T(this->m, this->n);
    for(int i = 0;i < m;i++){
        for(int j =0; j < n;j++){
            T.setXY(i,j,getXY(i,j)-ma.getXY(i,j));
        }
    }
    return T;
}

