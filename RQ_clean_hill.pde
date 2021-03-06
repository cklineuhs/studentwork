```processing

void finish()
  {
    while (!isOnB())                                //Here you are checking if you are on B.  If not, do the code below.
    {
      while (frontIsClear() && onBeeper())          //Am I on a beeper AND is the space in front of me clear?
      {
      pickBeeper();                                 //If true, I'm going to pick up beepers until either my front is not clear
      }                                             // or until I am no longer on a beeper.
      
      if (frontIsClear() && !onBeeper())            // Now, is my front clear AND I'm NOT on a beeper?
      {
      move();                                       //Move once if true, then skip both else if statements below
      }
      
      else if (!frontIsClear() && facingWest())     //Was my front not clear AND am I facing west AND did I not do 
      {                                             //the if statement above?
        turnLeft();                                 //Turn left, move, turn left again, and skip the below else if statement. 
        move();
        turnLeft();
      }
      else if (!frontIsClear() && facingEast())     //Is my front not clear AND am I facing east AND did I not do either
      {                                             // if statement above?
        turnRight();                                //Turn right, move, turn right.
        move();
        turnRight();
      }
    }                                               //End of while loop.  Am I still not on B?  If so, go back to the top
  }                                                 //of the loop.  If I am on B, the method finishes.

```
