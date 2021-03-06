// bryan ma for code 2 sp19 A

// replace the sizes integer array with csv data loaded externally.
Table data;
int h;
//int[] sizes = { 300, 500, 100, 200, 400, 300, 500, 200 };

void setup() {
  size(800, 600);

  data = loadTable("data.csv");

  rectMode(CENTER);

  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    float x = map(i, 0, row.getInt("h") - 1, 100, 700);
    float y = height/2;
    float w = 50;
    float h = row.getInt("h");
    rect(x, y, w, h);
  }
}

void draw() {
}
