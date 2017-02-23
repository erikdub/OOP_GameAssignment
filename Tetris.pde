/*
  Name: Erik Stenberg
  Student No: C15495352
  Program: Tetris Game for OOP Assignment 2(Game Assignment)
*/

//Global Variables Created
int [][] playfield;
int [][] tetrfield;
int [][] tetrfieldnew;
int [][][] breakfield;
int [][] breaktetrominos;
int [] tetrqueue;
int tetrxpos = 0;
int tetrypos = 0;
int tetrcol = 0;
int tetrnumber = 0;
int tetrnumberdraw = 0;
int tetrdrawoffset = 0;
int tetrspeed = 30;
int tetrdropspeed = 2;
int tetrlevel = 0;
int timer = 0;
int timernew = 0;
int tetrsum = 0;
int tetrlinesatonce = 0;
int queuelength = 0;
int sum = 0;
int points = 0;
int lines = 0;
int lives = 0;
int level = 0;
boolean tetractive = false;
boolean tetrdrop = false;
boolean drop = false;
boolean left = false;
boolean right = false;
boolean rotleft = false;
boolean gameover = false;
boolean start = true;

float breakballx = 0;
float breakbally = 0;
float breakballspeed = 0;
float breakballrefangle = 0;
float breakballxspeed = 0;
float breakballyspeed = 0;
float breakballradius = 7;
float breakcheckangle = 0;
float breakchecky = 0;
float breakcheckx = 0;
int breakcheckfieldy = 0;
int breakcheckfieldx = 0;
int breakedgeleft = 600;
int breakedgetop = 50;
int breakpadx = 0;
int breakpady = 0;
int breakfieldmin = 0;
int breakfieldmax = 0;
int breakpadwidth = 80;
int breaktetrx = 0;
int breaktetry = 0;
int breaktetrnumber = 0;
int fillposx = 0;
int fillposy = 0;
int framerategoal = 60;
int fr = 90;
PFont font;

void setup() {
  size (1500, 900, P3D);
  font = loadFont("OCRAExtended-48.vlw");
  init();
}


void draw() {
  frameRate(60);
  if (start == true) {
    startg();
  }
  if (gameover == true) {
    gameoverg();
  }

  if ((start == false) && (gameover == false)) {
    background(250, 250, 250);
    tetrislogic();
    breakoutlogic();
    displaytetris();
    displaybreakout();
  }
}


void displaytetris() {

  //Playfield
  stroke(0);
  for (int i = 2; i < 22; i++) {
    for (int j = 2; j < 14; j++) {
      if (playfield[j][i] > 0) {
        chosecolor(playfield[j][i]);
        pushMatrix();
        translate(-30+j*34, 800-i*34);
        box(33,33,10);
        popMatrix();
      }
    }
  }

  //Queue
  for (int i = 1; i < 6; i++) {
    chosecolorbreak(tetrqueue[1]);

    if (tetrqueue[i] > 0) {
      if ((tetrqueue[i] == 1) || (tetrqueue[i] == 2)) {
        tetrnumberdraw = 2;
        tetrdrawoffset = -20;
      }
      if (tetrqueue[i] == 3) {
        tetrnumberdraw = 3;
        tetrdrawoffset = 0;
      }
      if ((tetrqueue[i] > 3) && (tetrqueue[i] < 8)) {
        tetrnumberdraw = 4;
        tetrdrawoffset = -10;
      }
      if ((tetrqueue[i] == 8) || (tetrqueue[i] == 9)) {
        tetrnumberdraw = 9;
        tetrdrawoffset = -10;
      }
      if ((tetrqueue[i] == 10) || (tetrqueue[i] == 11)) {
        tetrnumberdraw = 11;
        tetrdrawoffset = -10;
      }
      if ((tetrqueue[i] > 11) && (tetrqueue[i] < 16)) {
        tetrnumberdraw = 13;
        tetrdrawoffset = -10;
      }
      if ((tetrqueue[i] > 15) && (tetrqueue[i] < 20)) {
        tetrnumberdraw = 19;
        tetrdrawoffset = -10;
      }
      for (int j = 1; j < 5; j++) {
        chosecolorbreak(tetrqueue[i]);
        pushMatrix();
        translate(500+tetrdrawoffset+20*breaktetrominos[tetrnumberdraw][j*2-1], i*80+20*breaktetrominos[tetrnumberdraw][j*2]);
        box(20,20,10);
        popMatrix();
      }
    }
  }

  fill(0, 0, 0);
  textFont(font, 24);
  textSize(30);
  textAlign(RIGHT);
  text("Queue", 540, 470);
  textAlign(LEFT);
  text(queuelength, 540, 500);

  textAlign(RIGHT);
  text("Lines", 540, 540);
  textAlign(LEFT);
  text(lines, 540, 570);

  textAlign(RIGHT);
  text("Speed", 540, 610);
  textAlign(LEFT);
  text(30-tetrspeed, 540, 640);

  textAlign(RIGHT);
  text("Lives", 540, 680);
  textAlign(LEFT);
  text(lives, 540, 710);
}

