import javax.script.*;

ScriptEngineManager mgr = new ScriptEngineManager();
ScriptEngine engine = mgr.getEngineByName("JavaScript");


Camera c;

Function func = new Function();


final float ZOOM_START = 200;


void settings ()
{
  size( 1200, 675, P3D );
  smooth( 4 );
}

void setup ()
{
  c = new Camera();
  c.goTo(-100, 10, -100);
}

void draw ()
{
  background(255);
  
  func.drawGraph();
  c.call();
}
