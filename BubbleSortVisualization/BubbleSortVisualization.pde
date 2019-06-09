

  int[] num = new int[1440];
  int rep = 0;



void setup()
{
  size(1440, 900);
  noSmooth();
  
  for(int i = 0; i < width; i++)
  {
    num[i] = int(random(900));
  }
  
  stroke(255);
}


void draw()
{
  background(10, 10, 10);
  
  for(int i = 0; i < width; i++)
  {
    line(i, height-num[i], i, height);
  }
  if(rep<width)
  {
    bubbleSort(num, rep);
    rep++;
  }
}

void bubbleSort(int arr[], int rep)
{
  int n = arr.length;
    for(int j = 0; j < n-rep-1; j++)
    {
      if(arr[j] > arr[j+1])
      {
        int temp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = temp;
      }
  }
}
