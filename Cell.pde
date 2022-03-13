class Cell {

  BlockType type;
  float x, y;
  float size;

  Cell(float x, float y) {
    size = cellSize;
    this.x = x*size;
    this.y = y*size;
    type = NONE;
  }

  void display() {
    fill(type.c);
    rect(x, y, size, size);
  }

  boolean overlaps() {
    if ((x-size < mouseX && mouseX < x+size) && y-size < mouseY && mouseY < y+size)
      return true;
    else
      return false;
  }
}
