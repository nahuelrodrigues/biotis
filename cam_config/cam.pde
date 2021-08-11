import processing.video.*;
Capture webcam;


void setup() {
  //frameRate (60);
  size(640, 480);
  String[] devices = Capture.list();
  webcam = new Capture(this, 640, 480, devices[1]);  

  println(devices);
  webcam.start();
}

void draw() {
  if (webcam.available() == true) {
    webcam.read();
    image(webcam, 0, 0);
  }
  saveFrame("line.bmp");
}