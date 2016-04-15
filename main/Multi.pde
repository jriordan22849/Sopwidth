class Multi {
  
 void display() {
    // set background image
    background(bg2);
    image(backButton, 10, 525);
    
    // display planes for the user to select.
    // old plane 200 x 85
    image(oldPlane, 40, 200 );
    image(oldplaneBlue, 40, 350 );
    
    // 79×76
    // tFighter
    image(modernPlane, 300, 200);
    //image(modernplaneblue, 300, 350);
    image(modernplane2, 300, 350);
    
    
    // 200×70
    //modern plane 
    //(mouseX >= 550) && (mouseX <= 750) && (mouseY >= 300) && (mouseY <= 370) 
   image(spaceShip, 570, 200);
   image(SpaceShipBlue, 570, 350);
   
   fill(#FC0303);
   stroke(#FC0303);
   if(sw) {
      rect(570, 300, 200,10, 5);
   } 
   if(mw) {
     rect(300, 300, 200,10, 5);
   } 
   if(ww2) {
     rect(40, 300, 200,10, 5);
   }
   
   fill(#FF9E00);
   stroke(#FF9E00);
   
   // player 2
   if(sw) {
      rect(570, 450, 200,10, 5);
   } 
   if(mw) {
     rect(300, 450, 200,10, 5);
   } 
   if(ww2) {
     rect(40, 450, 200,10, 5);
   }
 
  image(goButton, 635, 525);
  if( ( mouseX >= 635) && (mouseX <= 790) && (mouseY >= 525) && (mouseY <= 580) )
  {  
    image(goButton2, 635, 523);
  }
  
   if(mousePressed)
  {
     
    // Player 1 
    if( (mouseX >= 570) && (mouseX <= 770) && (mouseY >= 200) && (mouseY <= 270)  )
    {
      mw = false;
      ww2 = false;
      sw =true;
      player2mw = false;
      player2ww2 = false;
      player2sw =true;
      player1 = true;
      player2 = true;
    } 
    if( (mouseX >= 300) && (mouseX <= 420) && (mouseY >= 200) && (mouseY <= 270)  )
    {
      sw = false;
      ww2 = false;
      mw = true;
      player2sw = false;
      player2ww2 = false;
      player2mw = true;
      player1 = true;
      player2 = true;
    } 
    if( (mouseX >= 40) && (mouseX <= 260) && (mouseY >= 200) && (mouseY <= 270)  )
    {
      sw = false;
      mw = false;
      ww2 = true;
      player2sw = false;
      player2mw = false;
      player2ww2 = true;
      player1 = true;
      player2 = true;

    }// end colour change and boolean for first box
    


    
    
    if(( mouseX >= 415) && (mouseX <= 790) && (mouseY >= 525) && (mouseY <= 580) &&(player1 == true) && (player2 == true)) {
      if( (sw == true) || (mw == true) || (ww2 == true) && (player2sw == true) || (player2mw == true) || (player2ww2 == true)) {
        singlplayer = false;
        mulltiplayer = true;
        playScreen = true;
      }
    }
  }
    
    backButton();
 } 
}