//skulle nok have brugt inheritance eller ikke have lavet en klasse overhovedet, men havde ikke set længere end første opgave da jeg startede.

Mover mover1;
Mover mover2;

void setup() {
  size(600, 600);
  mover1 = new Mover(15, height/3);
  mover1.dir = new PVector(1, 0);
  mover2 = new Mover(5, height/3-height/15);
  mover2.dir = new PVector(5, 0);
}

void draw() {
  mover1.dir.rotate(TWO_PI/500);
  mover1.move();
  mover1.display();

  mover2.dir.rotate(TWO_PI/50);
  mover2.location.add(mover1.dir);
  mover2.move();
  mover2.display();
}
