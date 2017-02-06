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

void setup()
{
  size(1500, 900, P3D);
  init();
}

void draw()
{
  frameRate(60);
}