void tetrislogic() {
  if (tetractive == false) {
    tetrcreate();
  }
  timer = millis();
  if ((timer-timernew)/15 > tetrspeed) {
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
      if (tetrfield[i][j] > 0) {  
        playfield[tetrxpos+i][tetrypos+j] = 0;
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
      tetrsum = tetrsum + playfield[tetrxpos+i][tetrypos+j] * tetrfieldnew[i][j];
    }
  }
  //print (tetrsum);
  if (tetrsum == 0) {
    tetrdrop = false;
    right = false;
    left = false;
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        tetrfield[i][j] = tetrfieldnew[i][j];
      }
    }
  } else {
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        tetrfieldnew[i][j] = tetrfield[i][j];
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
      if (tetrfield[i][j] > 0) {  
        playfield[tetrxpos+i][tetrypos+j] = tetrnumber;
      }
    }
  }
}

void rotateleft() {
  tetrfieldnew = new int[4][4]; 
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      tetrfieldnew[3-j][i] = tetrfield[i][j];
    }
  }
  tetrcheck();
}

void checkplayfield() {
  tetrlinesatonce = 0;
  for (int i = 20; i > 2; i--) {
    tetrsum = 1;
    for (int j = 3; j < 13; j++) {
      tetrsum = tetrsum * playfield[j][i];
    }
    if (tetrsum > 0) {
      removeline(i);
      lines++;
      tetrlinesatonce++;
    }
  }
  points = points + 10*tetrlinesatonce*tetrlinesatonce*(31-tetrspeed);
  if (tetrlinesatonce == 4) {
    lives++;
  }
}

void removeline(int linenumber) {
  for (int i = linenumber; i < 22; i++) {
    for (int j = 3; j < 13; j++) {
      playfield[j][i] = playfield[j][i+1];
    }
  }
}


void checkgameover() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (tetrfield[i][j] > 0) {    
        sum = sum + playfield[tetrxpos+i][tetrypos+j];
      }
    }
  }
  if (sum > 0) {
    gameover = true;
    sum = 0;
  }
}

void tetrcreate() {
  checkplayfield();
  drop = false;
  timernew = 0;
  tetrspeed = 30-queuelength;
  if (tetrspeed < 5) {
    tetrspeed = 5;
  }

  tetrxpos = 5;
  tetrypos = 19;
  //tetrnumber = int(random(1, 8));

  if (tetrqueue[1] == 0) {
    tetrnumber = 0;
  }
  if ((tetrqueue[1] == 1) || (tetrqueue[1] == 2)) {
    tetrnumber = 1;
  }
  if (tetrqueue[1] == 3) {
    tetrnumber = 7;
  }
  if ((tetrqueue[1] > 3) && (tetrqueue[1] < 8)) {
    tetrnumber = 2;
  }
  if ((tetrqueue[1] == 8) || (tetrqueue[1] == 9)) {
    tetrnumber = 6;
  }
  if ((tetrqueue[1] == 10) || (tetrqueue[1] == 11)) {
    tetrnumber = 5;
  }
  if ((tetrqueue[1] > 11) && (tetrqueue[1] < 16)) {
    tetrnumber = 4;
  }
  if ((tetrqueue[1] > 15) && (tetrqueue[1] < 20)) {
    tetrnumber = 3;
  }
  if (tetrnumber > 0) {
    tetractive = true;
    for (int i = 2; i < 100; i++) {
      tetrqueue[i-1]=tetrqueue[i];
    };
    queuelength--;
    if (queuelength < 1) {
      queuelength = 1;
    }
  }

  tetrfield = new int[4][4];

  switch(tetrnumber) {
  case 1:
    tetrfield[0][1] = tetrnumber;
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[3][1] = tetrnumber;
    break;  
  case 2:
    tetrfield[0][1] = tetrnumber;
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[1][2] = tetrnumber;
    break;
  case 3:
    tetrfield[0][1] = tetrnumber;
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[0][2] = tetrnumber;
    break;  
  case 4:
    tetrfield[0][1] = tetrnumber;
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[2][2] = tetrnumber;
    break;
  case 5:
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[0][2] = tetrnumber;
    tetrfield[1][2] = tetrnumber;
    break;
  case 6:
    tetrfield[0][1] = tetrnumber;
    tetrfield[1][1] = tetrnumber;
    tetrfield[1][2] = tetrnumber;
    tetrfield[2][2] = tetrnumber;
    break;  
  case 7:
    tetrfield[1][1] = tetrnumber;
    tetrfield[2][1] = tetrnumber;
    tetrfield[1][2] = tetrnumber;
    tetrfield[2][2] = tetrnumber;
    break;
  }

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      tetrfieldnew[i][j] = tetrfield[i][j];
    }
  }

  checkgameover();
}