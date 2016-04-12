class Player2 extends GameObjects
{
  float buletCounter;
  boolean alive = true;
   float duel;
  float maxduel =100;
  
  Player2() {
  }

  Player2(float x ,float y)
  {
    position.x = x;// position of the player
    position.y = y;
    theta = 0;
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
          player2Lifes--;
        }
        
      forward.x = 5;
      down.y = 5;
      down2.y = 7;
      velocity.y = 2;
      position.add(velocity); 
      if(keyPressed)
      {
        if(fuelTank) {
          if(player2fuel <= 0) {
            fuelTank = !fuelTank;
          }
          
        
        switch(key)
        {
          case 'l':
          position.add(forward);//players go right
          player2fuel -= .1;
           break;
          case 'j':
          position.sub(forward);
          player2fuel -= .1;
           break;
          case 'i':
          position.sub(down2);
          player2fuel -= .1;
           break;
          case 'm':
          position.add(down);
          player2fuel -= .1;
           break;
            case 'n':
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
            break;
            case 'b':
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
                player2numOfBombs --;
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
            break;
        }
        }
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
    
    void keyPressed() {
        if (key == CODED) {
          if (keyCode == UP) {
            position.sub(down); 
          } else if (keyCode == DOWN) {
            position.add(down);
            
          } else if (keyCode == LEFT) {
             position.sub(forward);
            
          } else if (keyCode == RIGHT) {
            position.add(forward);//players go right
            
          }
        } 
    }
}