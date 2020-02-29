
enum AxisName {
    X,
    Y,
    Z
}

class Function
{
  final int AXIS_SIZE = 100;
  
  
  final int X_AXIS = 0;
  final int Y_AXIS = 1;
  final int Z_AXIS = 2;
  final color[] AXES_COLORS = {
    #00ff00,
    #ff0000,
    #0000ff
  };
  
  color defaultStrokeColor = color(80, 0, 80, 180);
  color defaultFillColor = color(150, 0, 150, 125);
  
  void drawGraph () {
    pushMatrix();
    
    // startup/variable params
    int polySize = 2;
    int xLength = 30;
    int zLength = 40;
    
    c.call();
    
    
    // axes:
    drawAxis(AxisName.X);
    drawAxis(AxisName.Y);
    drawAxis(AxisName.Z);
    
    stroke(defaultStrokeColor);
    fill(defaultFillColor);
    
    for(int x=-(int)(xLength/2); x<=(int)(xLength/2); x+=polySize){
      for(int z=-(int)(zLength/2); z<=(int)(zLength/2); z+=polySize){
        beginShape();
        // this is the equation
        // equation: y = x^2 + z
        vertex( x,              - .01 * pow( x, 2)             + z               , z);
        vertex( x + polySize,   - .01 * pow((x + polySize), 2) + z               , z);
        vertex( x + polySize,   - .01 * pow((x + polySize), 2) + z + polySize    , z + polySize);
        vertex( x,              - .01 * pow( x, 2)             + z + polySize    , z + polySize);
        vertex( x,              - .01 * pow( x, 2)             + z               , z);
        endShape();
      }
    }
    
    popMatrix();
  }
  
  void drawAxis (AxisName A)
  {
    
    switch (A) {
      case X:
        stroke( AXES_COLORS[ X_AXIS ] );
        line(
          -AXIS_SIZE, 0, 0,
           AXIS_SIZE, 0, 0 );
        break;
      
      
      case Y:
        stroke( AXES_COLORS[ Y_AXIS ] );
        line(
          0, -AXIS_SIZE, 0,
          0,  AXIS_SIZE, 0 );
        break;
        
        
      case Z:
        stroke( AXES_COLORS[ Z_AXIS ] );
        line(
          0, 0, -AXIS_SIZE,
          0, 0,  AXIS_SIZE );
        break;
        
      default:
        break;
    }
  }
}
