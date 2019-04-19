class Character {
  int state;  // 0 - standing, 1 - in air
  PVector pos;
  PVector vel;
  float grav;
  float w;
  float h;
  float baseh;
  
  Character() {
    w = 120;
    h = 100;
    baseh = 85;
    grav = 0.9;
    pos = new PVector(300, floor - baseh/2);
    vel = new PVector(0, 0);
  }
  
  void display() {
    switch (state) {
      case 0:
        fill(255,170,193);
        break;
      case 1:
        fill(random(255),random(255),random(255));
        break;
      default:
        break;
    }
    
    
    
    
    //body
    noStroke();
    h += ((baseh + vel.y * 2) - h) * 0.3;
    ellipse(pos.x, pos.y, w, h);
    
    //eyes
    fill(250);
    noStroke();
    ellipse(pos.x - 5, pos.y - 10, 20, 30);
    ellipse(pos.x + 30, pos.y - 10, 20, 30);
    
    //pupils
    fill(0);
    ellipse(pos.x - 5, pos.y - 10, 10, 10 + abs(vel.y));
    ellipse(pos.x + 30, pos.y - 10, 10, 10 + abs(vel.y));
    
    //hat
    noStroke();
    fill(0);
    rect(pos.x-40,pos.y-115, w-40,h);
    rect(pos.x-60,pos.y-50, w,h-60);
  }
  
  
  void update() {
    switch (state) {
      case 0:
        vel.y = 0;
        break;
      case 1:
        pos.add(vel);
        vel.y += grav;
        if (pos.y + vel.y > floor - baseh/2) {
          state = 0;
          pos.y = floor - baseh/2;
        }
        break;
      default:
        break;
    }
  }
  
  void handleInput(char k) {
    println(k);
    switch (state) {
      case 0:
        if (k == ' ') {
          state = 1;
          vel.y = -20;
        }
        break;
      case 1:
        break;
      default:
        break;
    }
  }
}
