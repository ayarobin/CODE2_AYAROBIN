// intializing our variables
// creating an array of strings called data
String[] data;
Square s;
Square v;

void setup() {
  // setting our array, data, equal to the 
  // contents of our text file
  data = loadStrings("dataPos.txt");
 
  size(600, 600);
  
  // creating a new call of Square
  // and assigning it values
  // Square (String[] i, int rectWidth, int rectHeight, color rectColor)
  // each time we create an instance of the class Square, 6 shapes are drawn
  // s and v are two instances of class Square
  s = new Square (data, 100, 90);
  v = new Square (data, 50, 30);
 
}

void draw() {
  // call display for both instances of the class Square
  s.display();
  v.display();
  
}
