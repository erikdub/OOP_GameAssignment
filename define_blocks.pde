void define_blocks()
{
  break_blocks = new int[20][9];
  
  break_blocks[1][1] = 0;  // []
  break_blocks[1][2] = 0;  // []
  break_blocks[1][3] = 0;  // []
  break_blocks[1][4] = 1;  // []
  break_blocks[1][5] = 0;
  break_blocks[1][6] = 2;
  break_blocks[1][7] = 0;
  break_blocks[1][8] = 3;

  break_blocks[2][1] = 0;  // [][][][]
  break_blocks[2][2] = 0;  
  break_blocks[2][3] = 1;  
  break_blocks[2][4] = 0;  
  break_blocks[2][5] = 2;
  break_blocks[2][6] = 0;
  break_blocks[2][7] = 3;
  break_blocks[2][8] = 0;
  
  break_blocks[3][1] = 0;  // [][]
  break_blocks[3][2] = 0;  // [][]
  break_blocks[3][3] = 1;  
  break_blocks[3][4] = 0;  
  break_blocks[3][5] = 0;
  break_blocks[3][6] = 1;
  break_blocks[3][7] = 1;
  break_blocks[3][8] = 1;
  
  break_blocks[4][1] = 0;  //   []
  break_blocks[4][2] = 0;  // [][][]
  break_blocks[4][3] = 1;  
  break_blocks[4][4] = -1;  
  break_blocks[4][5] = 1;
  break_blocks[4][6] = 0;
  break_blocks[4][7] = 2;
  break_blocks[4][8] = 0;
  
  break_blocks[5][1] = 0;  // [][][]
  break_blocks[5][2] = 0;  //   []
  break_blocks[5][3] = 1;  
  break_blocks[5][4] = 0;  
  break_blocks[5][5] = 2;
  break_blocks[5][6] = 0;
  break_blocks[5][7] = 1;
  break_blocks[5][8] = 1;
  
  break_blocks[6][1] = 0;  // []
  break_blocks[6][2] = 0;  // [][]
  break_blocks[6][3] = 0;  // []
  break_blocks[6][4] = 1;  
  break_blocks[6][5] = 0;
  break_blocks[6][6] = 2;
  break_blocks[6][7] = 1;
  break_blocks[6][8] = 1;
  
  break_blocks[7][1] = 1;  //  []
  break_blocks[7][2] = -1; //[][]
  break_blocks[7][3] = 0;  //  []
  break_blocks[7][4] = 0;  
  break_blocks[7][5] = 1;
  break_blocks[7][6] = 0;
  break_blocks[7][7] = 1;
  break_blocks[7][8] = 1;
  
  break_blocks[8][1] = 0;   //   []
  break_blocks[8][2] = 0;   // [][]
  break_blocks[8][3] = -1;  // []
  break_blocks[8][4] = 1;  
  break_blocks[8][5] = 0;
  break_blocks[8][6] = 1;
  break_blocks[8][7] = -1;
  break_blocks[8][8] = 2;
  
  break_blocks[9][1] = 0;   //   [][]
  break_blocks[9][2] = 0;   // [][]
  break_blocks[9][3] = 1;  
  break_blocks[9][4] = 0;  
  break_blocks[9][5] = -1;
  break_blocks[9][6] = 1;
  break_blocks[9][7] = 0;
  break_blocks[9][8] = 1;
  
  break_blocks[10][1] = 0;   // []
  break_blocks[10][2] = 0;   // [][]
  break_blocks[10][3] = 0;   //   []
  break_blocks[10][4] = 1;  
  break_blocks[10][5] = 1;
  break_blocks[10][6] = 1;
  break_blocks[10][7] = 1;
  break_blocks[10][8] = 2;
  
  break_blocks[11][1] = 0;   // [][]
  break_blocks[11][2] = 0;   //   [][]
  break_blocks[11][3] = 1;  
  break_blocks[11][4] = 0;  
  break_blocks[11][5] = 1;
  break_blocks[11][6] = 1;
  break_blocks[11][7] = 2;
  break_blocks[11][8] = 1;
  
  break_blocks[12][1] = 0;   // []
  break_blocks[12][2] = 0;   // []
  break_blocks[12][3] = 0;   // [][]
  break_blocks[12][4] = 1;  
  break_blocks[12][5] = 0;
  break_blocks[12][6] = 2;
  break_blocks[12][7] = 1;
  break_blocks[12][8] = 2;
  
  break_blocks[13][1] = 0;   // [][][]
  break_blocks[13][2] = 0;   // []
  break_blocks[13][3] = 1;   
  break_blocks[13][4] = 0;  
  break_blocks[13][5] = 2;
  break_blocks[13][6] = 0;
  break_blocks[13][7] = 0;
  break_blocks[13][8] = 1;
  
  break_blocks[14][1] = 0;   // [][]
  break_blocks[14][2] = 0;   //   []
  break_blocks[14][3] = 1;   //   []
  break_blocks[14][4] = 0;  
  break_blocks[14][5] = 1;
  break_blocks[14][6] = 1;
  break_blocks[14][7] = 1;
  break_blocks[14][8] = 2;
  
  break_blocks[15][1] = 0;   // []
  break_blocks[15][2] = 0;   // [][][]
  break_blocks[15][3] = 1;   
  break_blocks[15][4] = 0;  
  break_blocks[15][5] = 2;
  break_blocks[15][6] = 0;
  break_blocks[15][7] = 2;
  break_blocks[15][8] = -1;
  
  break_blocks[16][1] = 0;   // []
  break_blocks[16][2] = 0;   // []
  break_blocks[16][3] = 0;   // [][]
  break_blocks[16][4] = 1;  
  break_blocks[16][5] = 0;
  break_blocks[16][6] = 2;
  break_blocks[16][7] = -1;
  break_blocks[16][8] = 2;
  
  break_blocks[17][1] = 0;   // []
  break_blocks[17][2] = 0;   // [][][]
  break_blocks[17][3] = 0;   
  break_blocks[17][4] = 1;  
  break_blocks[17][5] = 1;
  break_blocks[17][6] = 1;
  break_blocks[17][7] = 2;
  break_blocks[17][8] = 1;
  
  break_blocks[18][1] = 0;   // [][]
  break_blocks[18][2] = 0;   // []
  break_blocks[18][3] = 1;   // []
  break_blocks[18][4] = 0;  
  break_blocks[18][5] = 0;
  break_blocks[18][6] = 1;
  break_blocks[18][7] = 0;
  break_blocks[18][8] = 2;
  
  break_blocks[19][1] = 0;   // [][][]
  break_blocks[19][2] = 0;   //     []
  break_blocks[19][3] = 1;   
  break_blocks[19][4] = 0;  
  break_blocks[19][5] = 2;
  break_blocks[19][6] = 0;
  break_blocks[19][7] = 2;
  break_blocks[19][8] = 1;
}