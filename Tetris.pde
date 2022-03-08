Piece p;

enum PieceType {
  IBLOCK, JBLOCK, LBLOCK, OBLOCK, SBLOCK, TBLOCK, ZBLOCK
};
color LBLUE, DBLUE, ORANGE, YELLOW, GREEN, PURPLE, RED;
float cellSize;

void setup() {
  size (500, 900);
  background(0);
  cellSize = width/12;
  p = new Piece(cellSize, 450, PieceType.IBLOCK);
  LBLUE = color(#00F0F0);
}

void draw() {
  background(0);
  p.display();
}
