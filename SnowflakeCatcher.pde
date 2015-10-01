Snowflake [] Storm;
void setup()
{
  //your code here
  background(0);
  size (800, 800);
  Storm = new Snowflake[100];
  for (int i = 0; i < 100; i++)
  {
    Storm[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  for (int i=0; i<100; i++)
  {
    Storm[i].erase();
    Storm[i].lookDown();
    Storm[i].move();
    Storm[i].wrap();
    Storm[i].show();
  }
}
void mouseDragged()
{
  //your code here
  stroke(120, 0, 0, 100);
  strokeWeight(5);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

class Snowflake
{
  //class member variable declarations
  int x;
  int y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*801);
    y = (int)(Math.random()*801);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    //your code here  
    if (y>=0 && y<=799 && get(x, y+4) != color(0, 0, 0))
      isMoving = false;
      else
    isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    noStroke();
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    //your code here
    if (isMoving == true)
      y++;
  }
  void wrap()
  {
    //your code here
    if (y==790)
    {
      y = 0;
      x = (int)(Math.random()*801);
    }
  }
}

