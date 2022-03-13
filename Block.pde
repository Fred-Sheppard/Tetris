class Block {

  int x, y;
  int rotation, maxRotation;
  float size;

  Block(int x, int y) {
    this.x = x;
    this.y = y;
    size = cellSize;
  }

  void update() {
    x = floor(map(mouseX, 0, width, 0, 12));
    x = constrain(x, 1, 10);
    y = constrain(y, 1, 17);
    updateCells();
  }

  void updateCells() {
  }

  void display() {
  }
}

class IBlock extends Block {

  IBlock(int x, int y) {
    super(x, y);
    maxRotation = 3;
  }

  void updateCells() {
    for (int i = 0; i < 4; i++) {
      cells[floor(x+12*(y+i))].type=IBLOCK;
    }
  }

  void display() {

    fill(255);
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        rect(x+i*size, y+j*size, size, size);
      }
    }
    fill(LBLUE);
    switch (rotation) {
    case 0:
      for (int i = 0; i < 4; i++) {
        rect(x + i*size, y+size, size, size);
      }
      break;

    case 1:
      for (int i = 0; i < 4; i++) {
        rect(x+2*size, y + size*i, size, size);
      }
      break;

    case 2:
      for (int i = 0; i < 4; i++) {
        rect(x + i*size, y+ 2*size, size, size);
      }
      break;

    case 3:
      for (int i = 0; i < 4; i++) {
        rect(x+size, y + i*size, size, size);
      }
      break;
    }
  }
}

//class JBlock extends Block {

//  JBlock(int x, int y) {
//    super(x, y);
//    maxRotation = 3;
//  }

//  void display() {
//    fill(255);
//    for (int i = 0; i < 3; i++) {
//      for (int j = 0; j < 3; j++) {
//        rect(x+i*size, y+j*size, size, size);
//      }
//    }
//    fill(DBLUE);
//    switch(rotation) {
//    case 0:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x, y, size, size);
//      break;

//    case 1:
//      rect(x+2*size, y, size, size);
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      break;

//    case 2:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x+2*size, y+2*size, size, size);
//      break;

//    case 3:
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      rect(x, y+2*size, size, size);
//      break;
//    }
//  }
//}

//class LBlock extends Block {

//  LBlock(float x, float y) {
//    super(x, y);
//    maxRotation = 3;
//  }

//  void display() {
//    fill(255);
//    for (int i = 0; i < 3; i++) {
//      for (int j = 0; j < 3; j++) {
//        rect(x+i*size, y+j*size, size, size);
//      }
//    }
//    fill(ORANGE);
//    switch(rotation) {
//    case 0:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x+2*size, y, size, size);
//      break;

//    case 1:
//      rect(x+2*size, y+2*size, size, size);
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      break;

//    case 2:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x, y+2*size, size, size);
//      break;

//    case 3:
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      rect(x, y, size, size);
//      break;
//    }
//  }
//}

//class OBlock extends Block {

//  OBlock(float x, float y) {
//    super(x, y);
//  }

//  void display() {
//    fill(YELLOW);
//    rect(x, y, size, size);
//    rect(x+size, y, size, size);
//    rect(x, y+size, size, size);
//    rect(x+size, y+size, size, size);
//  }
//}

//class SBlock extends Block {

//  SBlock(float x, float y) {
//    super(x, y);
//    maxRotation = 3;
//  }

//  void display() {
//    fill(255);
//    for (int i = 0; i < 3; i++) {
//      for (int j = 0; j < 3; j++) {
//        rect(x+i*size, y+j*size, size, size);
//      }
//    }
//    fill(GREEN);
//    switch(rotation) {
//    case 0:
//      for (int i = 0; i < 2; i++) {
//        rect(x+(i+1)*size, y, size, size);
//        rect(x+i*size, y+size, size, size);
//      }
//      break;

//    case 1:
//      for (int i = 0; i < 2; i++) {
//        rect(x+size, y+i*size, size, size);
//        rect(x+2*size, y+(i+1)*size, size, size);
//      }
//      break;

//    case 2:
//      for (int i = 0; i < 2; i++) {
//        rect(x+(i+1)*size, y+size, size, size);
//        rect(x+i*size, y+2*size, size, size);
//      }
//      break;

//    case 3:
//      for (int i = 0; i < 2; i++) {
//        rect(x, y+i*size, size, size);
//        rect(x+size, y+(i+1)*size, size, size);
//      }
//      break;
//    }
//  }
//}

//class TBlock extends Block {

//  TBlock(float x, float y) {
//    super(x, y);
//    maxRotation = 3;
//  }

//  void display() {
//    fill(255);
//    for (int i = 0; i < 3; i++) {
//      for (int j = 0; j < 3; j++) {
//        rect(x+i*size, y+j*size, size, size);
//      }
//    }
//    fill(PURPLE);
//    switch(rotation) {
//    case 0:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x+size, y, size, size);
//      break;

//    case 1:
//      rect(x+2*size, y+size, size, size);
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      break;

//    case 2:
//      for (int i = 0; i < 3; i++) {
//        rect(x+i*size, y+size, size, size);
//      }
//      rect(x+size, y+2*size, size, size);
//      break;

//    case 3:
//      for (int i = 0; i < 3; i++) {
//        rect(x+size, y+i*size, size, size);
//      }
//      rect(x, y+size, size, size);
//      break;
//    }
//  }
//}

//class ZBlock extends Block {

//  ZBlock(float x, float y) {
//    super(x, y);
//    maxRotation = 3;
//  }

//  void display() {
//    fill(255);
//    for (int i = 0; i < 3; i++) {
//      for (int j = 0; j < 3; j++) {
//        rect(x+i*size, y+j*size, size, size);
//      }
//    }
//    fill(RED);
//    switch(rotation) {
//    case 0:
//      for (int i = 0; i < 2; i++) {
//        rect(x+(i+1)*size, y+size, size, size);
//        rect(x+i*size, y, size, size);
//      }
//      break;

//    case 1:
//      for (int i = 0; i < 2; i++) {
//        rect(x+size, y+(i+1)*size, size, size);
//        rect(x+2*size, y+i*size, size, size);
//      }
//      break;

//    case 2:
//      for (int i = 0; i < 2; i++) {
//        rect(x+(i+1)*size, y+2*size, size, size);
//        rect(x+i*size, y+size, size, size);
//      }
//      break;

//    case 3:
//      for (int i = 0; i < 2; i++) {
//        rect(x, y+(i+1)*size, size, size);
//        rect(x+size, y+i*size, size, size);
//      }
//      break;
//    }
//  }
//}
