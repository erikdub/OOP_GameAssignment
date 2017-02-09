void breakout()
{
  
}

void break_level()
{
  fillposx = 5;
  fillposy = 2;
  fillbreakfield(1+fillposx, 1+fillposy, 18);
  fillbreakfield(4+fillposx, 2+fillposy, 16);
  fillbreakfield(3+fillposx, 1+fillposy, 9);
  fillbreakfield(2+fillposx, 3+fillposy, 9);
  
  
}

void fillbreakfield(int breaktetrx, int breaktetry, int breaktetrnumber) {
  for (int i = 1; i < 5; i++) {
    break_area[breaktetrx+breaktetro[breaktetrnumber][i*2-1]][breaktetry+breaktetro[breaktetrnumber][i*2]][9] = breaktetrnumber;
    for (int j = 1; j < 5; j++) {
      break_area[breaktetrx+breaktetro[breaktetrnumber][i*2-1]][breaktetry+breaktetro[breaktetrnumber][i*2]][j*2-1] = breaktetrx + breaktetro[breaktetrnumber][2*j-1];
      break_area[breaktetrx+breaktetro[breaktetrnumber][i*2-1]][breaktetry+breaktetro[breaktetrnumber][i*2]][j*2] = breaktetry + breaktetro[breaktetrnumber][2*j];
    }
  }
}