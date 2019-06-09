

  int[] num = new int[1440];
  //color[] colors = new color[1440];
  int rep = 0;



void setup()
{
  size(1440, 900);
  noSmooth();
  
  for(int i = 0; i < width; i++)
  {
    num[i] = int(random(899));
  }
  
  //color[] options = new color[6];
  //options[0] = color(255, 0, 0);
  //options[1] = color(0, 255, 0);
  //options[2] = color(0, 0, 255);
  //options[3] = color(255, 255, 0);
  //options[4] = color(0, 255, 255);
  //options[5] = color(255, 0, 255);
  //for(int i = 0; i < width; i++)
  //{
  //  colors[i] = options[floor(num[i]/150)];
  //}
  rep = 0;
  stroke(255);
}


void draw()
{
  background(10, 10, 10);
  text("Press enter to restart", 10, 30);
  
  for(int i = 0; i < width; i++)
  {
    //stroke(colors[i]);
    line(i, height-num[i], i, height);
  }
  if(rep<width)
  {
    insertionSort(num, rep);
    rep++;
  }
  if(keyPressed && key == ENTER)
  {
    setup();
  }
}

void insertionSort(int num[], int rep)
{
  int n = num.length; 
  int pivot = num[rep]; 
  //int colorPivot = colors[rep];
  int i = rep - 1; 
  while (i >= 0 && num[i] > pivot)
  { 
    num[i + 1] = num[i]; 
    //colors[i+1] = colors[i];
    i--; 
  } 
  num[i + 1] = pivot;
  //colors[i+1] = colorPivot;
}
