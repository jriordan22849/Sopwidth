boolean ammoCount;
class Player extends GameObjects
{
  float buletCounter;
  float bombCounter;
  boolean alive = true;
  float duel;
  float maxduel =100;

   
  char up;
  char dow;
  char left;
  char right;
  char fire;
  char bob;
  
  Player() {
  }

  Player(float x ,float y)
  {
    position.x = x;// position of the player
    position.y = y;
    theta = 0;
    up = 'w';
    left = 'a';
    right = 'd';
    dow = 's';
    fire = ' ';
    bob = 'b';
   }

  void display()
  {  
    if(lifes > 0) {
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
       image(oldPlaneSmall, 20, 20);
     }
     if(sw == true)
     {
       image(spaceShipSmall, 20, 20);
     }
     if(mw == true)
     {
       image(modernPlaneSmall,20, 20);
     }
     popMatrix();
    }
   }
   
  void move()
  {
    if(lifes > 0) {
     if(position.y > 560) {
       position.x = 200;
       position.y = 300;
       lifes--;
       fuel = 100;
       playerControl = true;
    }
    if(playerControl == true) {
    
       if(position.x < 0 )//keeps the player in the box
        {
          position.x = 1;
        }
        if(position.x > 701)
        {
          position.x =700;
        }
        
        if(position.y < 0) {
          position.y = 1;
        }
        if(position.y > 560) {
          position.x = 200;
          position.y = 300;
          lifes--;
          fuel = 100;
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
              
              buletCounter = 0;
              player = minim.loadFile("Sound/bullet.wav");
              player.play();
              alive =false;
             }
           if(alive == false)//fire rate
            {
              buletCounter ++;
              if(buletCounter == 20 )
              {
                alive = true;
              }
            }
      }
      
      if(numOfBombs > 0) {
         ammoCount = true; 
      } else {
        ammoCount = false;
      }
      if (checkKey(bob))
      {             
             if(ammoCount) {
             if(alive == true)// creating a bullet
             { 
               Bomb bomb = new Bomb();
               bomb.position = position.get(); //we getting the player position and set the bullet posiotion the same   
               bomb.theta = 2;
               objects.add(bomb);
               bombs.add(bomb);
               bombCounter = 0;
               bombFire = false;
               numOfBombs --;
               alive =false;
             }
           
           if(alive == false)//fire rate
           {
             bombCounter ++;
             if(bombCounter == 20)
             {
               alive = true;
             }
           }
             }
      }
        
      forward.x = 5;
      down.y = 5;
      down2.y = 7;
      velocity.y = 0;
      position.add(velocity); 
    }
    }
    
  void explosion()//when bullet hits the zombie it creates mini explosion
  {


    translate(position.x + 20,position.y);
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

  }
  


}