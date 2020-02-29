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
  try{
    println((engine.eval(test)));
  }catch(ScriptException e){
    e.printStackTrace();
  }
}
