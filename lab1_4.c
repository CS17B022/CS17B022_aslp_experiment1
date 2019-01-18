int main()
{
	int a[5] = {1,2,3,4,5};
	int b[5] = {5,4,3,2,1};
	int temp; 

	for(int i=0;i<5;i++)
	{
		temp = a[i];
		a[i] = b[i];
		b[i] = temp;
	}

}
