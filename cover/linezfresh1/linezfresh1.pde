
int numPoints = 100;
Point[] points = new Point[numPoints];

void setup()
{
size(1000, 1000);
for (int i = 0; i < numPoints; i++) 
  {
  points[i] = new Point(random(width), random(height), random(-.5, .5), random(-.5, .5), 0, i, points);
  //speedX = speedX + random(-.1, .1);
  //speedY = speedY + random(-.1, .1);
  }
noStroke();

}

void draw() 
  {
    background(0, 0, 0, 0);
    for (int i = 0; i < numPoints; i++)
    {
      points[i].near();
      points[i].move();
      //points[i].connect();
    }
  }
  
 
      
  
