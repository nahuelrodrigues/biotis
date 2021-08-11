
import processing.video.*;

Capture cam1;
//Capture cam2;
int currX, currY;
int capWidth, capHeight;
boolean isCapturing;

PFont font;

void setup() {

  size(640, 240);

  String[] devices = Capture.list();
  println(devices);  

  currX = 0;
  currY = 0;
  capWidth = 320;
  capHeight = 240;

  cam1 = new Capture(this, 320, 240, devices[0]);
  //cam2 = new Capture(this, 320, 240, devices[1]);
  isCapturing = true;
}

void draw() {

  image(cam1, currX, currY);
  //image(cam2, 320, currY);
} 

void captureEvent(Capture c) {
  c.read();
}

void keyPressed() {
  if (key == ' ') {

    isCapturing = !isCapturing;
    saveFrame("####.jpg");
  }
}