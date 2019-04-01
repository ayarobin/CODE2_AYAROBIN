//requirements:
//make buttons into classes
//change to global state
//move values to external data

//optional:
//make child button that has diff function
//have the button states representd more visually

Button button1;
Button button2;

//int button1x = 180;
//int button1y = 200;
//color button1BG = color(230, 255, 200);
//String button1Text = "button 1 pressed!";

//int button2x = 420;
//int button2y = 200;
//color button2BG = color(255, 200, 230);
//String button2Text = "button 2 pressed!";

color bgColor = color(230);
int buttonSize = 125;
String textToShow = "";

void setup() {
  size(600, 600);
  button1 = new Button(180,200,color(230, 255, 200), "button 1 pressed!");
  button2 = new Button(420,200,color(255, 200, 230), "button 2 pressed!");
}

void draw() {
  background(bgColor);
  
  //if (dist(mouseX, mouseY, button1x, button1y) < buttonSize/2 && mousePressed) {
  //  textToShow = button1Text;
  //  bgColor = button1BG;
  //  fill(0);
  //} else {
  //  fill(255);
  //}
  //ellipse(button1x, button1y, buttonSize, buttonSize);
  
  //if (dist(mouseX, mouseY, button2x, button2y) < buttonSize/2 && mousePressed) {
  //  textToShow = button2Text;
  //  bgColor = button2BG;
  //  fill(0);
  //} else {
  //  fill(255);
  //}
  //ellipse(button2x, button2y, buttonSize, buttonSize);
  //fill(0);
  //textAlign(CENTER);
  //textSize(28);
  //text(textToShow, width/2, 400);
  
  button1.display();
  button2.display();
  
}
