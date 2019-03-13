String story;
int timer;
boolean leftMousePressed = false;

void setup()
{
  size(1000, 200);
  background(0);
  getAdjective();
  getJob();
  getVerb();
  getObject();
  getPlace();
  setStory();
  tellStory();
}

void draw()
{
  if(leftMousePressed)
  {
   timer++; 
  }
  
  if(timer == 1)
  {
  background(0);
  getAdjective();
  getJob();
  getVerb();
  getObject();
  getPlace();
  setStory();
  tellStory();
  }
}

//
void mousePressed()
{
  leftMousePressed = true;
}

void mouseReleased()
{
 leftMousePressed = false;
 timer = 0;
}



void setStory()
{
  story = "The " + getAdjective() + getJob() + getVerb() + "\n" + "the " + getObject() + "in the " + getPlace() + ".";
}

void tellStory()
{
  textSize(50);
  text(story, 20, 50);
}

String getAdjective()
{
  int roll = (int)random(1, 5.1);
  
  if(roll == 1)
  {
    return "ambitious ";
  }
  if(roll == 2)
  {
    return "considerate ";
  }
  if(roll == 3)
  {
    return "introverted ";
  }
  if(roll == 4)
  {
    return "sympathetic ";
  }
  if(roll == 5)
  {
    return "impulsive ";
  }
  //gives an error otherwise
  else
  {
   return null; 
  }
}

String getJob()
{
  int roll = (int)random(1, 5.1);
  
  if(roll == 1)
  {
    return "judge ";
  }
  if(roll == 2)
  {
    return "lawyer ";
  }
  if(roll == 3)
  {
    return "salesman ";
  }
  if(roll == 4)
  {
    return "clerk ";
  }
  if(roll == 5)
  {
    return "doctor ";
  }
  //gives an error otherwise
  else
  {
   return null; 
  }
}

String getVerb()
{
  int roll = (int) random(1, 5.1);
  
  if(roll == 1)
  {
    return "shortened ";
  }
  if(roll == 2)
  {
    return "destroyed ";
  }
  if(roll == 3)
  {
    return "threw ";
  }
  if(roll == 4)
  {
    return "kicked ";
  }
  if(roll == 5)
  {
    return "drilled ";
  }
  //gives an error otherwise
  else
  {
   return null; 
  }
}

String getObject()
{
  int roll = (int)random(1, 5.1);
  
  if(roll == 1)
  {
    return "book ";
  }
  if(roll == 2)
  {
    return "tooth ";
  }
  if(roll == 3)
  {
    return "computer ";
  }
  if(roll == 4)
  {
    return "house ";
  }
  if(roll == 5)
  {
    return "desk ";
  }
  //gives an error otherwise
  else
  {
   return null; 
  }
}

String getPlace()
{
  int roll = (int)random(1, 5.1);
  
  if(roll == 1)
  {
    return "hole";
  }
  if(roll == 2)
  {
    return "ceiling";
  }
  if(roll == 3)
  {
    return "house";
  }
  if(roll == 4)
  {
    return "road";
  }
  if(roll == 5)
  {
    return "store";
  }
  //gives an error otherwise
  else
  {
   return null; 
  }
}
