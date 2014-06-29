class Point 
{
  float maxSpeed = 1;
  float minSpeed = -1;
  float wallD = 5;
  float targetX;
  float targetY;
  float distance;
  float thresh = 90;
  float speedX;
  float speedY;
  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  int id;
  Point[] others;
  
  Point(float xin, float yin, float speedXin, float speedYin, float din, int idin, Point[] oin) 
  {
    x = xin;
    y = yin;
    speedX = speedXin;
    speedY = speedYin;
    diameter = thresh;
    id = idin;
    others = oin;
  }
  
  void near() 
    {
      for (int i = id + 1; i < numPoints; i++) 
      {
        float dx = others[i].x - x;
        float dy = others[i].y - y;
        distance = sqrt(dx*dx + dy*dy);
        float minDist = others[i].diameter/2 + diameter/2;
        float angle = atan2(dy, dx);
        targetX = x + cos(angle) * minDist;
        targetY = y + sin(angle) * minDist;
        if(distance < thresh)
       {
         line(x, y, others[i].x, others[i].y);
         stroke(250, 55, 0);
       }
      }
    }
    
    void move() 
    {
     // ellipse(x, y, 2, 2);
      /*
      speedX = speedX + random(-.1, .1);
      speedY = speedY + random(-.1, .1);
      if (speedX > maxSpeed)
      {
        speedX = 0;
      }
      
      if (speedY > maxSpeed)
      {
        speedY = 0;
      }
      
      if (speedX < minSpeed)
      {
        speedX = 0;
      }
      
      if (speedY < minSpeed)
      {
        speedY = 0;
      }
      */
      
      x += speedX;
      y += speedY;
      
      if (x > width) {
      x = 0;
       
    }
    else if (x  < 0) {
      x = width;
      
    }
    if (y > height) {
      y = 0;
       
    } 
    else if (y < 0) {
      y = height;
      
    }
      
    }
    
    
}
