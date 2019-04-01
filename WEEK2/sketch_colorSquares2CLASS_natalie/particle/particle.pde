class Drop {
  float x;
  float y;
  float z;
  float len;
  Drop() {
    x = random(0, w);
    y = random(-h, 1000);
    z = random(0, 20);
    len = map(z, 0, 20, 10, 20);
  }
  void swipe() {
    y = y + bass / 10 + 0.3;
    if (y > h + len) {
      y = -1000;
    }
  }
  void fall() {
    y = y + bass / 10 + 0.3;
    if (y > h) {
      y = 0;
    }
  }
  void show(int mode) {
    if (mode == 1) {
      float weight = map(z, 0, 20, 1, 3);
      strokeWeight(weight);
      line(x, y, x+len, y);
    } else if (mode == 2) {
      float weight = map(z, 0, 20, 1, 3);
      strokeWeight(weight);
      line(x, y, x, y+len);
    }
  }
}