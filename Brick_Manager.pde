class Brick_Manager {


  ArrayList <Bricks> bricks = new ArrayList <Bricks> ();





  public void createbricks() {
    //while (  < bricks.size()) {
    //  bricks.remove();
    //}  


    for (float y=100; y<500; y+=100) { 
      for (float x=0; x<750; x+=100) {

        Bricks brick = new Bricks();
        brick.x = x;
        brick.y = y;
        brick.life = int(random(3));
        bricks.add(brick);
        brick.renderBrick();       
      }
    }
  }



  public void breakbrick(int index) {
    if (bricks.get(index).life == 0){
       bricks.remove(index);
    }  else  bricks.get(index).life -= 1;
    for (int i=0; i < bricks.size(); i++) {
      bricks.get(i).renderBrick();
    }
  }

  void win() {
    if (bricks.size() == 0) {
      puck.k = false;           
      puck.reset();
      fill(0, 0, 255);
      textSize(100);
      text( "You WIN!", width/2-200, height/2);       
    }
  }
}
