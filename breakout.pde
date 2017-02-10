void breakoutlogic() {
    checkball();
}

void checkball() {
  breakballx = breakballx + breakballxspeed;
  breakbally = breakbally + breakballyspeed;

  if (breakballx + breakballradius > breakedgeleft+38*20) {
    breakballxspeed = - breakballxspeed;
    breakballx = breakballx + breakballxspeed;
  }

  if (breakballx - breakballradius < breakedgeleft) {
    breakballxspeed = - breakballxspeed;
    breakballx = breakballx + breakballxspeed;
  }

  if (breakbally - breakballradius < breakedgetop) {
    breakballyspeed = -breakballyspeed;
    breakbally = breakbally + breakballyspeed;
  }

  if (breakbally + breakballradius > 693) {
    if ((breakballx > breakpadx - breakpadwidth/2) && (breakballx < breakpadx + breakpadwidth/2)) {
      breakballrefangle = (breakballx - breakpadx)/breakpadwidth*2*70;
      if (breakballrefangle < 0) {
        breakballxspeed = -pow(sin(breakballrefangle/180*PI), 2)*breakballspeed;
      } else {
        breakballxspeed = pow(sin(breakballrefangle/180*PI), 2)*breakballspeed;
      }
      breakballyspeed = -pow(cos(breakballrefangle/180*PI), 2)*breakballspeed;
      breakbally = breakbally + breakballyspeed;
    }

    if (breakbally - breakballradius > 700) {
      breakballx = 770;
      breakbally = 500;
      breakballspeed = 4;
      breakballrefangle = 45;
      breakballxspeed = pow(sin(breakballrefangle/180*PI), 2)*breakballspeed;
      breakballyspeed = pow(cos(breakballrefangle/180*PI), 2)*breakballspeed;
      livesLeft--;
      if (livesLeft < 0) {
        gameover = true;
      }
    }
  }

  //check collision

  for (int k = 0; k < 8; k++) {
    breakcheckangle = k/4.0*PI;
    breakcheckx = breakballradius*sin(breakcheckangle);
    breakchecky = breakballradius*cos(breakcheckangle);
    breakcheckfieldx = int((20 + breakballx - breakedgeleft + breakcheckx)/20);
    breakcheckfieldy = int((20 + breakbally - breakedgetop + breakchecky)/20);

    if (break_area[breakcheckfieldx][breakcheckfieldy][9] > 0) {

      filltetqueue(break_area[breakcheckfieldx][breakcheckfieldy][9]);
      for (int i = 1; i < 5; i++) {
        break_area[break_area[breakcheckfieldx][breakcheckfieldy][i*2-1]][break_area[breakcheckfieldx][breakcheckfieldy][i*2]][9] = 0;
      }
      if ((k == 0) || (k == 4)) {
        breakballyspeed = -breakballyspeed;
        break;
      }
      if ((k == 2) || (k == 6)) {
        breakballxspeed = -breakballxspeed;
        break;
      }
      if ((k == 1) || (k == 3) || (k == 5) || (k == 7)) {
        breakballyspeed = breakballyspeed*signum(breakballyspeed);
        breakballxspeed = -breakballxspeed*signum(breakballxspeed);
      }
      if (checkwinstate() == true) {
        dobreaklevel();
      }
    }
  }
}

void filltetqueue(int newqueue) {
  for (int i = 1; i < 100; i++) {
    if (tet_queue[i] == 0) {
      tet_queue[i] = newqueue;
      queuelength = i;
      newqueue = 0;
      break;
    };
  }
  if (drop == false) {
    tet_spd = 30-(queuelength*2);
    if (tet_spd < 5) {
      tet_spd = 5;
    }
  }
}

boolean checkwinstate() {
  int sum1 = 0;
  for (int i = 1; i < 31; i++) {
    for (int j = 1; j < 39; j++) {
      sum1 = sum1 + break_area[j][i][9];
    }
  }
  if (sum1 > 0) {
    return false;
  } else {
    return true;
  }
}

