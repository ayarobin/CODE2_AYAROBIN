class Ryan {
  PVector pos;
  PVector vel;
  PVector acc;
  PImage ryanIMG;
  int mass;

  Ryan(int m) {
    ryanIMG = loadImage("ryan.jpg");
    pos = new PVector(random(0, width), random(0, height), -random (0,10));
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

    if (pos.x >= width - ryanIMG.width/2) {
      pos.x = width - ryanIMG.width/2;
      vel.x *= -1;
    } else if (pos.x <= ryanIMG.width/2) {
      pos.x = ryanIMG.width/2;
      vel.x *= -1;
      //pos.x = 0;
    }

    if (pos.y >= height - ryanIMG.height/2) {
      pos.y = height - ryanIMG.height/2;
      vel.y *= -1;
    } else if (pos.y <= ryanIMG.height/2) {
      pos.y = ryanIMG.height/2;
      vel.y *= -1;
      //pos.y = 0;
    }
  }

  void display() {
    int imageWidth = int(map(mass, 1, 20, 50, 250));
    pushMatrix();
    imageMode(CENTER);
    //translate(pos.x, pos.y);
    //rotate(vel.heading());
    //translate(0, 0);
    ryanIMG.resize(imageWidth, 0);
    image(ryanIMG, pos.x, pos.y);
    popMatrix();
    
    

  }
}
