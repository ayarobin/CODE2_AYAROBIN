ArrayList<Bee> bee = new ArrayList<Bee>();
ArrayList<Finn> finn = new ArrayList<Finn>();
Table table;

void setup() {
  size(1000, 800);
  table = loadTable("mass.csv", "header");
  finn.add(new Finn());
 
 for (TableRow row: table.rows()){
   int m = row.getInt("mass");
   bee.add(new Bee(m));
 }
}

void draw() {
  background(0,255,100);

  for (Finn f : finn) {
    f.update();
    f.display();
  }
  for (Bee b : bee) {
    Finn f = finn.get(0);
    f.pos = new PVector(mouseX, mouseY);
    f.pos.sub(b.pos);
    f.pos.normalize();
    f.pos.mult(0.1);
    b.applyForce(f.pos);
    b.update();
    b.display();
  }
}
