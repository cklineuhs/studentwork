//Create a program that has a ball move around the screen and bounce off the edges.​

//Part A:  Setup
//Draw a stationary ball in the exact center of the screen over a backdrop of any color.
//At the top of your program
//Create three variables:  
//float xPos    // the x position of the ball
//float yPos    // the y position of the ball
//int ballSize      // the size of the ball
//In setup()
//Set the size of the window
//Give xPos and yPos starting values
//Hint:  Use the variables width and height
//In draw()
//Set the background color
//Set the fill color for the ball
//Draw an ellipse at xPos, yPos that is ballSize large.
//Think:
//We put some things at the top, some things in setup, and some in draw.  Why?
//Why don't we just set the ellipse's position directly?  Why use a variable?

float xPos;
float yPos;
int ballSize;
float xSpeed;
float ySpeed;
int bounce = 0;

void setup()
{
  size(800, 800);
  xPos= width/2;
  yPos= height/2;
  ballSize = 20;
  xSpeed = random(-2, 2);
  ySpeed = random(-2, 2);
}

void draw()
{
  background(0, 0, 200);
  fill(255, 255, 255);
  ellipse(xPos, yPos, ballSize, ballSize);       //draw ball
  xPos = xPos + xSpeed;                      //animation begins
  yPos = yPos + ySpeed;

  noStroke();
  fill(185, 185, 185);
  rect(0, 0, 10, 800);           //left border
  noStroke();
  fill(185, 185, 185);
  rect(0, 0, 800, 10);           //top border
  noStroke();
  fill(185, 185, 185);
  rect(790, 0, 10, 800);         //right border
  noStroke();
  fill(185, 185, 185);
  rect(0, 790, 800, 10);         //bottom border

  if (xPos > width-20) 
  {
    xSpeed = -xSpeed;
	xSpeed--;
    bounce++;
    println("I have done" + bounce + "bounce");  //"I have done 2 bounce"  If statement for plural?
  } 
  else if (xPos < 0+ballSize)
  {
    xSpeed = -xSpeed;
	xSpeed++;
    bounce++;
    println("I have done" + bounce + "bounce");
  } 
  else if (bounce > 0)  //What is the purpose of this?  Acceleration?  When should you speed up? 
  {
    xSpeed++;
  }
  if (yPos > height-20)
  {
    ySpeed = -ySpeed;
    bounce++;
    println("I have done" + bounce + "bounce");
  } else if (yPos < 0+ballSize)
  {
    ySpeed = -ySpeed;
    bounce++;
    println("I have done" + bounce + "bounce");
  } else if (bounce > 0)
  {
    ySpeed++;
  }
}

/*
So far so good!
I assume you haven't finished your acceleration, but otherwise it looks good.
*/



//Part D: Acceleration
//Every time the ball bounces, make it go faster.
//Add a new variable that keeps track of how many times the ball bounces
//Print that value to the console each frame

//Challenge  (+10%)
//Add a second ball
//Each ball should only move as long as neither ball has reached 25 bounces.
//When a ball hits 25 bounces, output a message to the console stating which colored ball "wins."
