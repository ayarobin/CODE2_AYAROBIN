//we should use array lists instead of array because array there is a limit to the size?
ArrayList<Sprocket> sprockets;

void setup () {
  sprockets = new ArrayList<Sprocket>();
  for (int i = 0; i < 100; i++) {
    Sprocket newSprocket = new Sprocket;
    sprockets.add(newSprocket);
  }
  
  for (int i = 0; i < 100; i++) {
    //call the report() method of all the sprockets
    Sprocket s = sprockets.get(i);
    s.report();
  }
}

void draw () {
  
}

void Sprocket () {
  int num = 0;
  
  Sprocket() {
    
  }
  
  void report() {
    println("sprocket");
  }
  
}
