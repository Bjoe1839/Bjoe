class Ball {
  PVector location, velocity, acceleration;
  int size;
  
  Ball() {
    size = 30;
    location = new PVector(width/2, height/2);
    velocity = new PVector();
    acceleration = new PVector();
  }
  
  void move() {
    acceleration = PVector.sub(location, mouse);
    acceleration.normalize();
    acceleration.mult(0.2);
    
    velocity.add(acceleration);
    float d = (dist(mouseX, mouseY, location.x, location.y));
    velocity.limit(1000/d);
    
    location.add(velocity);
    
    if (location.x > width-size/2) {
      location.x = width-size/2; //<>//
      velocity.x *= -0.7;
    }
    if (location.x < size/2) {
      location.x = size/2;
      velocity.x *= -0.7;
    }
    if (location.y > height-size/2) {
      location.y = height-size/2;
      velocity.y *= -0.7;
    }
    if (location.y < size/2) {
      location.y = size/2;
      velocity.y *= -0.7;
    }
    
    acceleration.mult(0);
  }
  
  void display() {
    ellipse(location.x, location.y, size, size);
  }
  
}
