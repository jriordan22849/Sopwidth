// import music library
import processing.sound.*;
SoundFile file;

MainMenu main = new MainMenu();
Option option = new Option();
Single single = new Single();
Multi multi = new Multi();
Controls controls = new Controls();
Instructions instructions = new Instructions();
PlayingScreen playing = new PlayingScreen();
Gameover gOver = new Gameover();

PImage bg, bg2, bg3, bg4, bg5, oldPlane, oldPlaneSmall, modernPlane, modernPlaneSmall, spaceShip, spaceShipSmall, playGameButton, playGameButton2, singlePlayerButton, singlePlayerButton2,
multiplayerButton, multiplayerButton2, exitGameButton, exitGameButton2, howToPlayButton, howToPlayButton2,
backButton, backButton2, tfighter, mPlane, oPlane, instructions4, life, walker, bombSymbol, SpaceShipSmallBlue, SpaceShipBlue, instructions5, oldplaneBlue, oldplanebluesmall, 
modernplanesmallblue, modernplaneblue , 
modernplane2, gasoline,goButton,goButton2, bombIcon,oldtank , 
moderntank ,ww2bullet, score1, leaderboard1, p1Score, p2Score, p1Wins, p2Wins, draw ,moderncrate , swcrate, swbullet,
swbomb,wwbomb, modernbomb;


PFont font;


// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = true;
boolean optionMenu = false;
boolean playScreen = false;
boolean endScreen;
boolean exit = false;

boolean screenShift = false;
boolean fuelTank = true;
boolean bool = false;
boolean bombFire = true;

boolean addObjects = false;

// mulitiplayer
boolean player1 = false;
boolean player2 =false;

// player 2 booleans
boolean mulltiplayer  = false;
boolean multip = false;
boolean player2sw = false;
boolean player2ww2 = false;
boolean player2mw = false;


// plane options for players.
boolean oldPlaneBoolean = false;
boolean modernPlaneBoolean = false;
boolean tFighterBoolean = false;

//themes

boolean ww2 = false;
boolean sw = false;
boolean mw = false;

boolean playerControl = true;
boolean player2Control = true;

int start;
int x, y;
int baseX,baseY;
int lifes = 5;
int player2Lifes = 5;
int score = 0;
int player2Scroe = 0;
int numOfBases = 6;
int numOfPlanes = 10;
int numOfBombs = 3;
int player2numOfBombs = 3;

int count = 0;
float fuel = 100;
float player2fuel = 100;

 ArrayList<GameObjects> objects = new ArrayList<GameObjects>();
 ArrayList<Bullet> bullets = new ArrayList<Bullet>();
 ArrayList<Bullet> player2bullets = new ArrayList<Bullet>();
 ArrayList<Bomb> bombs = new ArrayList<Bomb>();
 ArrayList<Bomb> player2bombs = new ArrayList<Bomb>();
 ArrayList<Player> players = new ArrayList<Player>();
 ArrayList<Player2> players2 = new ArrayList<Player2>();
 ArrayList<Background> back = new ArrayList<Background>();
 ArrayList<EnemyPlane> planes = new ArrayList<EnemyPlane>();
 ArrayList<EnemyBases> bases = new ArrayList<EnemyBases>();
 ArrayList<Fuel> fuels = new ArrayList<Fuel>();
 ArrayList<Ammo> ammo = new ArrayList<Ammo>();

 
 static boolean[] keys = new boolean[526];
 
 // Files
 int data[];
 int multiData[];
 

