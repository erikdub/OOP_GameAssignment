void tetrislogic() {
  if (tetractive == false) {
    tetrcreate();
  }
  timer = millis();
  if ((timer-timernew)/15 > tet_spd) {
    timernew = millis();
    tetremove();
    tetrdrop = true;
    tetrypos--;
    tetrcheck();
  }
}


void tetremove() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (tet_area[i][j] > 0) {
        block_area[tetrxpos+i][tetrypos+j] = 0;
      }
    }
  }
}


void tetrcheck() {
  if (tetractive == false) {
    return;
  }
  tetrsum = 0;

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      tetrsum = tetrsum + block_area[tetrxpos+i][tetrypos+j] * new_tet_area[i][j];
    }
  }
  //print (tetrsum);
  if (tetrsum == 0) {
    tetrdrop = false;
    right = false;
    left = false;
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        tet_area[i][j] = new_tet_area[i][j];
      }
    }
  } else {
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        new_tet_area[i][j] = tet_area[i][j];
      }
    }

    if (left) {
      tetrxpos++;
      left = false;
      tetrdrop=false;
      rotleft = false;
      tetrupdate();
    }
    if (right) {
      tetrxpos--;
      right = false;
      tetrdrop=false;
      rotleft = false;
      tetrupdate();
    }
    if (tetrdrop) {
      tetrypos++;
      tetrupdate();
      tetractive = false;
      tetrdrop=false;
      rotleft = false;
    }
  }

  tetrupdate();
}


void tetrupdate() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (tet_area[i][j] > 0) {
        block_area[tetrxpos+i][tetrypos+j] = tetrnumber;
      }
    }
  }
}

void rotateleft() {
  new_tet_area = new int[4][4];
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      new_tet_area[3-j][i] = tet_area[i][j];
    }
  }
  tetrcheck();
}

void checkblock_area() {
  tetrlinesatonce = 0;
  for (int i = 20; i > 2; i--) {
    tetrsum = 1;
    for (int j = 3; j < 13; j++) {
      tetrsum = tetrsum * block_area[j][i];
    }
    if (tetrsum > 0) {
      removeline(i);
      lines++;
      tetrlinesatonce++;
    }
  }
  points = points + 10*tetrlinesatonce*tetrlinesatonce*(31-tet_spd);
  if (tetrlinesatonce == 4) {
    livesLeft++;
  }
}

void removeline(int linenumber) {
  for (int i = linenumber; i < 22; i++) {
    for (int j = 3; j < 13; j++) {
      block_area[j][i] = block_area[j][i+1];
    }
  }
}


void checkgameover() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (tet_area[i][j] > 0) {
        sum = sum + block_area[tetrxpos+i][tetrypos+j];
      }
    }
  }
  if (sum > 0) {
    gameover = true;
    sum = 0;
  }
}

void tetrcreate() {
  checkblock_area();
  drop = false;
  timernew = 0;
  tet_spd = 30-queuelength;
  if (tet_spd < 5) {
    tet_spd = 5;
  }

  tetrxpos = 5;
  tetrypos = 19;
  //tetrnumber = int(random(1, 8));

  if (tet_queue[1] == 0) {
    tetrnumber = 0;
  }
  if ((tet_queue[1] == 1) || (tet_queue[1] == 2)) {
    tetrnumber = 1;
  }
  if (tet_queue[1] == 3) {
    tetrnumber = 7;
  }
  if ((tet_queue[1] > 3) && (tet_queue[1] < 8)) {
    tetrnumber = 2;
  }
  if ((tet_queue[1] == 8) || (tet_queue[1] == 9)) {
    tetrnumber = 6;
  }
  if ((tet_queue[1] == 10) || (tet_queue[1] == 11)) {
    tetrnumber = 5;
  }
  if ((tet_queue[1] > 11) && (tet_queue[1] < 16)) {
    tetrnumber = 4;
  }
  if ((tet_queue[1] > 15) && (tet_queue[1] < 20)) {
    tetrnumber = 3;
  }
  if (tetrnumber > 0) {
    tetractive = true;
    for (int i = 2; i < 100; i++) {
      tet_queue[i-1]=tet_queue[i];
    };
    queuelength--;
    if (queuelength < 1) {
      queuelength = 1;
    }
  }

  tet_area = new int[4][4];

  switch(tetrnumber) {
  case 1:
    tet_area[0][1] = tetrnumber;
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[3][1] = tetrnumber;
    break;
  case 2:
    tet_area[0][1] = tetrnumber;
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[1][2] = tetrnumber;
    break;
  case 3:
    tet_area[0][1] = tetrnumber;
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[0][2] = tetrnumber;
    break;
  case 4:
    tet_area[0][1] = tetrnumber;
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[2][2] = tetrnumber;
    break;
  case 5:
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[0][2] = tetrnumber;
    tet_area[1][2] = tetrnumber;
    break;
  case 6:
    tet_area[0][1] = tetrnumber;
    tet_area[1][1] = tetrnumber;
    tet_area[1][2] = tetrnumber;
    tet_area[2][2] = tetrnumber;
    break;
  case 7:
    tet_area[1][1] = tetrnumber;
    tet_area[2][1] = tetrnumber;
    tet_area[1][2] = tetrnumber;
    tet_area[2][2] = tetrnumber;
    break;
  }

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      new_tet_area[i][j] = tet_area[i][j];
    }
  }

  checkgameover();
}
