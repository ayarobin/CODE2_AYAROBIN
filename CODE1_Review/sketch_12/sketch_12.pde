// take your class from sketch_10 and create an ArrayList of them.
// clicking the mouse on the screen should create a new instance of the object at that position.
// loop through the arraylist in the draw loop and draw all of them.
// finally, add some new behavior to the class.
// for example, a particle 'lifetime' effect that makes them disappear after some time.

Rect rectt;
ArrayList <Rect> myRect;

void setup() {
  size(500, 500);
  
  myRect = new ArrayList<Rect>();
  
  for (int i = 0; i < 10; i++) {
    myRect.add(new Rect(int(random(20,480)),int(random(20,480))));
  }
}

void draw() {
  
  for(Rect r : myRect) {
    r.display();
    r.update();
  }
}

void mousePressed() {
  rectt = new Rect(mouseX,mouseY);
}
