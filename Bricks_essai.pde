

Paddle paddle;
Puck puck;

Brick_Manager brick_manager;


void setup() {
  size(750, 1000);
  paddle = new Paddle();
  puck = new Puck();
  brick_manager = new Brick_Manager();
}  

void draw() {
  background(100);

  puck.checkPaddle(paddle);  

  paddle.show();
  puck.show();
  puck.movement();
  puck.move();
  puck.edges();

  brick_manager.createbricks(); 
  puck.checkBricks(brick_manager, puck);

  for (int index=0; index < brick_manager.bricks.size(); index++) { 
    if ( brick_manager.bricks.get(index).isDestroyed == false) {
      brick_manager.bricks.get(index).renderBrick();
    }
  }
}

void keyReleased() {
  paddle.move(0);
}


void keyPressed() {
  if (key == 'd') {
    paddle.move(20);
  }
  if (key == 'a') {
    paddle.move(-20);
  }
}  
