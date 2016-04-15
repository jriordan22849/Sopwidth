class EnemyBases {
  
  int x, y;
  
  EnemyBases(int x, int y){
   this.x = x;
   this.y = y;
  }
  
  void display() {
    if(sw) {
      image(walker, x -= 2,y);
    } else if(mw) {
      image(moderntank, x -= 2,y+50);  
    } else if(ww2) {
      rect(x -= 2,y+54,10,10);
      image(oldtank, x -= 2,y+54);
    }
    
  }
  
  void explosion(int x, int y)//when bullet hits the zombie it creates mini explosion
  {


    translate(x + 40,y);
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