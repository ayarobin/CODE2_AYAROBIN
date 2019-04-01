//modulus operator (%) (plural = modulo) 

//void setup () {
//  println(5/2); //int
  
//  println(5.0/2.0); //float
  
//  println(5%2); //modulus, gives the remaining number value
  
//}


int x = 0;
int c = 255;

void setup() {
  size(400,400);
}

void draw() {
  background(255);
  if (c == 255) {
    c = 0;
  } else {
    c = 255;
  }

  ellipse(x, height/2, 100,100);
  x = (x + 1) % 200;
}