void dobreaklevel() {
  fillposx = 5;
  fillposy = 2;
  fillbreak_area(1+fillposx, 1+fillposy, 18);
  fillbreak_area(4+fillposx, 2+fillposy, 16);
  fillbreak_area(3+fillposx, 1+fillposy, 9);
  fillbreak_area(2+fillposx, 3+fillposy, 9);

  fillposx = 9;
  fillposy = 2;
  fillbreak_area(1+fillposx, 1+fillposy, 1);
  fillbreak_area(2+fillposx, 1+fillposy, 2);
  fillbreak_area(6+fillposx, 1+fillposy, 9);
  fillbreak_area(2+fillposx, 2+fillposy, 19);
  fillbreak_area(2+fillposx, 3+fillposy, 3);
  fillbreak_area(4+fillposx, 4+fillposy, 4);
  fillbreak_area(6+fillposx, 3+fillposy, 11);
  fillbreak_area(7+fillposx, 2+fillposy, 5);
  fillbreak_area(8+fillposx, 1+fillposy, 19);
  fillbreak_area(9+fillposx, 3+fillposy, 3);

  fillposx = 19;
  fillposy = 2;
  fillbreak_area(1+fillposx, 1+fillposy, 13);
  fillbreak_area(1+fillposx, 3+fillposy, 3);
  fillbreak_area(2+fillposx, 2+fillposy, 5);
  fillbreak_area(4+fillposx, 1+fillposy, 11);
  fillbreak_area(6+fillposx, 1+fillposy, 2);
  fillbreak_area(4+fillposx, 3+fillposy, 9);
  fillbreak_area(5+fillposx, 4+fillposy, 4);
  fillbreak_area(7+fillposx, 2+fillposy, 13);
  fillbreak_area(10+fillposx, 1+fillposy, 1);
  fillbreak_area(8+fillposx, 3+fillposy, 3);

  fillposx = 29;
  fillposy = 2;
  fillbreak_area(1+fillposx, 1+fillposy, 11);
  fillbreak_area(2+fillposx, 3+fillposy, 11);
  fillbreak_area(3+fillposx, 1+fillposy, 14);
  fillbreak_area(1+fillposx, 2+fillposy, 12);


  fillposx = 19;
  fillposy = 8;
  fillbreak_area(1+fillposx, 1+fillposy, 18);
  fillbreak_area(4+fillposx, 2+fillposy, 16);
  fillbreak_area(3+fillposx, 1+fillposy, 9);
  fillbreak_area(2+fillposx, 3+fillposy, 9);

  fillposx = 23;
  fillposy = 8;
  fillbreak_area(1+fillposx, 1+fillposy, 1);
  fillbreak_area(2+fillposx, 1+fillposy, 2);
  fillbreak_area(6+fillposx, 1+fillposy, 9);
  fillbreak_area(2+fillposx, 2+fillposy, 19);
  fillbreak_area(2+fillposx, 3+fillposy, 3);
  fillbreak_area(4+fillposx, 4+fillposy, 4);
  fillbreak_area(6+fillposx, 3+fillposy, 11);
  fillbreak_area(7+fillposx, 2+fillposy, 5);
  fillbreak_area(8+fillposx, 1+fillposy, 19);
  fillbreak_area(9+fillposx, 3+fillposy, 3);

  fillposx = 5;
  fillposy = 8;
  fillbreak_area(1+fillposx, 1+fillposy, 13);
  fillbreak_area(1+fillposx, 3+fillposy, 3);
  fillbreak_area(2+fillposx, 2+fillposy, 5);
  fillbreak_area(4+fillposx, 1+fillposy, 11);
  fillbreak_area(6+fillposx, 1+fillposy, 2);
  fillbreak_area(4+fillposx, 3+fillposy, 9);
  fillbreak_area(5+fillposx, 4+fillposy, 4);
  fillbreak_area(7+fillposx, 2+fillposy, 13);
  fillbreak_area(10+fillposx, 1+fillposy, 1);
  fillbreak_area(8+fillposx, 3+fillposy, 3);

  fillposx = 15;
  fillposy = 8;
  fillbreak_area(1+fillposx, 1+fillposy, 11);
  fillbreak_area(2+fillposx, 3+fillposy, 11);
  fillbreak_area(3+fillposx, 1+fillposy, 14);
  fillbreak_area(1+fillposx, 2+fillposy, 12);
}


void fillbreak_area(int breaktetrx, int breaktetry, int breaktetrnumber) {
  for (int i = 1; i < 5; i++) {
    break_area[breaktetrx+breaktetrominos[breaktetrnumber][i*2-1]][breaktetry+breaktetrominos[breaktetrnumber][i*2]][9] = breaktetrnumber;
    for (int j = 1; j < 5; j++) {
      break_area[breaktetrx+breaktetrominos[breaktetrnumber][i*2-1]][breaktetry+breaktetrominos[breaktetrnumber][i*2]][j*2-1] = breaktetrx + breaktetrominos[breaktetrnumber][2*j-1];
      break_area[breaktetrx+breaktetrominos[breaktetrnumber][i*2-1]][breaktetry+breaktetrominos[breaktetrnumber][i*2]][j*2] = breaktetry + breaktetrominos[breaktetrnumber][2*j];
    }
  }
}

int signum(float f) {
  if (f > 0) return 1;
  if (f < 0) return -1;
  return 0;
}
