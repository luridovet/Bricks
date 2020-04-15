


class Puck {


  float x = width/2;
  float y = height/2 + 100;  
  float r = 10;  
  float xspeed = 0;
  float yspeed = 0;
  boolean k = false;
  boolean topBot;
  PVector v;
  PVector l = new PVector(1,0, 0);
  PVector j = new PVector(0,1, 0);
  int hp = 3;        

  

    

  void show() {
    fill(255);
    ellipse(x, y, r*2, r*2);
  }  

  void movement() {
    x += xspeed;
    y += yspeed;
  }  


  void reset() {
    x = width/2;
    y = height/2 + 100; 
    xspeed = 0;
    yspeed = 0;   
    start();
    if ( key == 's'){
      brick_manager.createbricks();      
    }  
  }   

  void start() {
    if (key == ' ' ) {
      if (k == false) {
        float angle = random(-PI/4, PI/4);
        xspeed = 7*sin(angle);
        yspeed = 7*cos(angle);      
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
      hp -= 1;
    }
  }  
  
  void gameOver() {
    if (hp == 0) {
      fill(255, 0, 0);
      textSize(100);
      text("GAME OVER", width/2 - 275, height/2);  
    }  
  }


  void checkPaddle(Paddle pa) {

    if (x + r > pa.x && x - r < pa.x + pa.w && y + r > pa.y && y + r < pa.y + pa.h) { 
      yspeed *= -1;
      
      //float diff = x - pa.x - pa.w ;  
      //float rad = PI/4;
      //float angle = map(diff, 0, pa.w, rad, PI/2 + rad);
      //xspeed = 5 * cos(angle);
      //yspeed = 5 * sin(angle);   
      ////y = pa.y + pa.w/2 + r;
            
    }
  }  




  





  void checkBricks(Brick_Manager bm, Puck pu) {
    ArrayList <Bricks> b = bm.bricks;
    for (int i=0; i<bm.bricks.size(); i++) {
      v = new PVector(pu.x - (  b.get(i).x + b.get(i).w/2), pu.y - ( b.get(i).y +b.get(i).h/2));

      
      
      //if ( pu.x + r > b.get(i).x && pu.x - r< b.get(i).x + b.get(i).w && pu.y + r > b.get(i).y && pu.y - r < b.get(i).y + b.get(i).h ) {
            
      //  if ( PVector.angleBetween(v,l) < PVector.angleBetween(v,j)){
      //    xspeed *= -1; 
      //  }  
      //  if ( PVector.angleBetween(v,l) > PVector.angleBetween(v,j) ){
      //    yspeed *= -1;
      //  }  
      // bm.breakbrick(i); 
      //} 
      
      
      if ( pu.x + r > b.get(i).x && pu.x - r< b.get(i).x + b.get(i).w && pu.y + r > b.get(i).y && pu.y - r < b.get(i).y + b.get(i).h ) {
            
        if ( abs(v.dot(l)) > abs(v.dot(j))){
          xspeed *= -1; 
        }  
        if ( abs(v.dot(l)) < abs(v.dot(j)) ){
          yspeed *= -1;
        }  
       bm.breakbrick(i); 
      } 
      
      
        

      
      
      
      //if ( (pu.x + r > b.get(i).x - 5 && pu.x  + r < b.get(i).x   &&  pu.y > b.get(i).y && pu.y < b.get(i).y + b.get(i).h ) 
      //      || (pu.x  - r > b.get(i).x + b.get(i).w  && pu.x - r < b.get(i).x + b.get(i).w  + 5   &&  pu.y > b.get(i).y && pu.y < b.get(i).y + b.get(i).h ) ) {
      //  xspeed *=-1;
      //  bm.breakbrick(i);       
      //} 
      
      //if ( (pu.y + r > b.get(i).y - 5 && pu.y + r < b.get(i).y    &&  pu.x > b.get(i).x && pu.x < b.get(i).x + b.get(i).w) 
      //      || (pu.y - r > b.get(i).y + b.get(i).h && pu.y - r < b.get(i).y + b.get(i).h + 5    &&  pu.x > b.get(i).x && pu.x < b.get(i).x + b.get(i).w ) ) {
      //  yspeed *=-1;
      //  bm.breakbrick(i); 
      //}    
      
      
      //prob here i think
      //if ( ( b.get(i).x - 1 < pu.x + r && b.get(i).x > pu.x + r    &&   b.get(i).y - 1 < pu.y + r && b.get(i).y >  pu.y + r )
      //    || ( b.get(i).x - 1 < pu.x + r && b.get(i).x > pu.x + r    &&    b.get(i).y + b.get(i).h + 1 > pu.y - r && b.get(i).y + b.get(i).h <  pu.y - r ) 
      //    || ( b.get(i).x + b.get(i).w + 1 > pu.x - r && b.get(i).x + b.get(i).w < pu.x - r   &&   b.get(i).y - 1 < pu.y + r && b.get(i).y >  pu.y + r  ) 
      //    || (b.get(i).x + b.get(i).w + 1 > pu.x - r && b.get(i).x +b.get(i).w < pu.x - r    &&   b.get(i).y + b.get(i).h + 1 > pu.y - r && b.get(i).y + b.get(i).h <  pu.y - r ) ) {
            
      //      xspeed *= -1;
      //      yspeed *= -1;
                    
      //}
      

      

      
    }
  }
}  
