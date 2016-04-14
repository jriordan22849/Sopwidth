class Bullet extends GameObjects
{
  
 
  Bullet() 
  {
    speed = 20;//speed of the bullet
  }
  void move()//movment of the bullet
  { 
    forward.x = cos(theta)* speed;
    forward.y =  sin(theta)* speed;
    PVector velocity = PVector.mult(forward, speed);
    position.add(forward);
    
    if (position.x  > -15 && position.x  < width ) 
    {
      alive = true;
    }
    else //when vullet leaves the screen we set it false and we delete it in the game() function
    {
       alive = false;
       position.x = -100;
       position.y = -100;
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
    noStroke();
    translate(position.x + 100,position.y);
    image(ww2bullet,0,30);
    popMatrix();
  }
  
  void explosion()//when bullet hits the zombie it creates mini explosion
  {
  

    pushMatrix();
    translate(position.x +15,position.y -35);
    fill(255,255,0);
    ellipse(20,50,100,100);
    fill(255,0,0);
    ellipse(20,50,90,90);
    fill(255,255,0);
    ellipse(20,50,80,80);
    fill(255,0,0);
    ellipse(20,50,70,70);
    fill(255,255,0);
    ellipse(20,50,60,60);
    fill(255,0,0);
    ellipse(20,50,50,50);
    fill(255,255,0);
    ellipse(20,50,40,40);
    fill(255,0,0);
    ellipse(20,50,30,30);
    fill(255,255,0);
    ellipse(20,50,20,20);
    popMatrix();
  }
}