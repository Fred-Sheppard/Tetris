Block[] blocks = new Block[7]; //<>//
Cell[] cells;
int[] border;

enum BlockType {
  IBLOCK(#00F0F0), JBLOCK(#0000F0), LBLOCK(#F0A000), OBLOCK(#FFFF00),
    SBLOCK(#F0F000), TBLOCK(#00F000), ZBLOCK(#A000F0), NONE(0), BORDER(127);
  color c;
  BlockType(color c) {
    this.c = c;
  }
};
BlockType IBLOCK = BlockType.IBLOCK;
BlockType JBLOCK = BlockType.JBLOCK;
BlockType LBLOCK = BlockType.LBLOCK;
BlockType OBLOCK = BlockType.OBLOCK;
BlockType SBLOCK = BlockType.SBLOCK;
BlockType TBLOCK = BlockType.TBLOCK;
BlockType ZBLOCK = BlockType.ZBLOCK;
BlockType BORDER = BlockType.BORDER;
BlockType NONE = BlockType.NONE;

color LBLUE, DBLUE, ORANGE, YELLOW, GREEN, PURPLE, RED;
float cellSize;
int screenHeight;
float counter;

void setup() {
  size(504, 924);
  background(0);
  cellSize = width/12;
  screenHeight = floor(height/cellSize);
  //int screenHeight = 22;
  cells = new Cell[screenHeight*12];
  border = new int[2*12 + 2*(screenHeight-2)];

  LBLUE = IBLOCK.c;
  DBLUE = JBLOCK.c;
  ORANGE = LBLOCK.c;
  YELLOW = OBLOCK.c;
  GREEN = SBLOCK.c;
  PURPLE = TBLOCK.c;
  RED = ZBLOCK.c;
  
  //Border Cells
  int[] border = new int[64];
  for (int i = 0; i < 12; i++) {
    border[i] = i;
    border[i+52] = 252+i;
  }
  int a = 1;
  for (int i = 0; i < 52; i+=2) {
    if (border[i+12] == 0)
      border[i+12] = 12*a;
    if (border[i+11] == 0)
      border[i+11] = 12*a-1;
    a++;
  }

  //Create Cells
  for (int y = 0; y < screenHeight; y++) {
    for (int x = 0; x<12; x++) {
      int index = x+y*12;
      cells[index] = new Cell(x, y);
      for (int i : border) {
        if (index == i) 
          cells[index].type = BORDER;
      }
    }
  }

  blocks[0] = new IBlock(6, 1);
  //blocks[1] = new JBlock(40, 300);
  //blocks[2] = new LBlock(40, 450);
  //blocks[3] = new OBlock(40, 600);
  //blocks[4] = new SBlock(40, 700);
  //blocks[5] = new TBlock(300, 100);
  //blocks[6] = new ZBlock(300, 250);

  blocks[0].update();
}

void draw() {
  background(0);
  for (Cell c : cells) {
    c.type = NONE;
    //Border Cells
    for (int x = 0; x < 12; x++) {
      cells[x].type = BORDER;
      cells[x+12*screenHeight-12].type = BORDER;
    }
    for (int y = 0; y < 22; y++) {
      cells[y*12].type = BORDER;
      cells[11+y*12].type = BORDER;
    }

    Block b = blocks[0];
    counter++;
    if (counter > 10000) {
      counter = 0;
      b.y++;
    }
    b.update();
    c.display();
  }
}

void mousePressed() {
  //for (Block b : blocks) {
  //b.rotation++;
  //  if (b.rotation > b.maxRotation)
  //    b.rotation = 0;
  //}
}

void keyPressed() {
  println("debug");
}
