// bryan ma for code 2 sp 19

JSONObject json;

int state = 0;

Scene[] scenes;

void setup() {
  size(600, 600);
  
  json = new JSONObject();
  
  json = loadJSONObject("data_v1.json");
  
  JSONArray descriptions = json.getJSONArray("descriptions");
  JSONArray bgColor = json.getJSONArray("bgColor");
  
  JSONArray options = json.getJSONArray("options");
  JSONArray optionTargets = json.getJSONArray("optionTargets");
  
  //descriptions = json.getString("descriptions");
  //String options = json.getString("options");
  ////int[][] optionTargets = json.getJSONArray("optionTargets");
  //JSONArray optionTargets = json.getJSONArray("optionTargets");
  
  //int id = json.getInt("id");
  //String species = json.getString("species");
  //String name = json.getString("name"
  scenes = new Scene[descriptions.size()];
  
  for (int i = 0; i < scenes.length; i++) {
    scenes[i] = new Scene(descriptions.getString(i), bgColor.getJSONArray(i), options.getJSONArray(i), optionTargets.getJSONArray(i));
  }
}

void draw() {
  int j = 0;
  background(scenes[state].bgColor.getInt(j));
  textSize(40);
  fill(0);
  text(scenes[state].displayText, 40, 40, 450, 300);
 
  
  textSize(24);
  for (int i = 0; i < scenes[state].options.size(); i++) {
    text(i + 1, 30, 450 + i * 50);
    text(scenes[state].options.getString(i), 70, 450 + i * 50);
  }
}

void keyPressed() {  
  for (int i = 0; i < scenes[state].optionTargets.size(); i++) {
    if (keyCode - 49 == i) {
       state = scenes[state].optionTargets.getInt(i);
    }
  }
}
