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
    //x = constrain(x, 1, 10);
    //y = constrain(y, 1, 17);
    updateCells();
  }

  void updateCells() {
  }

  void display() {
  }

  void rotate() {
    rotation++;
    if (rotation > maxRotation)
      rotation = 0;
  }
}

class IBlock extends Block {

  IBlock(int x, int y) {
    super(x, y);
    maxRotation = 1;
  }

  void updateCells() {
    switch(rotation) {
    case 0:
      x = constrain(x, 2, 8);
      y = constrain(y, 1, 19);
      int index = x+y*12;
      for (int i = 0; i < 4; i++) {
        cells[index+11 +i].type = IBLOCK;
      }
      break;

    case 1:
      x = constrain(x, 1, 10);
      y = constrain(y, 1, 17);
      index = x+y*12;
      for (int i = 0; i < 4; i++) {
        cells[index +12*i].type = IBLOCK;
      }
    }
  }
}

class JBlock extends Block {

  JBlock(int x, int y) {
    super(x, y);
    maxRotation = 3;
  }

  void updateCells() {
    switch(rotation) {
    case 0:
      x = constrain(x, 2, 9);
      y = constrain(y, 1, 19);
      int index = x+y*12;
      cells[index-1].type = JBLOCK;
      for (int i = 0; i < 3; i++) {
        cells[index+12 +i-1].type = JBLOCK;
      }
      break;

    case 1:
      x = constrain(x, 1, 9);
      y = constrain(y, 1, 18);
      index = x+y*12-1;
      cells[index+2].type = JBLOCK;
      for (int i = 0; i < 3; i++) {
        cells[index+1 +i*12].type = JBLOCK;
      }
      break;

    case 2:
      x = constrain(x, 2, 9);
      y = constrain(y, 1, 18);
      index = x+y*12;
      cells[index+2+2*12-1].type = JBLOCK;
      for (int i = 0; i < 3; i++) {
        cells[index+i-1 +12].type = JBLOCK;
      }
      break;

    case 3:
      x = constrain(x, 2, 10);
      y = constrain(y, 1, 18);
      index = x+y*12-1;
      cells[index+2*12].type = JBLOCK;
      for (int i = 0; i < 3; i++) {
        cells[index+1 +i*12].type = JBLOCK;
      }
      break;
    }
  }
}

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
