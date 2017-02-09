/*
  Name: Erik Stenberg
  Student No: C15495352
  Program: Tetris Game for OOP Assignment 2(Game Assignment)
*/

//Global Variables Created
int tet_area[][];
int new_tet_area[][];
int tet_spd;
int tet_queue[];
int block_area[][];
int livesLeft;
int lines;
int points;
int level;
int break_area[][][];
int break_blocks[][];
int fillposx = 0;
int fillposy = 0;
int breaktetrx = 0;
int breaktetry = 0;
int breaktetrnumber = 0;
boolean start = true;
boolean gameover = false;
int breaktetro[][];
PFont = font;

void setup()
{
  size(1500, 900, P3D);
  frameRate(60);
  font = loadFont("OCRAExtended-48.vlw");
  init();
}

void draw()
{
  if( start == true )
  {
    startgame();
  }
  if( gameover == true )
  {
    gameover();
  }
  
}