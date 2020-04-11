
class Paddle {
  
float w = 200;
float x = width/2 -w/2;
float y = height-60;
float xchange = 0;
float h = 20;

void show() {
  fill(255);
  rect(x,y,w,h, 10);
  
}  

void move(float steps) {
  x += xchange;
  x = constrain(x,0, width-w);
  xchange = steps;
}  











}
