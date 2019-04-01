import ddf.minim.*;
import ddf.minim.analysis.*;
import javax.sound.sampled.*;

Minim minim;
AudioInput in;
FFT fft;
Drop[] drops = new Drop[750];
int cols, rows;
int scale = 30;
int w = 2000;
int h = 1400;
float right;
float left;
float flying;
float[][] zvals;
float bass;

void setup() {
  minim = new Minim(this);
  in = minim.getLineIn();
  fft = new FFT (in.bufferSize(), in.sampleRate());
  size(1600, 900, P3D);
  cols = w / scale;
  rows = h / scale;
  zvals = new float[cols][rows];

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}
void draw() {
  bass = fft.getBand(2) + fft.getBand(1);
  stroke(bass/10);
  strokeWeight(1);
  noFill();
  background(0);
  frameRate(144);
  fft.forward(in.mix);
  
  
  flying -= ( bass / 4500) + 0.01;
  float yoff = flying;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      zvals[x][y] = map(noise(xoff, yoff), 0, 1, -50, 50);
      xoff += 0.3;
    }
    yoff += 0.3;
  }
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      stroke(255 - zvals[x][y] * 4, 0, 255);
      vertex(x*scale, y*scale, zvals[x][y]);
      vertex(x*scale, (y+1)*scale, zvals[x][y+1]);
    }
    endShape(CLOSE);
  }
  stroke(255, 0, 255);
  for (int i = 0; i < drops.length; i++) {
    drops[i].swipe();
    drops[i].show(2);
  }
}
void stop() {
  in.close();
  minim.stop();
  super.stop();
}