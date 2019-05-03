class Bee {
  PVector pos;
  PVector vel;
  PVector acc;
  PImage beeIMG;
  int mass;

  Bee(int m) {
    beeIMG = loadImage("bee.png");
    pos = new PVector(random(0, width), random(0, height));
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = m;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass); 
    acc.add(f);
  }
  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);

    if (pos.x >= width - beeIMG.width/2) {
      pos.x = width - beeIMG.width/2;
      vel.x *= -1;
    } else if (pos.x <= beeIMG.width/2) {
      pos.x = beeIMG.width/2;
      vel.x *= -1;
      //pos.x = 0;
    }

    if (pos.y >= height - beeIMG.height/2) {
      pos.y = height - beeIMG.height/2;
      vel.y *= -1;
    } else if (pos.y <= beeIMG.height/2) {
      pos.y = beeIMG.height/2;
      vel.y *= -1;
      //pos.y = 0;
    }
  }

  void display() {
    int imageWidth = int(map(mass, 1, 20, 150, 450));
    pushMatrix();
    imageMode(CENTER);
    //translate(pos.x, pos.y);
    //rotate(vel.heading());
    translate(0, 0);
    beeIMG.resize(imageWidth, 0);
    image(beeIMG, pos.x, pos.y);
    popMatrix();
  }
}
