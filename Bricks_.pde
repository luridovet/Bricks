

Paddle paddle;
Puck puck;

Brick_Manager brick_manager;

 
  PImage state;
  PImage state1;
  PImage state2;  
  PImage hp;
  
void setup() {
  size(750, 1000);
  paddle = new Paddle();
  puck = new Puck();
  brick_manager = new Brick_Manager();
  brick_manager.createbricks(); 
  state = loadImage("brick_life.jpg");
  state1 = loadImage("brick_life1.jpg");
  state2 = loadImage("brick_life2.jpg");  
  hp = loadImage("hp.jpg");
}  

void draw() {
  background(100,100,100);
  fill(255);
  textSize(30);
  text(puck.hp, width/2 - 30, 40);
  image(hp, width/2, 18, 30, 30);
  if ( puck.hp != 0 && brick_manager.bricks.size() != 0 ){
  puck.checkPaddle(paddle);  

  paddle.show();
  
  //computer
  //paddle.computer();
  
  puck.start();  
  puck.show();
  puck.movement();
  puck.edges();


  
  

  puck.checkBricks(brick_manager, puck);


  for (int index=0; index < brick_manager.bricks.size(); index++) {
    if ( brick_manager.bricks.get(index).isDestroyed == false) {
      brick_manager.bricks.get(index).renderBrick();
      if (  brick_manager.bricks.get(index).life == 2) {
      image(state2,brick_manager.bricks.get(index).x,brick_manager.bricks.get(index).y,brick_manager.bricks.get(index).w,brick_manager.bricks.get(index).h);
      }        
      if (  brick_manager.bricks.get(index).life == 1) {
      image(state,brick_manager.bricks.get(index).x,brick_manager.bricks.get(index).y,brick_manager.bricks.get(index).w,brick_manager.bricks.get(index).h);
      }
      if (  brick_manager.bricks.get(index).life == 0) {
      image(state1,brick_manager.bricks.get(index).x,brick_manager.bricks.get(index).y,brick_manager.bricks.get(index).w,brick_manager.bricks.get(index).h);
      }            
    }
  }
  
  }
  puck.gameOver();  
  brick_manager.win();
}

void keyReleased() {
  paddle.move(0);
}


void keyPressed() {
  if (key == 'd') {
    paddle.move(20);
  } else if (key == 'a') {
    paddle.move(-20);
  }
}  
