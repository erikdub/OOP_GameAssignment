void init() {

  tet_area = new int[4][4];
  new_tet_area = new int[4][4];
  tet_queue = new int[100];
  tet_spd = 30;
  block_area = new int[16][26];

  for (int i = 0; i < 22; i++) {
    block_area[2][i]=8;
    block_area[13][i]=8;
  }
  for (int i = 0; i < 13; i++) {
    block_area[i][2]=8;
  }
  lines = 0;
  points = 0;
  livesLeft = 3;
  level = 0;
  break_area = new int[40][40][10];
  definetetrominos();
  dobreaklevel();

  breakballx = 770;
  breakbally = 500;
  breakballspeed = 4;
  breakballrefangle = 45;
  breakballxspeed = pow(sin(breakballrefangle/180*PI), 2)*breakballspeed;
  breakballyspeed = pow(cos(breakballrefangle/180*PI), 2)*breakballspeed;
}
