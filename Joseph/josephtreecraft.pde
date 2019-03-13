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
    fill(189, 238, 183);  
    rect(mouseX, mouseY, random(5, 40), random(5, 40));
    fill(84, 179, 65);
    rect(0, 400, 500, 100); //grass
    //stroke(0, 0, 0);
    //fill(84, 179, 65);
  } 
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
