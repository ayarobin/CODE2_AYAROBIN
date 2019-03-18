// creating two arrays, loadData, miniData
String[] loadData;
String[] miniData;
// int[] sizes = { 300, 500, 100, 200, 400, 300, 500, 200 };
void setup() {
  size(800, 600);
// read in the data from our csv file
// to our array called loadData
// loadData will now = ["300, 500, 100, 200, 400, 300, 500, 200"]
loadData = loadStrings("data.csv"); 
for (String line : loadData) {
      miniData = split(line, ',');
}
  rectMode(CENTER);
for (int i = 0; i < miniData.length; i++) {
    float x = map(i, 0, miniData.length - 1, 100, 700);
    float y = height/2;
    float w = 50;
    float h = int(miniData[i]);
    rect(x, y, w, h);
  }
}

void draw() {
}
