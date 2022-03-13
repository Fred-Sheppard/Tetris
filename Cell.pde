class Cell {

  BlockType type;
  float x, y;
  float size;
  int index;
  boolean fixed;

  Cell(float x, float y, int index) {
    size = cellSize;
    this.x = x*size;
    this.y = y*size;
    this.index = index;
    type = NONE;
  }

  void display() {
    fill(type.c);
    rect(x, y, size, size);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    if (type==BORDER)
      text(index/12, x+size/2, y+size/2);
  }

  boolean overlaps() {
    if ((x-size < mouseX && mouseX < x+size) && y-size < mouseY && mouseY < y+size)
      return true;
    else
      return false;
  }
}
