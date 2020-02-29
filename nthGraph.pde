void settings(){
  size(1200,675,P3D);
  smooth(16);
}

Axes a;
float xRotation;
float yRotation;
float zRotation;
int time;
boolean labelsEnabled = true;

void setup() {
  background(255);
  stroke(0);
  strokeWeight(3);
  a = new Axes(2);
  time = 0;
}

void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  a.drawAxes();
  popMatrix();
  time++;
}
