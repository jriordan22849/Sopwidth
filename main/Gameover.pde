class Gameover {
   Gameover() {
   }
   
   void display() {
     
     if(!multip) {
      background(bg4);
      
     image(score1, 155, 270);
     image(leaderboard1, 162, 350);
      
      fill(#9f0017);
      stroke(0);
      
      //textSize(50);
      //PFont font;
      //font = createFont("ARDESTINE.ttf", 63);
      textFont(font);
      text(score,548,310);
      text(data[0],548,392);
      
      
      if(score > data[0]) {
          String scoreString = str(score);
          String[] scoreArray = new String[1];
          for(int i = 0; i < scoreArray.length; i ++) {
            scoreArray[i] = scoreString;
          }
          saveStrings("data.txt", scoreArray);
      }
     } else { 
       background(bg4); 
      
       fill(255);
       stroke(0);
      
       textSize(100);
       text("Score: " + score,200,350);
       
  
         
         
       
     }
       

      backButton();
   }
}