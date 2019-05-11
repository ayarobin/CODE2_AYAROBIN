
//Circle mycircle;
Bar tempBar;
Bar sbar;
Bar humBar;


String APIkey = "52176331ca04f9baa71c16b1bb614c8b";
String query = "lat=20&lon=40"; //can change data for any location, enter lat + lon, name, zipcode (if in US), etc.


void setup () {
  size(600,600);
  background(255, 33, 96);
  
 
  JSONObject data = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?" + query + "&APPID=" + APIkey);
  JSONArray weather = data.getJSONArray("weather");
  JSONObject element = weather.getJSONObject(0);
  
  //JSONArray main1 = data.getJSONArray("main");
  //JSONObject element1 = main1.getJSONObject(0);
  //int temperature = element1.getInt("temp");

  int id = element.getInt("id");
  String main = element.getString("main");
  String description = element.getString("description");
  String icon = element.getString("icon");

  String cityName = data.getString("name");
  textSize(30);
  textAlign(CENTER);
  text(cityName,width/2,35);
  
  //int temp = data.getInt("temp");
  
  JSONObject mainObj = data.getJSONObject ("main");
  int temp = mainObj.getInt("temp"); //gets temp data from API
  final float tempF = (1.8 * (temp - 273) + 32); //converting temp into Farenheit 
  println(tempF);
  float tempNorm = map( tempF, 0, 150, 0, 540);
  
  int pressure = mainObj.getInt("pressure"); //gets pressure data from API
  float pressNorm = map(pressure, 0, 1200, 0, 540);
  println(pressure);
  
  int humidity = mainObj.getInt("humidity"); //gets humidity data from API
  float humNorm = map( humidity, 0, 100, 0, 540);
  println(humidity);
  
  //JSONobject rain = 
 
  //mycircle = new Circle(30, tempF);
  tempBar = new  Bar(tempNorm, tempF, 60,"TEMPERATURE");
  sbar = new Bar(pressNorm, pressure, 100, "PRESSURE");
  humBar = new Bar(humNorm, humidity, 140, "HUMIDITY");
  
  //fill(0);
  //textSize(20);
  //text(id,50,100);
  //text(main,50,150);
  //text(description, 50,200);
  //text(icon,50,250);
  //text(tempF,50,350);
  
  //______pink divider line
  stroke(255, 150, 253,200);
  strokeWeight(7);
  line(60,0,60,600);
  
  
}

void draw () {
  //mycircle.display();
  tempBar.display();
  sbar.display();
  humBar.display();
}
