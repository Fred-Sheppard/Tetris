class Piece {
  
  float x, y;
  PieceType type;
  
 Piece(float x, float y, PieceType pt) {
   this.x = x;
   this.y = y;
   type = pt;
 }
 
 void update() {
   
 }
 
 void display() {
   
   fill(LBLUE);
   for (int i = 0; i < 5; i++) {
     rect(x + cellSize*i, y, cellSize, cellSize);  
   }
   
 }
  
}
