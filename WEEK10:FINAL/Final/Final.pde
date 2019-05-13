

Sphere [] sphere = new Sphere [30];
Cube [] cube = new Cube [30];
Aya [] aya = new Aya [30];
int state = 1;
int keypress;

PImage bg;
PImage giff;

///FFT_______________________________
import processing.sound.*;
// Declare the sound source and FFT analyzer variables
SoundFile sample;
FFT fft;

// Define how many FFT bands to use (this needs to be a power of two)
int bands = 128;

// Define a smoothing factor which determines how much the spectrums of consecutive
// points in time should be combined to create a smoother visualisation of the spectrum.
// A smoothing factor of 1.0 means no smoothing (only the data from the newest analysis
// is rendered), decrease the factor down towards 0.0 to have the visualisation update
// more slowly, which is easier on the eye.
float smoothingFactor = 0.2;

// Create a vector to store the smoothed spectrum data in
float[] sum = new float[bands];

// Variables for drawing the spectrum:
// Declare a scaling factor for adjusting the height of the rectangles
int scale = 5;
// Declare a drawing variable for calculating the width of the 
float barWidth;
//____________________________________


void setup () {
  size(1000, 600, P3D);
  bg = loadImage("spaceBG.jpg");
  giff = loadImage("water.gif");
  for (int i = 0; i < sphere.length; i++) {
    sphere[i] = new Sphere();
    cube[i] = new Cube();
    aya[i] = new Aya();
  }

  //FFT_______________________________
  // Calculate the width of the rects depending on how many bands we have
  barWidth = width/float(bands);

  // Load and play a soundfile and loop it.
  //sample = new SoundFile(this, "Oracle.mp3"); //different song
  sample = new SoundFile(this, "codeFinal.mp3");
  sample.loop();

  // Create the FFT analyzer and connect the playing soundfile to it.
  fft = new FFT(this, bands);
  fft.input(sample);
  //___________________________________
}

void draw () {
  background(0);
  lights();
  ambientLight(0, 0, 255);
  
  translate(0.5*width, 0.5*height);



  //FFT________________________
  // Perform the analysis
  fft.analyze();

  for (int i = 0; i < bands; i++) {
  
    // Smooth the FFT spectrum data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smoothingFactor;
  }
  //___________________________

  float lowSum = 0;
  for (int i = 0; i < bands/5; i++) {
    lowSum += fft.spectrum[i];
  }
  println(lowSum);
  if(state == 1){
    background(bg);
    for (int i=0; i<sphere.length; i++) {
      sphere[i].update();
      sphere[i].draw(lowSum);
      
    }
  }
  if(state == 2){
    background(255);
    for (int i=0; i<cube.length; i++) {
      cube[i].update();
      cube[i].draw(lowSum);
    }  
  }
  if(state == 3){
    background(giff);
    for (int i=0; i<aya.length; i++) {
      aya[i].update();
      aya[i].draw(lowSum);
    }  
  }
  
}

void keyPressed() {
  if (key == ' ' ) {
    keypress++;
    if(keypress%3 == 2)
      state = 3;
    else if (keypress%3 == 1)
      state = 2;
    else 
      state = 1;
  }
}
