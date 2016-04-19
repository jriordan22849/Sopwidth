boolean ammoCount2 = true;
float bombCount = 0;
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
     if(player2Lifes > 0) {
     pushMatrix();
     float healthPercentage;
     healthPercentage = player2fuel/maxduel*100;
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
   }
   
  void move()
  {
    if(player2Lifes > 0) {
     if(position.y > 560) {
       position.x = 200;
       position.y = 300;
       player2Lifes--;
       player2fuel = 100;
       player2Control = true;
    }
    if(player2Control == true) {
    
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
          player2Lifes--;
          player2fuel = 100;
        }
      if (checkKey(up))
      {     
          position.sub(down2);
          player2fuel -= .1;
      }      
      if (checkKey(dow))
      {
          position.add(down);
          player2fuel -= .1;
      }    
      
      if (checkKey(right))
      {
          position.add(forward);//players go right
          player2fuel -= .1;
      }
      if (checkKey(left))
      {
          position.sub(forward);
          player2fuel -= .1; 
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
              player2bullets.add(bullet);
              
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
      
      if(player2numOfBombs > 0) {
         ammoCount2 = true; 
      } else {
        ammoCount2 = false;
      }
      if (checkKey(bob))
      {             
             if(ammoCount2) {
             if(alive == true)// creating a bullet
             { 
               Bomb bomb = new Bomb();
               bomb.position = position.get(); //we getting the player position and set the bullet posiotion the same   
               bomb.theta = 2;
               objects.add(bomb);
               player2bombs.add(bomb);
               bombCount = 0;
               bombFire = false;
               player2numOfBombs --;
               alive =false;
             }
           
           if(alive == false)//fire rate
           {
             bombCount ++;
             if(bombCount == 20)
             {
               alive = true;
             }
           }
         }
      }
        
      forward.x = 5;
      down.y = 5;
      down2.y = 7;
      velocity.y = 2;
      position.add(velocity); 
  }
      
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