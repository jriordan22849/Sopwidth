
 
class PlayingScreen {
  

  
  void display() {
  background(bg);
  for( int i = 0 ; i<1; i++)
  {
     Player player = new Player(400,300);
     objects.add(player);
     players.add(player);
  }
  for(int i = 0;i <objects.size(); i++)//displaying objects
  {
    objects.get(i).move();
    objects.get(i).display();
    if (! objects.get(i).alive)
    {
      objects.remove(i);//removes objects
    }
  }
  }
}