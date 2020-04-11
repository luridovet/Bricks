class Bricks {

  float x = 0;
  float y = 30;
  float w = 75;
  float h = 30;
  boolean isDestroyed=false;


  //public Bricks (float x, float y) {
  //  this.x = x;
  //  this.y = y;
  //}

  public void renderBrick() {
    noFill();
    rect(x, y, w, h);
  }
}
