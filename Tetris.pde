int tet_area[][];
int new_tet_area[][];
int tet_spd;
int tet_queue[];
int block_area[][];


void setup()
{
  size(1500, 900, P3D);
  init();
}

void draw()
{
  frameRate(60);
}