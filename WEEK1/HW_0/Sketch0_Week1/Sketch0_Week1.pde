
String [] quote = {"It's good", "It's great", "It's amazing"};
int [] posX = {100,250,400};


int radius = 50;

int posY = 70;
float d;

color c = color(200,100,200);

void setup () {
  size(600, 600);

}

void draw () {

  for (int i = 0; i<=2; i++) {
    fill(255);
    ellipse(posX[i], posY, 2*radius, 2*radius);
}

  if(dist(mouseX,mouseY,posX[0],posY)<radius && mousePressed ){ 
    background (220);
    text(quote[0],400,300);
    fill (255,0,255);
    ellipse(posX[0], posY, 2*radius, 2*radius);
    
  } else if (dist(mouseX,mouseY,posX[1],posY)<radius && mousePressed ){
    background (220);
    text(quote[1],300,300);
    fill (255,0,255);
    ellipse(posX[1], posY, 2*radius, 2*radius);
    
  } else if (dist(mouseX,mouseY,posX[2],posY)<radius && mousePressed ){
    background (220);
    text(quote[2],200,300);
    fill (255,0,255);
    ellipse(posX[2], posY, 2*radius, 2*radius);
  }
  
  
}
