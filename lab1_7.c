#include<stdlib.h>

int main()
{
	int *a[3],*b[3],*c[3];
	for(int i=0;i<3;i++)
	{
		a[i] = (int*)malloc(3*sizeof(int));
		b[i] = (int*)malloc(3*sizeof(int));
		c[i] = (int*)malloc(3*sizeof(int));
	}
	
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<3;j++)
		{
			*(*(a+i)+j) = i+j;
			*(*(b+i)+j) = i-j;
		}
	}
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<3;j++)
		{
			*(*(c+i)+j) = 0;
			for(int k=0;k<3;k++)
			{
				*(*(c+i)+j) += *(*(a+i)+k) * *(*(b+k)+j);
			}
		}
	}

}
