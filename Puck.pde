


class Puck {


  float x = width/2;
  float y = height/2 + 100;  
  float r = 12;  
  float xspeed = 0;
  float yspeed = 0;
  boolean k = false;

  void show() {
    fill(255);
    ellipse(x, y, r*2, r*2);
  }  

  void movement() {
    x += xspeed;
    y += yspeed;
  }  


  void move() {
    if (key == ' ') {
      if (k == false) {
        float angle = random(0, PI);
        xspeed = 5*cos(angle);
        yspeed = 5*sin(angle);  
        k = true;
      }
    }
  }  


  void edges() {
    if (x - r < 0 || x + r > width ) {
      xspeed *= -1;
    }   

    if (y - r <0) {
      yspeed *= -1;
    }  

    if (y > height) {
      x = width/2;
      y = height/2 + 100;
    }
  }  



  void checkPaddle(Paddle pa) {

    if (x > pa.x && x < pa.x + pa.w && y + r > pa.y && y + r < pa.y + pa.h) {
      yspeed *= -1;
    }
  }  









  void checkBricks(Brick_Manager bm, Puck pu) {
    ArrayList <Bricks> b = bm.bricks;
    for (int i=0; i<bm.bricks.size(); i++) {
      if (pu.x > b.get(i).x && pu.x < b.get(i).x + b.get(i).w && pu.y + r > b.get(i).y + b.get(i).h && pu.y + r < b.get(i).y + 2*b.get(i).h) {     
        yspeed *= -1;
        bm.breakbrick(i);
        
        //bm.breakbrick();
      }    

      //should not modify when between x
      if ( pu.x + r > b.get(i).x && pu.x - r < b.get(i).x  + b.get(i).w && pu.y + r < b.get(i).y + 2*b.get(i).h && pu.y - r > b.get(i).y  ) {    
        xspeed *= -1;
        bm.breakbrick(i);
      }  



      //println(b.get(i).x);
    }
  }
}  
