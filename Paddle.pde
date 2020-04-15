
class Paddle {
  
float w = 200;
float x = width/2 -w/2;
float y = height-60;
float xchange = 0;
float h = 20;
float computerSpeed = 30;


void show() {
  fill(255);
  rect(x,y,w,h, 10);  
}  

void move(float steps) {
  x += xchange;
  x = constrain(x,0, width-w);
  xchange = steps;
}  

void computer() {  
    //left.y = lerp(left.y,puck.y, 0.1f); 
    if ( x + w/2 < puck.x ) {
      move(computerSpeed);
    }  else if ( x + w/2 > puck.x ) {
      move(-computerSpeed);
    }
}     











}
