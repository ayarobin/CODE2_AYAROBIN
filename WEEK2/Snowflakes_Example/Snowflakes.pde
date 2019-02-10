class Snowflakes {
  float x, y; 
  color c; 
  int o = 255; 
  float gravity; 
  float size; 

  Snowflakes(float _x, float _y) {
    x = _x; 
    y = _y; 

    gravity = random(1, 3); 
    size = random(5, 15);
  }

  void display() {
    fill(255, o); 
    ellipse(x, y, size, size);
  }

  void fall() {
    y += gravity; 
    o--;
  }

  boolean isAlive() {
    if (y<height) {
      return true;
    } else {
      return false;
    }
  }
}
