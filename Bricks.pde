class Bricks {
  

  float x = 0;
  float y = 75;
  float w = 50;
  float h = 50;
  boolean isDestroyed=false;
  int life ;


  //public Bricks (float x, float y) {
  //  this.x = x;
  //  this.y = y;
  //}
 
  public void renderBrick() {
    rect(x, y, w, h);
  }
  
  
  
}
