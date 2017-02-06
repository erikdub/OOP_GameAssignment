void init()
{
  //Initialising variables and 1D and 2D arrays
  tet_area = new int[4][4];
  new_tet_area = new int[4][4];
  tet_spd = 30;
  tet_queue = new int[100];
  block_area = new int[16][26];
  
  //For loops initialise the starting position of blocks
  for(int i = 0; i < 22; i++)
  {
    block_area[2][i] = 8;
    block_area[13][i] = 8;
  }
  
  for(int i = 0; i < 13; i++)
  {
    block_area[i][2] = 8;
  }
  
}