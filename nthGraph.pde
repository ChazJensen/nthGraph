import javax.script.*;

ScriptEngineManager mgr = new ScriptEngineManager();
ScriptEngine engine = mgr.getEngineByName("JavaScript");


int wololo = 7;

String test = "Math.pow(" + wololo + ",2)";

Function func = new Function();
Button btnUp;
Button btnDown;

float cameraX=width/2;
float cameraY=height/2;
float cameraZ=(height/2.0) / tan(PI*30.0 / 180.0);
float zoom = 200;

float xRotation;
float yRotation;
float zRotation;

String userInput = "";

Textbox t;

boolean labelsEnabled = false;
boolean textboxEnabled = false;
boolean helpEnabled = false;

// PCSlider polyCountSlider;

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

Button k_e;
Button k_pi;

Button k_add;
Button k_subtract;
Button k_mult;
Button k_div;
Button k_root;
Button k_exp;
Button k_ln;
Button k_abs;

Button k_openP;
Button k_closeP;

Button k_sin;
Button k_cos;
Button k_tan;
Button k_arcsin;
Button k_arccos;
Button k_arctan;

Button k_enter;

Button varX;
Button varZ;
Button varA;
Button varB;
Button varC;

ArrayList<Button> numButtons = new ArrayList<Button>();


void settings() {
  size(1920, 1080, P3D);
  smooth(16);
}

void setup() {

  final int numpadXShift =-50;
  final int numpadYShift = 620;
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
  k_e = new Button(100+numpadXShift, 340+numpadYShift, 80, 50, "e", "/e");
  numButtons.add(k_e);
  k_pi = new Button(190+numpadXShift, 340+numpadYShift, 80, 50, "π", "π");
  numButtons.add(k_pi);

  k_add = new Button(280+numpadXShift, 100+numpadYShift, 50, 50, "+", "+");
  numButtons.add(k_add);
  k_subtract = new Button(340+numpadXShift, 100+numpadYShift, 50, 50, "-", "-");
  numButtons.add(k_subtract);
  k_mult = new Button(280+numpadXShift, 160+numpadYShift, 50, 50, "×", "*");
  numButtons.add(k_mult);
  k_div = new Button(340+numpadXShift, 160+numpadYShift, 50, 50, "÷", "/");
  numButtons.add(k_div);
  k_root = new Button(280+numpadXShift, 220+numpadYShift, 50, 50, "√", "sqrt(");
  numButtons.add(k_root);
  k_exp = new Button(340+numpadXShift, 220+numpadYShift, 50, 50, "^", "^");
  numButtons.add(k_exp);
  k_ln = new Button(280+numpadXShift, 280+numpadYShift, 50, 50, "ln", "ln(");
  numButtons.add(k_ln);
  k_abs = new Button(340+numpadXShift, 280+numpadYShift, 50, 50, "|x|", "abs(");
  numButtons.add(k_abs);
  k_openP = new Button(280+numpadXShift, 340+numpadYShift, 50, 50, "(", "(");
  numButtons.add(k_openP);
  k_closeP = new Button(340+numpadXShift, 340+numpadYShift, 50, 50, ")", ")");
  numButtons.add(k_closeP);
  k_sin = new Button(400+numpadXShift, 100+numpadYShift, 70, 50, "sin", " sin(");
  numButtons.add(k_sin);
  k_cos = new Button(480+numpadXShift, 100+numpadYShift, 70, 50, "cos", " cos(");
  numButtons.add(k_cos);
  k_tan = new Button(560+numpadXShift, 100+numpadYShift, 70, 50, "tan", " tan(");
  numButtons.add(k_tan);
  k_arcsin = new Button(400+numpadXShift, 160+numpadYShift, 70, 50, "arcsin", "arcsin(");
  numButtons.add(k_arcsin);
  k_arccos = new Button(480+numpadXShift, 160+numpadYShift, 70, 50, "arccos", "arccos(");
  numButtons.add(k_arccos);
  k_arctan = new Button(560+numpadXShift, 160+numpadYShift, 70, 50, "arctan", "arctan(");
  numButtons.add(k_arctan);
  k_enter = new Button(400+numpadXShift, 220+numpadYShift, 230, 170, "Enter", ""); //add special effect for when this is pressed
  numButtons.add(k_enter);
  varX=new Button(640+numpadXShift, 100+numpadYShift, 50, 50, "X", "varX");
  numButtons.add(varX);
  varZ=new Button(640+numpadXShift, 160+numpadYShift, 50, 50, "Z", "varZ");
  numButtons.add(varZ);
  varA=new Button(640+numpadXShift, 220+numpadYShift, 50, 50, "A", "varA");
  numButtons.add(varA);
  varB=new Button(640+numpadXShift, 280+numpadYShift, 50, 50, "B", "varB");
  numButtons.add(varB);
  varC=new Button(640+numpadXShift, 340+numpadYShift, 50, 50, "C", "varC");
  numButtons.add(varC);

  // polyCountSlider = new PCSlider(200, 200, (int)zoom, 100);

  t = new Textbox(-200, 500);
}

void draw() {
  func.drawGraph();
  try{
   println((engine.eval(test)));
   }catch(ScriptException e){
   // e.printStackTrace();
   println("you faile");
   }
  pushMatrix();
  //scale(.5,.5);
  for (Button b : numButtons) {
    b.drawButton();
  }
  popMatrix();

  pushMatrix();
  translate(width/2+250, height/2-50);
  popMatrix();

  pushMatrix();
  translate(width/2+250, height/2-50);
  t.drawTextbox();
  popMatrix();

  // polyCountSlider.drawSlider();
}
