
class MainMenu {
  
  int x, y;
  int rect_size = 10;
  
  void display() {
  
     background(bg);
     image(playGameButton, 215, 350);
     
     if( (mouseX >= 215) && (mouseX <= 585) && (mouseY >= 350) && (mouseY <= 410) )
  {
    image(playGameButton2, 215, 320);
  } 
    
    if(mousePressed)
    {
    // choose colour
    // if colour1 is selected 
    if( (mouseX >= 215) && (mouseX <= 585) && (mouseY >= 350) && (mouseY <= 410) )
    {
       mainMenu = false;
       optionMenu = true;
    }
  }
}
  

   
}