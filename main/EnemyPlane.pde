class EnemyPlane extends GameObjects {
    int x,y;
    
    
    EnemyPlane(int x, int y) {
       this.x = x;
       this.y = y;
    }
    
    void display() {
        /*
          1. star wars
          2. modern plane
          3. ww2 plane
        */
        if(sw) {
          image(tfighter, x -= 2,y);
        } else if(mw) {
          image(mPlane, x -= 2,y);
          
        } else if(ww2) {
           image(oPlane, x -= 2,y);
        }
    }
    
    void removeObject() {
       if(x < 50) {
         alive = false;
         
       }
    }
    
}