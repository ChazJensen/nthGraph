import javax.script.*;

ScriptEngineManager mgr = new ScriptEngineManager();
ScriptEngine engine = mgr.getEngineByName("JavaScript");

String test = "3*sin(PI)";

Function func = new Function();
Button btnUp;
Button btnDown;

float cameraX=width/2;
float cameraY=height/2;
float cameraZ=(height/2.0) / tan(PI*30.0 / 180.0);
float zoom = 200;

void settings(){
  size(1200,675,P3D);
  smooth(16);
}

void setup(){
  btnUp=new Button(0,0,50,20,"Add");
  btnDown=new Button(0,20,50,20,"minus");
}

void draw(){
  func.drawGraph();
}
