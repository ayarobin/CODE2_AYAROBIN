class Cities {
  
  Bar tempBar;
  Bar sbar;
  Bar humBar;
  
  
  Cities(String APIkey, String query, int Color, int cityNameY) {
    JSONObject data = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?" + query + "&APPID=" + APIkey);
    //JSONArray weather = data.getJSONArray("weather");
    //JSONObject element = weather.getJSONObject(0);
    JSONObject mainObj = data.getJSONObject ("main");
    
    //int id = element.getInt("id");
    //String main = element.getString("main");
    //String description = element.getString("description");
    //String icon = element.getString("icon");
  
    //_______Getting and Drawing City Name__________
    String cityName = data.getString("name");
    textSize(20);
    text(cityName,450,cityNameY);
    
    
    int temp = mainObj.getInt("temp"); //gets temp data from API
    final int tempF = int((1.8 * (temp - 273) + 32)); //converting temp into Farenheit 
    //println(tempF);
    int tempNorm = int(map( tempF, -120, 150, 0, 540));
    
    int pressure = mainObj.getInt("pressure"); //gets pressure data from API
    int pressNorm = int(map(pressure, 870, 1200, 0, 540));
    //println(pressure);
    
    int humidity = mainObj.getInt("humidity"); //gets humidity data from API
    int humNorm = int(map( humidity, 1, 100, 0, 540));
    //println(humidity);
    
    
    tempBar = new  Bar(tempNorm, tempF, 60,"TEMPERATURE", Color);
    sbar = new Bar(pressNorm, pressure, 100, "PRESSURE", Color);
    humBar = new Bar(humNorm, humidity, 140, "HUMIDITY", Color);
    
  }
  
  
  void draw(){
    tempBar.display();
    sbar.display();
    humBar.display();
    
  }
  
}
