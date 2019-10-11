#define N 4

void multiply(int mat1[][N],  
              int mat2[][N],  
              int res[][N]) 
{ 
    int i, j, k; 
    for (i = 0; i < N; i++) 
    { 
        for (j = 0; j < N; j++) 
        { 
            res[i][j] = 0; 
            for (k = 0; k < N; k++) 
                res[i][j] += mat1[i][k] *  
                             mat2[k][j]; 
        } 
    } 
} 


void multiply_while(int mat1[3][4], int mat2[4][3], int res[3][3])
{
    int i, j, k;
    
    i=0;
    j=0;
    k=0;

    while(i<3)
    {
        j = 0;

        while(j<3)
        {
            res[i][j] = 0;

            k = 0;

            while(k<4)
            {

                res[i][j] += mat1[i][k] * mat2[k][j];
                
                k++;
            }

            j++;
        }
        i++;
    }



}
