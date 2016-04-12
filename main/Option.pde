// Level Options variables
int SBX = (width / 2) - 100;
int SBY = 200;
int SBY1 = 300;
int SBY2 = 400;
int SBXSize = 200;
int SBYSize = 50;
int size = 50;

boolean colour1 = false;
boolean colour2 = false;
boolean colour3 = false;
class Option {
 
  
void display()
{
  //background(#DEDEDE); 
  background(bg);
  //singlePlayerButton, multiplayerButton, exitGameButton, howToPlayButton;
  image(singlePlayerButton, 10, 300);
  image(multiplayerButton, 10, 440);
  image(howToPlayButton, 415, 300);
  image(exitGameButton, 415, 440);
  
  if( (mouseX >= 10) && (mouseX <= 380) && (mouseY >= 300) && (mouseY <= 360) )
  {
    image(singlePlayerButton2, 10, 245);
  }  // end colour change and boolean for first box
  
  // Second box on menu screen
  if( (mouseX >= 10) && (mouseX <= 380)&& (mouseY >= 440) && (mouseY <= 500) )
  {
    image(multiplayerButton2, 10, 390);
  }  // end colour change and boolean for first box
  
  // Third box on menu screen
  if( (mouseX >= 415) && (mouseX <= 785)&& (mouseY >= 300) && (mouseY <= 360))
  {
    image(howToPlayButton2, 415, 245);
  }  // end colour change and boolean for first box
  
  
  // fourth box 
  if( (mouseX >= 415) && (mouseX <= 785)&& (mouseY >= 440) && (mouseY <= 500) )
  {
    image(exitGameButton2, 415, 405);
  }  // end colour change and boolean for first box
  
  
  // timer for boolean to switch so the mulitplayer screen doesnt open.
 
  
  
  if(mousePressed)
  {

    if( (mouseX >= 10) && (mouseX <= 380) && (mouseY >= 300) && (mouseY <= 360) )
    {
      singlplayer = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  
    //Second box on menu screen
    if( (mouseX >= 10) && (mouseX <= 380)&& (mouseY >= 440) && (mouseY <= 500) )
    {  
     multiplayer = true;
     optionMenu = false;
    }  // end colour change and boolean for first box
  
    // Third box on menu screen
    if( (mouseX >= 415) && (mouseX <= 785)&& (mouseY >= 300) && (mouseY <= 360) )
    {
      howToPlay = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  
    // fourth box 
    if( (mouseX >= 415) && (mouseX <= 785)&& (mouseY >= 440) && (mouseY <= 500) )
    {
      exit = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  }
   
}  // end void function 

}