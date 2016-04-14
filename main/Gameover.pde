class Gameover {
   Gameover() {
   }
   
   void display() {
      background(bg); 
      
      fill(255);
      stroke(0);
      
      textSize(100);
      text("Score: " + score,200,350);
      
      if(score > data[0]) {
          String scoreString = str(score);
          String[] scoreArray = new String[1];
          for(int i = 0; i < scoreArray.length; i ++) {
            scoreArray[i] = scoreString;
          }
          saveStrings("data.txt", scoreArray);
      }

      backButton();
   }
}