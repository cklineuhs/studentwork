int timer;

int timeValue;
int adjValue;
int humanoidValue;
int placeValue;
int objectValue;

String time;
String adjective;
String humanoid;
String place;
String object;

String story;

String time()
{
 timeValue = (int)random(1,6);
 if(timeValue == 1)
 {
   return "daily";
 }
  if(timeValue == 2)
 {
   return "weekly";
 }
  if(timeValue == 3)
 {
   return "monthly";
 }
  if(timeValue == 4)
 {
   return "annually";
 }
  if(timeValue == 5)
 {
   return "centennially";
 }
 return "*ERROR-TIME*";
}
 
 String adjective()
{
  int adjValue = (int)random(1,6);
 if(adjValue == 1)
 {
   return adjective = "safe";
 }
  if(adjValue == 2)
 {
   return adjective = "angry";
 }
  if(adjValue == 3)
 {
   return adjective = "infamous";
 }
  if(adjValue == 4)
 {
   return adjective = "ambitious";
 }
  if(adjValue == 5)
 {
   return adjective = "disgusted";
 }
 return adjective = "*ERROR-ADJECTIVE*";
}

String humanoid()
{
 humanoidValue = (int)random(1,6);
 if(humanoidValue == 1)
 {
   return "family";
 }
  if(humanoidValue == 2)
 {
   return "alien";
 }
  if(humanoidValue == 3)
 {
   return "monster";
 }
  if(humanoidValue == 4)
 {
   return "hero";
 }
  if(humanoidValue == 5)
 {
   return "C.E.O.";
 }
 return "*ERROR-HUMANOID*";
}

String place()
{
 placeValue = (int)random(1,6);
 if(placeValue == 1)
 {
   return "Rancho Cucamonga, California";
 }
  if(placeValue == 2)
 {
   return "Lake Winnipesaukee, New Hampshire";
 }
  if(placeValue == 3)
 {
   return "Death Valley, California";
 }
  if(placeValue == 4)
 {
   return "Riyadh, Saudi Arabia";
 }
  if(placeValue == 5)
 {
   return "Quezon City, Philippines";
 }
 return "*ERROR-PLACE*";
}

String object()
{
 objectValue = (int)random(1,6);
 if(objectValue == 1)
 {
   return "wood";
 }
  if(objectValue == 2)
 {
   return "sand";
 }
  if(objectValue == 3)
 {
   return "oil";
 }
  if(objectValue == 4)
 {
   return "water";
 }
  if(objectValue == 5)
 {
   return "food";
 }
 return "*ERROR-OBJECT*";
}

void setup()
{
  size(1000, 200);
  background (0);
  timer = 0;
}

void draw()
{
 // println("The " + adjective() + " " + humanoid() + " goes to " + place() + " "+ time() + " for " + object() + ".");
  if(mousePressed && timer > 10)
  {
    background(0);
   
    time();
    adjective();
    humanoid();
    place();
    object();
    String story = "The " + adjective() + " " + humanoid() + " goes to " + place() + " "+ time() + " for " + object() + ".";
    fill(255);
    textSize(40);
    text(story, 20, 20, 980, 180);
    }
  if(mousePressed && timer > 10)
  {
    timer = 0;
  }
  timer++;
  println(timer);
}
