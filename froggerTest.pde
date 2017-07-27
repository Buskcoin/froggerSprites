int frogX = 100;
int frogY = 700;
int hop = 10;
PImage spritesheet;
PImage sprite;
int HDIM = 4;
int WDIM = 3;
int W ;
int H;
void setup() {
  size(800, 800);
  spritesheet= loadImage("http://4.bp.blogspot.com/-P-UlMZH95K0/VdEhG4TWoEI/AAAAAAAAB8E/dx1x_lGVk2o/s1600/frog_ani2.png");
H = spritesheet.height/HDIM;
W = spritesheet.width/WDIM;
 int x = frameCount%WDIM*W;
  int y = frameCount/HDIM%HDIM*H;
  sprite = spritesheet.get(x, y, W, H);
}

void draw() {
  background(100);
  fill(100, 200, 100);
  ellipse(frogX, frogY, 50, 50);
  fill(255);
  
  image(sprite, frogX-sprite.width/2, frogY-sprite.height/2);
}
 int x;
  int y;
   int yPos = 1;
 int xPos =0 ;
void keyPressed() {

  if (keyCode == RIGHT) {
    if (frogX + hop < width)
      frogX+=hop;
      yPos =1;
      xPos++;
      xPos%=3;
  }
  if (keyCode == LEFT) {
    if (frogX - hop > 0)
      frogX-=hop;
      yPos =0;
      xPos++;
      xPos%=3;
  }
  if (keyCode == UP) {
    if (frogY - hop > 0)
      frogY-=hop;
      yPos =3;
      xPos++;
      xPos%=3;
  }
  if (keyCode == DOWN) {
    if (frogY + hop < width)
      frogY+=hop;
      yPos =2;
      xPos++;
      xPos%=3;
  }
   x = xPos*W;
   y = yPos*H;
  sprite = spritesheet.get(x, y, W, H);
}