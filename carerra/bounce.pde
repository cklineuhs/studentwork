float xPos =0;											// x position of what?  You named the yellow one, why not this one?
float yPos = 0;											// Also, the y position, speeds, and bounce.
int ballSize = 33;
float xSpeed;
float ySpeed;
int numBounce = 0;

float xPosYellow =0;
float yPosYellow = 0;
float xSpeedYellow;
float ySpeedYellow;
int numBounceYellow = 0;
int timer = 0;											// The timer isn't needed, take it out of the project

void setup()
{
	size(700, 700);
	xPos=width/2;
	yPos=height/2;
	xPosYellow=width/2;
	yPosYellow = height;								// Here's a huge issue.  Yellow spawns outside of a bounce range.
	xSpeed=random(-2, 2);
	ySpeed=random(-2, 2);
	xSpeedYellow=random(-2, 2);
	ySpeedYellow=random(-2, 2);
}
void draw()
{
	background(189, 186, 222);
	fill(84, 237, 233);
	ellipse(xPos, yPos, ballSize, ballSize);			// For code clarity, if you're drawing two animated shapes, you want them both
														// drawn together.
														
	if (numBounce > 24 && numBounceYellow < 24)			// If you want it to run only while this is true, why not do
	{													// an OR comparison to see if one of their bounce counts is 25.  If not,
		xSpeed= 0;										// run the bounce commands. If one is, check which and display the win.
		ySpeed= 0;
		xPos=width/2 - 50;
		yPos=height/2;
		if (timer <= 0)
		{
		  println("Turquoise for the win");
		}
		timer++;
		if (timer >= 60)
		{
		  timer=0;
		}
	} 
	else if (numBounce >= 25 && numBounceYellow >= 25)
	{
		xSpeed= 0;
		ySpeed= 0;
		xPos=width/2 - 50;
		yPos=height/2;
	} 
	else if (xPos > width - 17)											// Don't use 17.  You want to use ballSize/2 (like the
	{																	// instructions say), because what if in a bigger project
		xSpeed = -xSpeed;												// you change the ball size?  Then, you would need to go
		numBounce++;													// and find every use of 17...
		println("Turquois has bounced " + numBounce + " times");
		xSpeed= xSpeed * 1.2;
		ySpeed= ySpeed * 1.2;											// Only change the speed of the direction it bounced.
																		// If it bounced on the left or right, only change xSpeed
		
		xPos= xPos + xSpeed;											// Also, don't mess with the positions here either.  You only
		yPos= yPos + ySpeed;											// want that to be changed once, at the top
	} 
	else if (yPos > height - 17)
	{
		ySpeed = -ySpeed;
		numBounce++;
		println("Turquois has bounced " + numBounce + " times");
		xSpeed= xSpeed * 1.2;
		ySpeed= ySpeed * 1.2;
		xPos= xPos + xSpeed;
		yPos= yPos + ySpeed;
	} 
	else if (xPos < 20)
	{
		xSpeed = -xSpeed;
		numBounce++;
		println("Turquois has bounced " + numBounce + " times");
		xSpeed= xSpeed * 1.2;
		ySpeed= ySpeed * 1.2;
		xPos= xPos + xSpeed;
		yPos= yPos + ySpeed;
	} 
	else if (yPos < 20)
	{
		ySpeed = -ySpeed;
		numBounce++;
		println("Turquois has bounced " + numBounce + " times");
		xSpeed= xSpeed * 1.2;
		ySpeed= ySpeed * 1.2;
		xPos= xPos + xSpeed;
		yPos= yPos + ySpeed;
	} 
	else																// Get rid of this else entirely and put this movement change
	{																	// above your boundary checks.
		xPos= xPos + xSpeed;
		yPos= yPos + ySpeed;
	}
	fill(255, 244, 18);
	ellipse(xPosYellow, yPosYellow, ballSize, ballSize);
	if (numBounceYellow >= 25 && numBounce <= 25)
	{
		xSpeedYellow= 0;
		ySpeedYellow= 0;
		xPosYellow=width/2 + 50;
		yPosYellow=height/2;
		if (timer <= 0)
		{
			println("Yellow for the win");
		}
		timer++;
		if (timer >= 120)
		{
			timer=0;
		}
	}
	if (numBounceYellow > 24 && numBounce > 24)
	{
		xSpeedYellow= 0;
		ySpeedYellow= 0;
		xPosYellow=width/2 + 50;
		yPosYellow=height/2;
	} 
	else if (xPosYellow > width - 17)
	{
		xSpeedYellow = -xSpeedYellow;
		numBounceYellow++;
		println( "Yellow has bounced " + numBounceYellow + " times");
		xSpeedYellow= xSpeedYellow * 1.2;
		ySpeedYellow= ySpeedYellow * 1.2;
		xPosYellow= xPosYellow + xSpeedYellow;
		yPosYellow= yPosYellow + ySpeedYellow;
	} 
	else if (yPosYellow > height - 17)
	{
		ySpeedYellow = -ySpeedYellow;
		numBounceYellow++;
		println("Yellow has bounced " + numBounceYellow + " times");
		xSpeedYellow= xSpeedYellow * 1.2;
		ySpeedYellow= ySpeedYellow * 1.2;
		xPosYellow= xPosYellow + xSpeedYellow;
		yPosYellow= yPosYellow + ySpeedYellow;
	} 
	else if (xPosYellow < 20)
	{
		xSpeedYellow = -xSpeedYellow;
		numBounceYellow++;
		println("Yellow has bounced " + numBounceYellow + " times");
		xSpeedYellow= xSpeedYellow * 1.2;
		ySpeedYellow= ySpeedYellow * 1.2;
		xPosYellow= xPosYellow + xSpeedYellow;
		yPosYellow= yPosYellow + ySpeedYellow;
	} 
	else if (yPosYellow < 20)
	{
		ySpeedYellow = -ySpeedYellow;
		numBounceYellow++;
		println("Yellow has bounced " + numBounceYellow + " times");
		xSpeedYellow= xSpeedYellow * 1.2;
		ySpeedYellow= ySpeedYellow * 1.2;
		xPosYellow= xPosYellow + xSpeedYellow;
		yPosYellow= yPosYellow + ySpeedYellow;
	} 
	else
	{
		xPosYellow= xPosYellow + xSpeedYellow;
		yPosYellow= yPosYellow + ySpeedYellow;
	}
}
