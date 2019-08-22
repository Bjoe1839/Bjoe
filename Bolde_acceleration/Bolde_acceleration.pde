Square[] squares = new Square[20];
PVector mouse;
int squareNum;

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(0);

  mouse = new PVector(mouseX, mouseY);

  for (int i = 0; i < squareNum; i++) {
    squares[i].move();
    squares[i].display();
  }
}

void mouseClicked() {
  if (squareNum < squares.length) {
    squares[squareNum] = new Square();
    squareNum++;
  }
}
