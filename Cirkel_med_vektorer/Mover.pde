class Mover {
  PVector location;
  PVector dir;
  int size;
  
  Mover(int size_, int hei) {
    location = new PVector(width/2, hei);
    size = size_;
  }
  
  void move() {
    location.add(dir);
  }
  
  void display() {
    ellipse(location.x, location.y, size, size);
  }
}
