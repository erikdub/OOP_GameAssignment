void init() {

  tetrfield = new int[4][4];
  tetrfieldnew = new int[4][4];
  tetrqueue = new int[100];
  tetrspeed = 30;
  playfield = new int[16][26];

  for (int i = 0; i < 22; i++) {
    playfield[2][i]=8;
    playfield[13][i]=8;
  }
  for (int i = 0; i < 13; i++) {
    playfield[i][2]=8;
  }
  lines = 0;
  points = 0;
  lives = 3;
  level = 0;
  breakfield = new int[40][40][10];
  definetetrominos();
  dobreaklevel();

  breakballx = 770;
  breakbally = 500;
  breakballspeed = 4;
  breakballrefangle = 45;
  breakballxspeed = pow(sin(breakballrefangle/180*PI), 2)*breakballspeed;
  breakballyspeed = pow(cos(breakballrefangle/180*PI), 2)*breakballspeed;
}