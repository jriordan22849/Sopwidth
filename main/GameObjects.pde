class GameObjects 
{
 float x , y;
 boolean alive;
 PVector position;
 PVector velocity;
 PVector forward;
 PVector down;
 PVector down2;
 float theta;
 float speed;

   GameObjects()
  {
   alive=true;
   down = new PVector(0,0);
   down2 = new PVector(0,0);
   position= new PVector(0,0);
   velocity = new PVector(0,0);
   forward = new PVector(0,0);
  }
  
  void display()
  {
  }
  
  void move()
  {
  }
  
}