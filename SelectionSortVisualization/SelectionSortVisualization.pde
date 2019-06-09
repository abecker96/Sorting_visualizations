

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
    selectionSort(num, rep);
    rep++;
  }
}

void selectionSort(int num[], int rep)
{
  int lowest = num[rep];
  int lowestAt = rep;
  int temp;
  for(int i = rep + 1; i < width; i++)
  {
    if(num[i] < lowest)
    {
      lowest = num[i];
      lowestAt = i;
    }
  }
  temp = num[rep];
  num[rep] = lowest;
  num[lowestAt] = temp;
}
