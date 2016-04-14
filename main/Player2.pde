class Player2 extends GameObjects
{
  float buletCounter;
  boolean alive = true;
  float duel;
  float maxduel =100;

   
  char up;
  char dow;
  char left;
  char right;
  char fire;
  char bob;
  
  Player2() {
  }

  Player2(float x ,float y)
  {
    position.x = x;// position of the player
    position.y = y;
    theta = 0;
    up = 'i';
    left = 'j';
    right = 'l';
    dow = 'k';
    fire = '/';
    bob = '.';
   }

  void display()
  {  
     pushMatrix();
     float healthPercentage;
     healthPercentage = fuel/maxduel*100;
     fill(100,100);
     rect(position.x + 35,position.y +5,30,5);
     fill(2.55*100-healthPercentage-2.55,255*healthPercentage/100,0);
     rect(position.x + 35,position.y +5,.3*healthPercentage,4); 
     translate(position.x,position.y);
     if(ww2 == true)
     {
       rect(20,20,10,10);
       image(oldplanebluesmall, 20, 20);
     }
     if(sw == true)
     {
       image(SpaceShipSmallBlue, 20, 20);
     }
     if(mw == true)
     {
       image(modernplanesmallblue,20, 20);
     }
     

     
     popMatrix();
   }
   
  void move()
  {
    
       if(position.x < 0 )//keeps the player in the box
        {
          position.x = 1;
        }
        if(position.x > 571)
        {
          position.x =570;
        }
        
        if(position.y < 0) {
          position.y = 1;
        }
        if(position.y > 560) {
          position.x = 200;
          position.y = 300;
          lifes--;
        }
      if (checkKey(up))
      {     
          position.sub(down2);
          fuel -= .1;
      }      
      if (checkKey(dow))
      {
          position.add(down);
          fuel -= .1;
      }    
      
      if (checkKey(right))
      {
          position.add(forward);//players go right
          fuel -= .1;
      }
      if (checkKey(left))
      {
          position.sub(forward);
          fuel -= .1; 
      }
      if (checkKey(fire))
      {
         if(alive == true)// creating a bullet
            { 
              Bullet bullet = new Bullet();
              bullet.position = position.get(); //we getting the player position and set the bullet posiotion the same   
              bullet.theta = theta;
              objects.add(bullet);
              bullets.add(bullet);
              alive =false;
              buletCounter = 0;
             }
           if(alive == false)//fire rate
            {
              buletCounter ++;
              if(buletCounter == 10 )
              {
                alive = true;
              }
            }
      }
      
      if (checkKey(bob))
      {
        if(numOfBombs > 0) {
             if(alive == true)// creating a bullet
             { 
               Bomb bomb = new Bomb();
               bomb.position = position.get(); //we getting the player position and set the bullet posiotion the same   
               bomb.theta = 2;
               objects.add(bomb);
               bombs.add(bomb);
               alive =false;
               buletCounter = 0;
               bombFire = false;
               numOfBombs --;
             }
           }
           if(alive == false)//fire rate
           {
             buletCounter ++;
             if(buletCounter == 10 )
             {
               alive = true;
             }
           }
     
      }
        
      forward.x = 5;
      down.y = 5;
      down2.y = 7;
      velocity.y = 2;
      position.add(velocity); 
      
    }
    
  void explosion()//when bullet hits the zombie it creates mini explosion
  {


    translate(x + 20,y);
    fill(255,0,0);
    ellipse(20,50,50,50);
    fill(255,255,0);
    ellipse(20,50,40,40);
    fill(255,0,0);
    ellipse(20,50,30,30);
    fill(255,255,0);
    ellipse(20,50,20,20);

  }
  


}