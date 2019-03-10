// bryan ma for code 2 sp 19 A

String[] data;
//myObjects[i] = new myObject(splitData[i]);

//for csv files:
Table table;

void setup() {
  data = loadStrings("dataPos.txt");
  
  size(600, 600);
  String[] splitData = data[0].split(",");
  String[] splitDataSiz = data[1].split(",");
  for (int i = 3; i < splitData.length; i++) {
    ellipse(50 + int(splitData[i]) * 100, height/2, int(splitDataSiz[i]), int(splitDataSiz[i]));
  }
  
  rectMode (CENTER);
  for (int j = 0; j < 3; j++) {
    rect(50 + int(splitData[j]) * 100, height/2, int(splitDataSiz[j]), int(splitDataSiz[j]));
    
  }
}

void draw() {
  
}
