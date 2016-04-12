class Fuel extends GameObjects
{

  Fuel() 
  {
    position.y = (random(-500,-50));  //spawn points of the health
    position.x = (random(50,750)); 
  }
  void move()//movment of the bullet
  { 
      position.add(velocity); 
      
      if (position.y  < height || position.y < 0 )
      {
        velocity.y = 1;
      }
      if(position.y > 600)// when it hits the ground its automatically removed and we set new spawn points
      {
        alive = false;
        touched();
        position.y = (random(-500,-50));  
        position.x = (random(20,700));
      }
  }
  void touched()// when bullet touches the zombie we remove it and set the possition out of the screen as sometimes one bullet could kill 2 zombies
  {
    alive =false;
    position.x = -100;
    position.y = -100;
  }
  
  void display()//displaying the bullet
  {
     pushMatrix();
     translate(position.x,position.y);
     rect(20,20,10,10);
     image(gasoline, 20, 20);
     popMatrix(); 
  }
  
}