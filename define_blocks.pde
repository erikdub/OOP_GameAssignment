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
  
  break_blocks[1][1] = 0;  //   []
  break_blocks[1][2] = 0;  // [][][]
  break_blocks[1][3] = 1; 
  break_blocks[1][4] = -1;
  break_blocks[1][5] = 1;
  break_blocks[1][6] = 0;
  break_blocks[1][7] = 2;
  break_blocks[1][8] = 0;
  
  break_blocks[1][1] = 0;  // [][][]
  break_blocks[1][2] = 0;  //   []
  break_blocks[1][3] = 1; 
  break_blocks[1][4] = 0;
  break_blocks[1][5] = 2;
  break_blocks[1][6] = 0;
  break_blocks[1][7] = 1;
  break_blocks[1][8] = 1;
  
  break_blocks[1][1] = 1;  //   []
  break_blocks[1][2] = -1; // [][]
  break_blocks[1][3] = 0;  //   []
  break_blocks[1][4] = 0;
  break_blocks[1][5] = 1;
  break_blocks[1][6] = 0;
  break_blocks[1][7] = 1;
  break_blocks[1][8] = 1;
  
  break_blocks[1][1] = 0;  //   []
  break_blocks[1][2] = 0;  // [][]
  break_blocks[1][3] = -1; // []
  break_blocks[1][4] = 1;
  break_blocks[1][5] = 0;
  break_blocks[1][6] = 1;
  break_blocks[1][7] = -1;
  break_blocks[1][8] = 2;
  
}