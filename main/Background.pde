class Background extends GameObjects
{
  PImage old = loadImage("images/OldBackground.png");
  PImage star = loadImage("images/SpaceBackground.png");
  PImage modernw = loadImage("images/ModernBackground.png");
  
  Background(float x, float y)
  {
    position.x = x;// position of the player
    position.y = y;
  }
  
  void move()
  {
    forward.x = 1;
    position.sub(forward);
    
    if(position.x == -800)
    {
       position.x = 800;
    }
  }
  void display()
  {
    pushMatrix();
    noStroke();
    translate(position.x ,position.y);
     if(ww2 == true)
     {
       image(old, 0,0);
     }
     if(sw == true)
     {
       image(star, 0, 0);
     }
     if(mw == true)
     {
       image(modernw, 0, 0);
     }
    popMatrix();
  }
  
}