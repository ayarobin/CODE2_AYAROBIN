// state = screen
// text to display for each screen (state representation)
// options to choose for each screen (state transitions)

// string for each text
//string for each option - corresponds to a keypress

int state = 0;
String[] descriptions = {
  //"state 0 You wake up in a swimming pool in a swamp.",
  //"state 1",
  //"state 2"
  
  "You wake up in Code 2 class and dont know whats going on",
  "state 1",
  "You feel enlightened by the answer, but still fall alseep"
};
String[][] options = {
  //{"go to state 1", "go to state 2"},
  //{"go to state 0"},
  //{"go to state 1", "go to state 0"}
  {"try to wake up", "ask a q"},
  {"you sleep"},
  {"struggle to stay awake", "enjoy the sweet surrender of sleep"}
};

int[][] optionTargets = {
  {1, 2};
  {0};
  {1,0};
}



Scene [] scenes = new Scene [descriptions.length];

void setup () {
  size (600,600);
  
  
  
  for (int i = 0; i < scenes.length; i++){
    scenes[i] = new Scene(descriptions[i],
  }
}

void draw () {
  background (255);
  textSize(40);
  fill(0);
  text(descriptions[state], 40,40,450,300);
  
  textSize(24);
  int i = 0;
  for (String option : options[state]) {
    text(option, 40,480 + i * 50);
    i++;
  }
  //text("option1",40,500);
  //text("option2",40,530);
}


void keyPressed() {
  
  //state = (state + 1) % descriptions.length;
  //if (keyCode == 49) {
  //  //println("1 pressed");
  //  //state = 1;
  //  state = optionTargets [state][0];
    
  //} 
  //if (keyCode == 50){
  //  //println("2 pressed");
  //  //state = 2;
  //  state = optionTargets [state][1];
  //}
  
  //if (keyCode == 51){
  //  state = optionTargets [state][2];
  //}
  
  
  for (int i = 0; i < optionTargets[state}.length; i++) { 
    if (keyCode - 49 == i) {
      state = optionTargets[state][i];
    }
  }
}



class Scene {
  String displayText;
  String [] options;
  int [] optionTargets;
  
  Scene (String txt, String [] opt, int[] targets) {
    displayText = txt;
    options = opt;
    optionTargets = targets;
  }
  
}
