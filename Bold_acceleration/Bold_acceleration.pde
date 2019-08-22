Ball b1;
PVector mouse;

void setup() {
  size(800, 800);
  b1 = new Ball();
}

void draw() {
  background(0);
  
  mouse = new PVector(mouseX, mouseY);
  b1.move();
  b1.display();
}
