class Square {
  PVector location, velocity, acceleration, gravity;
  int size;
  float angle, aVelocity, aAcceleration;
  
  Square() {
    size = 30;
    location = mouse.copy();
    velocity = new PVector();
    acceleration = new PVector();
    gravity = new PVector(0, 0.5);
  }
  
  void move() {
    acceleration = PVector.sub(location, mouse);
    acceleration.normalize();
    acceleration.mult(squareNum * 0.1);
    acceleration.add(gravity);
    
    velocity.add(acceleration);
    
    location.add(velocity);
    
    if (location.x > width-size/2) {
      location.x = width-size/2; //<>//
      velocity.x *= -1;
    }
    if (location.x < size/2) {
      location.x = size/2;
      velocity.x *= -1;
    }
    if (location.y > height-size/2) {
      location.y = height-size/2;
      velocity.y *= -1;
    }
    if (location.y < size/2) {
      location.y = size/2;
      velocity.y *= -1;
    }
    
    aAcceleration = acceleration.x/100;
    aVelocity += aAcceleration;
    angle += aVelocity;
    
    acceleration.mult(0);
  }
  
  void display() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    rect(0, 0, size, size);
    popMatrix();
  }
  
}