void displaybreakout() {
  fill(128, 128, 128);
  for (int i = 1; i < 31; i++) {
    for (int j = 1; j < 39; j++) {
      if (breakfield[j][i][9] > 0) {

        chosecolorbreak(breakfield[j][i][9]);
        pushMatrix();
        translate(breakedgeleft+(j-1)*20+9, breakedgetop+(i-1)*20+9);
        box(19,19,10);
        popMatrix();
      }
    }
  }

  fill(128, 128, 128);
  pushMatrix();
  translate(breakedgeleft-10+390, breakedgetop-10);
  box(39*20, 20, 10);
  popMatrix();
  pushMatrix();
  translate(breakedgeleft-5, breakedgetop+400);
  box(10, 800, 10);
  popMatrix();
  pushMatrix();
  translate(breakedgeleft+38*20+5, breakedgetop+400);
  box(10, 800, 10);
  popMatrix();


  if ((mouseX > breakedgeleft + breakpadwidth/2) && (mouseX < breakedgeleft + 38 * 20 - breakpadwidth/2)) {
    breakpadx = mouseX;
  }
  if (mouseX < breakedgeleft + breakpadwidth/2) {
    breakpadx = breakedgeleft + breakpadwidth/2;
  }
  if (mouseX > breakedgeleft + 38 * 20 - breakpadwidth/2) {
    breakpadx = breakedgeleft + 38 * 20 - breakpadwidth/2;
  }

  pushMatrix();
  fill(128, 128, 128);
  translate(breakpadx, 700);
  box(breakpadwidth, 15, 15);  
  popMatrix();


  pushMatrix();
  translate(breakballx, breakbally);
  noStroke();
  sphere(breakballradius);
  //stroke(0);
  popMatrix();
}

void chosecolor(int col) {
  switch(col) {
  case 1:
    fill(0, 255, 255);
    break;  
  case 2:
    fill(127, 0, 255);
    break;
  case 3:
    fill(255, 128, 0);
    break;  
  case 4:
    fill(0, 0, 255);
    break;
  case 5:
    fill(0, 255, 0);
    break;
  case 6:
    fill(255, 0, 0);
    break;  
  case 7:
    fill(255, 255, 0);
    break;
  case 8:
    fill(128, 128, 128);
    break;
  }
}

void chosecolorbreak(int col) {
  switch(col) {
  case 1:
    fill(0, 255, 255);
    break;  
  case 2:
    fill(0, 255, 255);
    break;
  case 3:
    fill(255, 255, 0);
    break;  
  case 4:
    fill(127, 0, 255);
    break;
  case 5:
    fill(127, 0, 255);
    break;
  case 6:
    fill(127, 0, 255);
    break;  
  case 7:
    fill(127, 0, 255);
    break;
  case 8:
    fill(255, 0, 0);
    break;
  case 9:
    fill(255, 0, 0);    
    break;
  case 10:
    fill(0, 255, 0);
    break;
  case 11:
    fill(0, 255, 0);    
    break;
  case 12:
    fill(0, 0, 255);
    break;
  case 13:
    fill(0, 0, 255);
    break;
  case 14:
    fill(0, 0, 255);
    break;
  case 15:
    fill(0, 0, 255);
    break;
  case 16:
    fill(255, 128, 0);
    break;
  case 17:
    fill(255, 128, 0);
    break;
  case 18:
    fill(255, 128, 0);
    break;
  case 19:
    fill(255, 128, 0);
    break;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      tetremove();
      left = true;
      tetrxpos--;
      tetrcheck();
    } else if (keyCode == RIGHT) {
      tetremove();
      right = true;
      tetrxpos++;
      tetrcheck();
    } else if (keyCode == UP) {
      tetrdrop=false;
      rotleft = true;
      tetremove();
      rotateleft();
    }
  }
  if (key == 'a') {
    tetremove();
    left = true;
    tetrxpos--;
    tetrcheck();
  } else if (key == 'd') {
    tetremove();
    right = true;
    tetrxpos++;
    tetrcheck();
  } else if (key == 'w') {
    tetrdrop=false;
    rotleft = true;
    tetremove();
    rotateleft();
  }
  if (key == ' ') {
    drop = true;
    tetrspeed = tetrdropspeed;
  }
  start = false;
  gameover = false;
}