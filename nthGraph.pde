import javax.script.*;

void settings() {
  size(1200, 675, P3D);
  smooth(16);
}

Axes a;
Textbox t;
float xRotation;
float yRotation;
float zRotation;
int time;
boolean labelsEnabled = false;
boolean textboxEnabled = false;
boolean helpEnabled = false;
String userInput = "";
float zoom = 200;

Button k1;
Button k2;
Button k3;
Button k4;
Button k5;
Button k6;
Button k7;
Button k8;
Button k9;
Button k0;

//Button k_e;
//Button k_pi;

ArrayList<Button> numButtons = new ArrayList<Button>();

ScriptEngineManager mgr = new ScriptEngineManager();
ScriptEngine engine = mgr.getEngineByName("JavaScript");


void setup() {
  final int numpadXShift = 0;
  final int numpadYShift = 0;
  k1 = new Button(100+numpadXShift, 100+numpadYShift, 50, 50, "1", "1");
  numButtons.add(k1);
  k2 = new Button(160+numpadXShift, 100+numpadYShift, 50, 50, "2", "2");
  numButtons.add(k2);
  k3 = new Button(220+numpadXShift, 100+numpadYShift, 50, 50, "3", "3");
  numButtons.add(k3);
  k4 = new Button(100+numpadXShift, 160+numpadYShift, 50, 50, "4", "4");
  numButtons.add(k4);
  k5 = new Button(160+numpadXShift, 160+numpadYShift, 50, 50, "5", "5");
  numButtons.add(k5);
  k6 = new Button(220+numpadXShift, 160+numpadYShift, 50, 50, "6", "6");
  numButtons.add(k6);
  k7 = new Button(100+numpadXShift, 220+numpadYShift, 50, 50, "7", "7");
  numButtons.add(k7);
  k8 = new Button(160+numpadXShift, 220+numpadYShift, 50, 50, "8", "8");
  numButtons.add(k8);
  k9 = new Button(220+numpadXShift, 220+numpadYShift, 50, 50, "9", "9");
  numButtons.add(k9);
  k0 = new Button(100+numpadXShift, 280+numpadYShift, 170, 50, "0", "0");
  numButtons.add(k0);
  
  background(255);
  stroke(0);
  strokeWeight(3);
  a = new Axes(2);
  t = new Textbox(-100, 300);
  time = 0;
}

void draw() {
  background(255);
  pushMatrix();
  for(Button b : numButtons){
    b.drawButton();
  }
  popMatrix();
  
  pushMatrix();
  translate(width/2+250, height/2-50);
  a.drawAxes();
  popMatrix();
  
  pushMatrix();
  translate(width/2+250, height/2-50);
  t.drawTextbox();
  popMatrix();
  
  time++;
}
