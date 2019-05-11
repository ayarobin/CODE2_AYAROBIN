
String APIkey = "52176331ca04f9baa71c16b1bb614c8b";

//can change data for any location, enter lat + lon, name, zipcode (if in US), etc.
String query1 = "lat=62&lon=129"; //Yakutsk - coldest place
String query2 = "lat=54&lon=0"; //London, Reed - normal
String query3 = "lat=19&lon=14"; //Sahara, Bilma- hottest place

Cities city1, city2, city3;

color c1, c2, c3;




void setup () {
  size(600,300);
  background(255);
  
  //______Weather Title___________
    fill(255, 0, 242);
    textSize(25);
    text("WEATHER", width/2 - 70, 30);
    
  //______Divider lines_________
    stroke(255, 150, 253,200);
    strokeWeight(7);
    line(60, 0, 60, 600);
    stroke(221, 255, 198,200);
    line(0, 40, 600,40);
    
  //_____City Name Box________
    //fill(171, 145, 188,100);
    strokeWeight(2);
    noFill();
    rect(400,170,150,120);
    
  //_____City Key Colors_____
    fill(21, 0, 255, 100);
    rect(420,190,20,20);
    
    fill(0, 255, 250, 100);
    rect(420,220,20,20);
    
    fill(55, 255, 0, 100);
    rect(420,250,20,20);
   
  
  c1 = color(21, 0, 255, 100);
  c2 = color(0, 255, 250, 100);
  c3 = color(55, 255, 0, 100);
  
  fill(255, 0, 242);
  city1 = new Cities(APIkey, query1, c1, 210);
  city2 = new Cities(APIkey, query2, c2, 235);
  city3 = new Cities(APIkey, query3, c3, 260);
  
}

void draw () {
  city1.draw();
  city2.draw();
  city3.draw();

}
