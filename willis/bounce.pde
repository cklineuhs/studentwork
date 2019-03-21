void setup()
{
  xSpeed = 1;
  ySpeed = 2;
  xPos = 10;
  yPos = 10;
  size(500,500);
}

float bounceNum = 0;
float xSpeed = 1;
float ySpeed = 1;
float xPos = 10;
float yPos = 10;
int ballSize = 20;
void draw()
{
  background(167,106,255);
  ellipse(xPos,yPos,ballSize,ballSize);
  
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  
  if(xPos>width-10)
  {
    xSpeed--;
    bounceNum = bounceNum + .5;
    if(bounceNum == (int)bounceNum)
    {
    println("The Ball Has Bounced " + bounceNum + " Time(s)");
    }
    //accelerator
    if(xSpeed < 1)
    {
      xSpeed = xSpeed - 1;
    }
  }
  
  if(yPos>height-13)
  {
    ySpeed--;
    bounceNum = bounceNum + .25;
    if(bounceNum == (int)bounceNum)
    {
    println("The Ball Has Bounced " + bounceNum + " Time(s)");
    }
    //accelerator
    if(ySpeed<2)
    {
      ySpeed = ySpeed - 1;
    }
  }
  
  if(xPos<ballSize-10)
  {
    xSpeed++;
    bounceNum = bounceNum + .5;
    if(bounceNum == (int)bounceNum)
    {
    println("The Ball Has Bounced " + bounceNum + " Time(s)");
    }
    //accelerator
    if(xSpeed>1)
    {
      xSpeed = xSpeed + 1;
    }
  }
  
  if(yPos<ballSize-10)
  {
    ySpeed++;
    bounceNum = bounceNum + .25;
    if(bounceNum == (int)bounceNum)
    {
    println("The Ball Has Bounced " + bounceNum + " Time(s)");
    }
    //accelerator
    if(ySpeed>2)
    {
      ySpeed= ySpeed + 1;
    }
  }
}
