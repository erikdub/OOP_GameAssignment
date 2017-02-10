void definetetrominos() {
  breaktetrominos = new int[20][9];

  breaktetrominos[1][1] = 0;  // []
  breaktetrominos[1][2] = 0;  // []
  breaktetrominos[1][3] = 0;  // []
  breaktetrominos[1][4] = 1;  // []
  breaktetrominos[1][5] = 0;
  breaktetrominos[1][6] = 2;
  breaktetrominos[1][7] = 0;
  breaktetrominos[1][8] = 3;

  breaktetrominos[2][1] = 0;  // [][][][]
  breaktetrominos[2][2] = 0;  
  breaktetrominos[2][3] = 1;  
  breaktetrominos[2][4] = 0;  
  breaktetrominos[2][5] = 2;
  breaktetrominos[2][6] = 0;
  breaktetrominos[2][7] = 3;
  breaktetrominos[2][8] = 0;
  
  breaktetrominos[3][1] = 0;  // [][]
  breaktetrominos[3][2] = 0;  // [][]
  breaktetrominos[3][3] = 1;  
  breaktetrominos[3][4] = 0;  
  breaktetrominos[3][5] = 0;
  breaktetrominos[3][6] = 1;
  breaktetrominos[3][7] = 1;
  breaktetrominos[3][8] = 1;
  
  breaktetrominos[4][1] = 0;  //   []
  breaktetrominos[4][2] = 0;  // [][][]
  breaktetrominos[4][3] = 1;  
  breaktetrominos[4][4] = -1;  
  breaktetrominos[4][5] = 1;
  breaktetrominos[4][6] = 0;
  breaktetrominos[4][7] = 2;
  breaktetrominos[4][8] = 0;
  
  breaktetrominos[5][1] = 0;  // [][][]
  breaktetrominos[5][2] = 0;  //   []
  breaktetrominos[5][3] = 1;  
  breaktetrominos[5][4] = 0;  
  breaktetrominos[5][5] = 2;
  breaktetrominos[5][6] = 0;
  breaktetrominos[5][7] = 1;
  breaktetrominos[5][8] = 1;
  
  breaktetrominos[6][1] = 0;  // []
  breaktetrominos[6][2] = 0;  // [][]
  breaktetrominos[6][3] = 0;  // []
  breaktetrominos[6][4] = 1;  
  breaktetrominos[6][5] = 0;
  breaktetrominos[6][6] = 2;
  breaktetrominos[6][7] = 1;
  breaktetrominos[6][8] = 1;
  
  breaktetrominos[7][1] = 1;  //  []
  breaktetrominos[7][2] = -1; //[][]
  breaktetrominos[7][3] = 0;  //  []
  breaktetrominos[7][4] = 0;  
  breaktetrominos[7][5] = 1;
  breaktetrominos[7][6] = 0;
  breaktetrominos[7][7] = 1;
  breaktetrominos[7][8] = 1;
  
  breaktetrominos[8][1] = 0;   //   []
  breaktetrominos[8][2] = 0;   // [][]
  breaktetrominos[8][3] = -1;  // []
  breaktetrominos[8][4] = 1;  
  breaktetrominos[8][5] = 0;
  breaktetrominos[8][6] = 1;
  breaktetrominos[8][7] = -1;
  breaktetrominos[8][8] = 2;
  
  breaktetrominos[9][1] = 0;   //  [][]
  breaktetrominos[9][2] = 0;   //[][]
  breaktetrominos[9][3] = 1;  
  breaktetrominos[9][4] = 0;  
  breaktetrominos[9][5] = -1;
  breaktetrominos[9][6] = 1;
  breaktetrominos[9][7] = 0;
  breaktetrominos[9][8] = 1;
  
  breaktetrominos[10][1] = 0;   // []
  breaktetrominos[10][2] = 0;   // [][]
  breaktetrominos[10][3] = 0;   //   []
  breaktetrominos[10][4] = 1;  
  breaktetrominos[10][5] = 1;
  breaktetrominos[10][6] = 1;
  breaktetrominos[10][7] = 1;
  breaktetrominos[10][8] = 2;
  
  breaktetrominos[11][1] = 0;   // [][]
  breaktetrominos[11][2] = 0;   //   [][]
  breaktetrominos[11][3] = 1;  
  breaktetrominos[11][4] = 0;  
  breaktetrominos[11][5] = 1;
  breaktetrominos[11][6] = 1;
  breaktetrominos[11][7] = 2;
  breaktetrominos[11][8] = 1;
  
  breaktetrominos[12][1] = 0;   // []
  breaktetrominos[12][2] = 0;   // []
  breaktetrominos[12][3] = 0;   // [][]
  breaktetrominos[12][4] = 1;  
  breaktetrominos[12][5] = 0;
  breaktetrominos[12][6] = 2;
  breaktetrominos[12][7] = 1;
  breaktetrominos[12][8] = 2;
  
  breaktetrominos[13][1] = 0;   // [][][]
  breaktetrominos[13][2] = 0;   // []
  breaktetrominos[13][3] = 1;   
  breaktetrominos[13][4] = 0;  
  breaktetrominos[13][5] = 2;
  breaktetrominos[13][6] = 0;
  breaktetrominos[13][7] = 0;
  breaktetrominos[13][8] = 1;
  
  breaktetrominos[14][1] = 0;   //[][]
  breaktetrominos[14][2] = 0;   //  []
  breaktetrominos[14][3] = 1;   //  []
  breaktetrominos[14][4] = 0;  
  breaktetrominos[14][5] = 1;
  breaktetrominos[14][6] = 1;
  breaktetrominos[14][7] = 1;
  breaktetrominos[14][8] = 2;
  
  breaktetrominos[15][1] = 0;   //     []
  breaktetrominos[15][2] = 0;   // [][][]
  breaktetrominos[15][3] = 1;   
  breaktetrominos[15][4] = 0;  
  breaktetrominos[15][5] = 2;
  breaktetrominos[15][6] = 0;
  breaktetrominos[15][7] = 2;
  breaktetrominos[15][8] = -1;
  
  breaktetrominos[16][1] = 0;   // []
  breaktetrominos[16][2] = 0;   // []
  breaktetrominos[16][3] = 0;   // [][]
  breaktetrominos[16][4] = 1;  
  breaktetrominos[16][5] = 0;
  breaktetrominos[16][6] = 2;
  breaktetrominos[16][7] = -1;
  breaktetrominos[16][8] = 2;
  
  breaktetrominos[17][1] = 0;   // []
  breaktetrominos[17][2] = 0;   // [][][]
  breaktetrominos[17][3] = 0;   
  breaktetrominos[17][4] = 1;  
  breaktetrominos[17][5] = 1;
  breaktetrominos[17][6] = 1;
  breaktetrominos[17][7] = 2;
  breaktetrominos[17][8] = 1;
  
  breaktetrominos[18][1] = 0;   // [][]
  breaktetrominos[18][2] = 0;   // []
  breaktetrominos[18][3] = 1;   // []
  breaktetrominos[18][4] = 0;  
  breaktetrominos[18][5] = 0;
  breaktetrominos[18][6] = 1;
  breaktetrominos[18][7] = 0;
  breaktetrominos[18][8] = 2;
  
  breaktetrominos[19][1] = 0;   // [][][]
  breaktetrominos[19][2] = 0;   //    []
  breaktetrominos[19][3] = 1;   
  breaktetrominos[19][4] = 0;  
  breaktetrominos[19][5] = 2;
  breaktetrominos[19][6] = 0;
  breaktetrominos[19][7] = 2;
  breaktetrominos[19][8] = 1;
  
}