void setup() {
  size(800, 600); 
  
  // load sound file
  

  
  // single player file
  String[] stuff = loadStrings("LeaderBoard/data.txt");
  data = int(split(stuff[0],','));
  
  // multiplayer file
  String[] multiFile = loadStrings("LeaderBoard/multiFile.txt");
  multiData = int(split(multiFile[0],','));

 font = createFont("ARDESTINE.ttf", 63);
  
  // set image variables
  bg = loadImage("images/Background11.png");
  bg2 = loadImage("images/Background2.png");
  bg3 = loadImage("images/Background3.png");
  bg4 = loadImage("images/Background4.png");
  bg5 = loadImage("images/Background5.png");
  score1 = loadImage("images/Score.png");
  leaderboard1 = loadImage("images/LeaderBoard.png");
  oldPlane = loadImage("images/oldplane.png");
  oldPlaneSmall = loadImage("images/oldplaneSmall.png");
  modernPlane = loadImage("images/modernplane.png");
  modernPlaneSmall = loadImage("images/modernplaneSmall.png");
  spaceShip = loadImage("images/SpaceShip.png");
  spaceShipSmall = loadImage("images/SpaceShipSmall.png");
  playGameButton = loadImage("images/PlayGameButton.png");
  playGameButton2 = loadImage("images/PlayGameButton2.png");
  singlePlayerButton = loadImage("images/SinglePlayerButton.png");
  singlePlayerButton2 = loadImage("images/SinglePlayerButton2.png");
  multiplayerButton = loadImage("images/MultiplayerButton.png");
  multiplayerButton2 = loadImage("images/MultiplayerButton2.png");
  exitGameButton = loadImage("images/ExitGameButton.png");
  exitGameButton2 = loadImage("images/ExitGameButton2.png");
  howToPlayButton = loadImage("images/HowToPlayButton.png");
  howToPlayButton2 = loadImage("images/HowToPlayButton2.png");
  backButton = loadImage("images/BackButton.png");
  backButton2 = loadImage("images/BackButton2.png");
  tfighter = loadImage("images/tFighter.png");
  mPlane = loadImage("images/modernplane1.png");
  oPlane = loadImage("images/oldplane1.png");
  instructions4 = loadImage("images/instructions4.png");
  life = loadImage("images/life.PNG");
  walker = loadImage("images/walker.png");
  bombSymbol = loadImage("images/bomb.png");
  SpaceShipSmallBlue = loadImage("images/SpaceShipSmallBlue.png");
  SpaceShipBlue = loadImage("images/SpaceShipBlue.png");
  instructions5 = loadImage("images/instructions5.png");
  oldplaneBlue = loadImage("images/oldplaneBlue.png");
  oldplanebluesmall = loadImage("images/oldplanebluesmall.png");
  modernplanesmallblue = loadImage("images/modernplanesmallblue.png");
  modernplaneblue = loadImage("images/modernplaneblue.png");
  modernplane2 = loadImage("images/modernplaneblue.png");
  gasoline = loadImage("images/Gasoline_tank.png");
  goButton = loadImage("images/GoButton.png");
  goButton2 = loadImage("images/GoButton2.png");
  bombIcon = loadImage("images/bombIcon.png");
  oldtank = loadImage("images/oldtank.png");
  moderntank = loadImage("images/moderntank.png");
  ww2bullet  = loadImage("images/ww2bullet.png"); 
  moderncrate  = loadImage("images/moderncrate.png"); 
  swcrate  = loadImage("images/swcrate.png"); 
  swbullet = loadImage("images/swbullet.png");
  swbomb = loadImage("images/StarWarsBomb.png");
  wwbomb = loadImage("images/ww2bomb1.png");
  modernbomb = loadImage("images/ModernBomb.png");

  
  p1Score = loadImage("images/P1Score.png");
  p2Score = loadImage("images/P2Score.png");
  p1Wins = loadImage("images/P1Wins.png");
  p2Wins = loadImage("images/P2Wins.png");
  draw = loadImage("images/Draw.png");
  

   
   for( int i = 0 ; i<1; i++)
   {
     Background bac = new Background(0,0);
     objects.add(bac);
     back.add(bac); 
   }
   for( int i = 0 ; i<1; i++)
   {
     Background bac = new Background(800,0);
     objects.add(bac);
     back.add(bac); 
   }

  
  for( int i = 0 ; i<1; i++)
  {
     Player player = new Player(400,300);
     objects.add(player);
     players.add(player);
  }
  
  for(int i = 0; i < numOfPlanes; i ++) {
    //float x  = random(width, width + 300);
    //float y = random(50, height - 50);
    
    x = (int)random(width, width + 1000);
    y = (int)random(200,height - 250);
    EnemyPlane enemy = new EnemyPlane(x,y);
    planes.add(enemy);
  }
  
  for(int i = 0; i < numOfBases; i ++) {
    baseX = (int)random(width, width + 500);
    baseY = 480;
    EnemyBases base = new EnemyBases(baseX,baseY);
    bases.add(base);
  }
 
}

