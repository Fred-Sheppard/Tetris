Block[] blocks = new Block[7];

enum BlockType {
  IBLOCK, JBLOCK, LBLOCK, OBLOCK, SBLOCK, TBLOCK, ZBLOCK
};
color LBLUE, DBLUE, ORANGE, YELLOW, GREEN, PURPLE, RED;
float cellSize;

void setup() {
  size (500, 900);
  background(0);
  cellSize = width/12;
  blocks[0] = new IBlock(40, 100);
  blocks[1] = new JBlock(40, 300);
  blocks[2] = new LBlock(40, 450);
  blocks[3] = new OBlock(40, 600);
  blocks[4] = new SBlock(40, 700);
  blocks[5] = new TBlock(300, 100);
  blocks[6] = new ZBlock(300, 250);
  LBLUE = #00F0F0;
  DBLUE = #0000F0;
  ORANGE = #F0A000;
  YELLOW = #F0F000;
  GREEN = #00F000;
  PURPLE = #A000F0;
  RED = #F00000;
}

void draw() {
  background(0);
  for (Block b : blocks) {
    b.display();
  }
}

void mousePressed() {
  for (Block b : blocks) {
    b.rotation++;
    if (b.rotation > b.maxRotation) b.rotation = 0;
  }
}
