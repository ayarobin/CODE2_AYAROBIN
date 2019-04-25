// bryan ma for code 2 sp 19

Rain rain;
ArrayList <Rain> myRain;
//Rain[] myRain;

Character c;

float floor;

void setup() {
  size(800, 800);
  floor = (height*2)/3;
  c = new Character();
  textSize(20);
  textAlign(CENTER);
  //strokeWeight(3);
  
  myRain = new ArrayList<Rain>();
  
  for(int i=0; i < 500; i++){
    myRain.add(new Rain(16*i, -10));
  }
  //rain = new Rain(0);
}

void draw() {
  background(250, 240,200);
  stroke(0);
  fill(100);
  rect(0, (height*2)/3, width, height);

  fill(0);
  text("Press space to jump (i.e. change states)", width/2, 100);
  text("state: " + c.state, 450, floor - 50);

  c.update();
  c.display();
  
  for(int i=0; i < 50; i++){
    myRain.add(new Rain(16*i, -10));
    Rain rains = myRain.get(i);
    rains.update();
    rains.display();
    
  }
  
}

void keyPressed() {
  c.handleInput(key);
  for(int i = 0; i < 50; i++){
    Rain rains2 = myRain.get(i);
    rains2.handleInput(key);
  }
  
}
