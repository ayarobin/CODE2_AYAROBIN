class Scene {
  String displayText;
  JSONArray bgColor;
  
  JSONArray options;
  JSONArray optionTargets;
  
  Scene(String txt, JSONArray bgC, JSONArray opt, JSONArray targets) {
    displayText = txt;
    bgColor = bgC;
    options = opt;
    optionTargets = targets;
  }
}
