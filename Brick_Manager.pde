class Brick_Manager {

  
    ArrayList <Bricks> bricks = new ArrayList <Bricks> ();
    
    
  public void createbricks(){
    
    
    
    for (float y=100; y<500; y+=30) { 
      for (float x=0; x<750 ; x+=150) {
                
        Bricks brick = new Bricks();
        brick.x = x;
        brick.y = y;
        bricks.add(brick);
        //brick.renderBrick();
        
      }
   }    
  
  //print(bricks.size());
}


public void breakbrick(int index) {
  
  bricks.remove(index);
  bricks.get(index).isDestroyed = true;
    
}


}
