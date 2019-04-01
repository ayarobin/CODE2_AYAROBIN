//faster way of writing code for hw review 1, 3/10/19


ArrayList<Sprocket> sprockets;

void setup () {
  sprockets = new ArrayList<Sprocket>();
  for (int i = 0; i < 100; i++) {
    Sprocket newSprocket = new Sprocket;
    sprockets.add(newSprocket);
  }
  
  //for (int i = 0; i < 100; i++) {
  //  //call the report() method of all the sprockets
  //  Sprocket s = sprockets.get(i);
  //  s.report();
  //}
  
  
  // this is called a "for in"/ "for each" loop
  for (Sprocket s : sprockets) {
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
