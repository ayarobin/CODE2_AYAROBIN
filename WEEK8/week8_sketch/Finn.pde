class Finn {
  PVector pos;
  PImage finnIMG;

  Finn() {
    finnIMG = loadImage("https://freepngimg.com/thumb/finn_the_human/35458-9-finn-transparent-thumb.png");
    pos = new PVector(random(0, width), random(0, height));
  }

  void update() {
    pos = new PVector(mouseX, mouseY);
  }

  void display() {
    imageMode(CENTER);
    finnIMG.resize(100, 0);
    image(finnIMG, pos.x, pos.y);
  }
}
