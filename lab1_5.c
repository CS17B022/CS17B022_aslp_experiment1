int main()
{
	int arr[10] = {3,6,7,5,8,9,1,2,4,0};
	int min,max;
	min = arr[0];
	max = arr[0];
	
	for(int i=0;i<10;i++)
	{
		if(arr[i]<min)
			min = arr[i];
		
		if(arr[i]>max)
			max = arr[i];
	}

}