void draw() {
  


  // Main menu screen
  if( mainMenu== true) {
    main.display();  
    screenShift = false;
  }
  
  if(optionMenu == true) {
    option.display();
  }
  
  if(singlplayer == true) {
    
    single.display();
    controls.control();
  }
  
  if(multiplayer == true) {
    // remvoe all the planes in the array list.
    multi.display();
  }
  
  if(howToPlay == true) {
    instructions.display();
  }
    
  if(exit == true) {
   exit(); 
  }
  
  if(endScreen == true) {
    for(int i = 0; i < planes.size(); i ++) {
      planes.remove(i);
    }
          
     // remove bases from the array list.
     for(int i = 0; i < bases.size(); i ++) {
       bases.remove(i);
     }
     
     for(int i = 0; i < ammo.size(); i ++) {
       ammo.remove(i);
     }
     
     for(int i = 0; i < fuels.size(); i ++) {
       fuels.remove(i);
     }
     
     for(int i = 0;i <objects.size(); i++)//displaying objects
    {

        objects.remove(i);//removes objects
      
    }
     
    gOver.display();
  }
  
  if(playScreen == true) {
    
   
    
    //player.keyPressed();
    
    background(255);
    stroke(255);
    noFill();
    
    if(addObjects) {
      for(int i = 0; i < numOfPlanes; i ++) {
        //float x  = random(width, width + 300);
        //float y = random(50, height - 50);
    
        x = (int)random(width, width + 1000);
        y = (int)random(200,height - 250);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
      }
  
      for(int i = 0; i < numOfBases; i ++) {
        baseX = (int)random(width, width + 500);
        baseY = 480;
        EnemyBases base = new EnemyBases(baseX,baseY);
        bases.add(base);
      }
      
      for( int i = 0 ; i<1; i++)
      {
         Background bac = new Background(0,0);
         objects.add(bac);
         back.add(bac); 
      }
      
      for( int i = 0 ; i<1; i++)
      {
        Background bac = new Background(800,0);
        objects.add(bac);
        back.add(bac); 
      }
      
      for( int i = 0 ; i<1; i++)
      {
        Player player = new Player(400,300);
        objects.add(player);
        players.add(player);
      }
      addObjects = !addObjects;
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
    for(int i = 0;i <fuels.size(); i++)//displaying objects
    {
      if (! fuels.get(i).alive)
      {
        fuels.remove(i);//removes objects
      }
    }
    

    for(int i = 0; i < planes.size(); i ++) {
      planes.get(i).display();
       
      if(planes.get(i).x < -200) {
        planes.remove(i);
        
        x = (int)random(width, width + 1000);
        y = (int)random(200,height - 250);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
  
      }
    }
    
    // display the bases
    for(int i = 0; i < bases.size(); i ++) {
      bases.get(i).display();
      if(bases.get(i).x < -200) {
        bases.remove(i);
        baseX = (int)random(width, width + 800);
        baseY = 480;
        EnemyBases base = new EnemyBases(baseX,baseY);
        bases.add(base);
      }
      if(i > numOfBases) {
        bases.remove(i);
      }
    }
    
    //Planes
    // remove close planes from each other, no overlapping
    for(int i = 0; i < planes.size(); i ++) {
      EnemyPlane plane = planes.get(i);
      for(int j = i + 1; j < planes.size(); j ++) {
        EnemyPlane nextPlane = planes.get(j);
        int tempX = 0;
        int tempY = 0;
        tempX = plane.x - nextPlane.x;
        tempY = plane.y - nextPlane.y;
        if( (tempX < 80) && (tempY < 80)) {
          planes.remove(j);
          x = (int)random(width, width + 1000);
          y = (int)random(200,height - 250);
          EnemyPlane enemy = new EnemyPlane(x,y);
          planes.add(enemy);
        }
        
      }
    }
    
    // Bases
    // remove close bases from each other, no overlapping
    for(int i = 0; i < bases.size(); i ++) {
      EnemyBases eBase = bases.get(i);
      for(int j = i + 1; j < bases.size(); j ++) {
        EnemyBases cBase = bases.get(j);
        int temp = 0;
        temp = eBase.x - cBase.x;
        if(temp < 100) {
          bases.remove(j);
          baseX = (int)random(width, width + 800);
          baseY = 480;
          EnemyBases base = new EnemyBases(baseX,baseY);
          bases.add(base);
        }
        
      }
    }
    
   // bomb detection
   for(int i = 0; i < bombs.size();i ++) {
     Bomb bomb = bombs.get(i);
     for(int j = 0 ; j < bases.size(); j ++) {
       EnemyBases eBase = bases.get(j);
       if(dist(bomb.position.x + 15, bomb.position.y +20, eBase.x  ,eBase.y+50  )  <= 75) {
         eBase.explosion(eBase.x,eBase.y);
         bomb.explosion();
         bomb.touched();
         bases.remove(j);
         
         baseX = (int)random(width, width + 500);
         baseY = 480;
         EnemyBases base = new EnemyBases(baseX,baseY);
         bases.add(base);
        
         score += 2;
       }
     }
   }
   
   // bomb for plane
   for(int i = 0 ; i < bombs.size()  ; i ++)//hit detection
  {
    Bomb bomb = bombs.get(i);
   // println(bullet.position.x);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane zombie1 = planes.get(j);
      if (dist(bomb.position.x,bomb.position.y,zombie1.x,zombie1.y) <=50)
      {
        bomb.explosion();
        bombs.remove(i);
        planes.remove(j);
        
        // spawn a new plane 
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        score ++;
      } 
      

    }
  }
    
   for(int i = 0 ; i < bullets.size()  ; i ++)//hit detection
  {
    Bullet bullet = bullets.get(i);
   // println(bullet.position.x);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane enemy1 = planes.get(j);
      if (dist(bullet.position.x ,bullet.position.y,enemy1.x -20 ,enemy1.y -10 ) <=15)
      {
        bullet.explosion();
        bullet.touched();
        planes.remove(j);
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        score ++;
      } 
    }
  }
  
  // hit detection of planes
  
  for(int i = 0; i < players.size(); i ++) {
    Player player = players.get(i);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane zombie1 = planes.get(j);
      if (dist(player.position.x,player.position.y,zombie1.x,zombie1.y) <=20)
      {
        player.explosion();
        
        // remove plane
        planes.remove(j);
        
        // add new plane to the list and spawn it
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        
        // deduct life from player
        lifes--;
        fuel = 100;
      } 
      
      if (dist(player.position.x + 50,player.position.y,zombie1.x,zombie1.y) <=20)
      {
        player.explosion();
        
        // remove plane
        planes.remove(j);
        
        // add new plane to the list and spawn it
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        
        // deduct life from player
        lifes--;
      } 
    }
  }
  
  // hit detection for ammo 
   for(int i = 0 ; i < players.size()  ; i ++)//hit detection
  {
    Player player = players.get(i);
    for (int j = 0; j < ammo.size() ; j ++)
    {
      Ammo ammolevel = ammo.get(j);
      if (dist(player.position.x+50,player.position.y + 18 ,ammolevel.position.x + 25 ,ammolevel.position.y + 35) <= 40)
      {
        numOfBombs += 1 ;
        ammolevel.touched();
      } 
    }
  }
  
  // hit detection for fuel
  for(int i = 0 ; i < players.size()  ; i ++)//hit detection
  {
    Player player = players.get(i);
    for (int j = 0; j < fuels.size() ; j ++)
    {
      Fuel health = fuels.get(j);
      if (dist(player.position.x+50,player.position.y + 18 ,health.position.x + 12,health.position.y + 22) <= 40)
      {
        fuel = 100 ;
        health.touched();
      } 
    }
  }
  
  if(frameCount % 600 == 0)// time intervals
  {
   for( int i = 0 ; i<1; i++)
   {
     Fuel fuelss = new Fuel();
     Ammo ammos = new Ammo();
       
     objects.add(fuelss); 
     fuels.add(fuelss);
     
     objects.add(ammos); 
     ammo.add(ammos);
   }
 }
 
 if(fuel < 0) {
   playerControl = false;
 }
 
 if(mulltiplayer) {
     
     multip = true;   
     
    if(count < 1) {
       Player2 player2 = new Player2(200,300);
       objects.add(player2);
       players2.add(player2);
       mulltiplayer = false;
       count++;
    }
     

 }
 

 
 if(lifes <= 0 && !multip) {
   playScreen = !playScreen;
   endScreen = true;
 }
  
  // number of lives
  textSize(15);
  fill(255,0,0);
  stroke(255,0,0);

  image(life,30,20);
  text("X" + lifes,53,33);
  text("Score: " + score,30,53);
  
  // number of bombs
  image(bombSymbol, 80, 20);
  text("X" + numOfBombs,105,33);
  
  if(multip) {
    

   if(lifes <= 0 && player2Lifes <= 0) {
     playScreen = !playScreen;
     endScreen = true;
   }
    
    
    // Player 2 details to be displayed
    textSize(15);
    fill(255,0,0);
    stroke(255,0,0);

    image(life,230,20);
    text("X" + player2Lifes,253,33);
    text("Score: " + player2Scroe,230,53);
  
    // number of bombs
    image(bombSymbol, 280, 20);
    text("X" + player2numOfBombs,305,33);
    

   if(player2fuel < 0) {
     player2Control = false;
   }
   // hit detection for ammo  for player 2
   for(int i = 0 ; i < players2.size()  ; i ++)//hit detection
  {
    Player2 player = players2.get(i);
    for (int j = 0; j < ammo.size() ; j ++)
    {
      Ammo ammolevel = ammo.get(j);
      if (dist(player.position.x+50,player.position.y + 18 ,ammolevel.position.x + 25 ,ammolevel.position.y + 35) <= 40)
      {
        player2numOfBombs += 1 ;
        ammolevel.touched();
      } 
    }
  }
  
  // hit detection for fuel for player 2
  for(int i = 0 ; i < players2.size()  ; i ++)//hit detection
  {
    Player2 player = players2.get(i);
    for (int j = 0; j < fuels.size() ; j ++)
    {
      Fuel health = fuels.get(j);
      if (dist(player.position.x+50,player.position.y + 18 ,health.position.x + 12,health.position.y + 22) <= 40)
      {
        player2fuel = 100 ;
        health.touched();
      } 
    }
  }
  
  
  // arraylist for bulley and plane for player 2.
   for(int i = 0 ; i < player2bullets.size()  ; i ++)//hit detection
  {
    Bullet bullet = player2bullets.get(i);
   // println(bullet.position.x);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane enemy1 = planes.get(j);
      if (dist(bullet.position.x ,bullet.position.y,enemy1.x -20 ,enemy1.y -10 ) <=15)
      {
        bullet.explosion();
        bullet.touched();
        planes.remove(j);
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        player2Scroe ++;
      } 
    }
  }
  
   // bomb detection
   for(int i = 0; i < player2bombs.size();i ++) {
     Bomb bomb = player2bombs.get(i);
     for(int j = 0 ; j < bases.size(); j ++) {
       EnemyBases eBase = bases.get(j);
       if(dist(bomb.position.x, bomb.position.y,eBase.x,eBase.y + 100)  <= 100) {
         eBase.explosion(eBase.x,eBase.y);
         bomb.explosion();
         bomb.touched();
         bases.remove(j);
         
         baseX = (int)random(width, width + 500);
         baseY = 480;
         EnemyBases base = new EnemyBases(baseX,baseY);
         bases.add(base);
        
         player2Scroe += 2;
       }
   
       if(dist(bomb.position.x, bomb.position.y,eBase.x - 50,eBase.y + 100) <= 100) {
         eBase.explosion(eBase.x,eBase.y);
         bomb.explosion();
         bomb.touched();
         bases.remove(j);
         
         baseX = (int)random(width, width + 500);
         baseY = 480;
         EnemyBases base = new EnemyBases(baseX,baseY);
         bases.add(base);
         

         player2Scroe += 2;
       }
     }
   }

  }
  
 // text("Fuel:" + (int)fuel +"%",150,33);
  }
  
}



// Back button in the menu
void backButton() {
  
  image(backButton, 10, 525);
  if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
  {  
    image(backButton2, 10, 520);
  }
  
    if(mousePressed)
    {
      // Choose plane screen
      if(singlplayer) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          singlplayer = false;
          mulltiplayer = false;
          optionMenu = true;
          ww2 = false;
          sw = false;
          mw = false;        
        }
      }
      
      // how to play screen
      if(howToPlay) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          howToPlay = false;
          optionMenu = true;
        
        }
      }
      
     // Choose plane screen
      if(multiplayer) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          multiplayer = false;
          optionMenu = true; 
        }
      }
      
      if(endScreen) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          score = 0;
          player2Scroe = 0;
          lifes = 5;
          player2Lifes = 5;
          fuel = 100;
          player2fuel = 100;
          numOfBombs = 3;
          player2numOfBombs = 3;
          playScreen = false;
          endScreen = false;
          ww2 = false;
          sw = false;
          mw = false;
          player2ww2 = false;
          player2sw = false;
          player2mw = false;
          mulltiplayer = false;       
          addObjects = true;
          multip = false;
          count = 0;
          optionMenu = true;
        
        }
      }
  }
}

static boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}