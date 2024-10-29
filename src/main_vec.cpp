#include <iostream>
#include <ctime>
#include <chrono>
#include <omp.h>

void operations(int **a,
                int **b,
                size_t row, size_t col,
                int **sum, int **diff)
{
#pragma omp parallel for
    for (size_t i = 0; i < row; ++i)
    {
#pragma omp parallel for
        for (size_t j = 0; j < col; ++j)
        {
            a[i][j] = a[i][j] + b[i][j];
            a[i][j] = a[i][j] - b[i][j];
        }
    }
}

int **GenerateMatrix(size_t row, size_t col)
{
    int **matrix = new int *[row];
    for (size_t i = 0; i < row; ++i)
    {
        matrix[i] = new int[col];
        for (size_t j = 0; j < col; ++j)
            matrix[i][j] = ((int)(rand() % 101 - 50)) / ((int)(rand() % 50 + 1));
    }
    return matrix;
}

int **CreateMatrix(size_t row, size_t col)
{
    int **matrix = new int *[row];
    for (size_t i = 0; i < row; ++i)
    {
        matrix[i] = new int[col];
        for (size_t j = 0; j < col; ++j)
            matrix[i][j] = 0;
    }
    return matrix;
}

void DeleteMatrix(int **matrix, size_t row)
{
    for (size_t i = 0; i < row; ++i)
        delete[] matrix[i];
    delete[] matrix;
}

int main()
{
    srand((size_t)time(NULL));
    std::chrono::steady_clock::time_point start, end;
    size_t row = 4000, col = 5000;
    int **M1 = GenerateMatrix(row, col);
    int **M2 = GenerateMatrix(row, col);
    int **sum = CreateMatrix(row, col);
    int **diff = CreateMatrix(row, col);
    start = std::chrono::steady_clock::now();
    operations(M1, M2, row, col, sum, diff);
    end = std::chrono::steady_clock::now();
    std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count() << std::endl;
    DeleteMatrix(M1, row);
    DeleteMatrix(M2, row);
    DeleteMatrix(sum, row);
    DeleteMatrix(diff, row);
    return 0;
}