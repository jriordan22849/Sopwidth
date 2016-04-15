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
       background(bg5);
       
       image(p1Score, 162, 290);
       image(p2Score, 162, 345);
       image(leaderboard1, 162, 400);
      
       fill(#9f0017);
       stroke(0);
      
       textFont(font);
       
       if(score > player2Scroe){
         image(p1Wins, 200, 220);
       }
       if(player2Scroe > score){
         image(p2Wins, 200, 220);
       }
       if(player2Scroe == score){
         image(draw, 320, 220);
       }
       text(score,548,328);
       text(player2Scroe,548,382);
       text(data[0],548,442);
       
  
         
         
       
     }
       

      backButton();
   }
}