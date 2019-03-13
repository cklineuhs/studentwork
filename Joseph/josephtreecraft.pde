void setup()
{

  size(500, 500);
  background(149, 204, 246);

  fill(84, 179, 65);
  rect(0, 400, 500, 100); //grass

  fill(179, 118, 65);
  rect(225, 100, 40, 300); //trunk
}

void draw()
{
  if (mousePressed && (mouseButton == LEFT) && mouseX>50 && mouseX<400 && mouseY>50 && mouseY<250) //leaves,drawing
  {
    //stroke(0, 0, 0);

/*
Everything above this is perfect.
*/

    fill(189, 238, 183);  
    rect(mouseX, mouseY, random(5, 40), random(5, 40));
    fill(84, 179, 65);
    rect(0, 400, 500, 100); //grass
    //stroke(0, 0, 0);
    //fill(84, 179, 65);
  }
  
/*
In the treecraft project it asks for randomized colored leaves.  The fill function you are using for the leaves above is a set value
rather than random.  Since fill() uses R, G, B as it's parameters, you'd want to use three random() functions inside fill().

The project also asked for the leaves to be randomized around the mouse cursor, not always directly on it.  Currently you are drawing
only at the exact mouseX and mouseY locations you mouse is at.  Using rect(mouseX + random(-number, number)... would allow you to
randomize locations to the left and right for x or above and below for y.

Also, you can't just redraw the grass each time.  The grass should only be drawn in setup().
*/
  
  else if (mousePressed && (mouseButton == RIGHT) && mouseY<400) //eraser376
  {
    noStroke();
    fill(149, 204, 246);
    ellipse(mouseX, mouseY, 50, 50);
    stroke(0,0,0);
    fill(84, 179, 65);
    rect(0, 400, 500, 100); //grass
  }
}
