class Function{
  
  int hDimms=3;
  
  ArrayList<Integer> dimVals = new ArrayList<Integer>();
  ArrayList<Slider> slices = new ArrayList<Slider>();
  
  String test = "";
  
  Function(){
    for(int n=0; n<hDimms; n++){
      slices.add(new Slider((40*n)+20, 0, (int)zoom, 100));
      dimVals.add(slices.get(n).value);
    }
  }
  
  void drawGraph(){
    
    pushMatrix();
    background(255);
    
    int polySize=10;
    
    int xLength = 400;
    int zLength = 300;
    
    camera(00,00,zoom,0,0,-10000000,0,1,0);
    
    stroke(0,255,0);
    line(-10000000,0,0,10000000,0,0);
    stroke(255,0,0);
    line(0,-10000000,0,0,10000000,0);
    stroke(0,0,255);
    line(0,0,-10000000,0,0,10000000);
    
    //noFill();
    //stroke(0);
    stroke(80,0,80,180);
    fill(150,0,150,200);
    //beginShape();
    
    //y=(x^2)*(z^3)*(a^4)*(b^5)*(c^6)
    
    
      xForSub: for(int x=-(int)(xLength/2); x<=(int)(xLength/2); x+=polySize){
        zForSub: for(int z=-(int)(zLength/2); z<=(int)(zLength/2); z+=polySize){
          float y0=0,y1=0,y2=0,y3=0;
          
          // a string var takes the text-box input and uses a regex to replace varN (any var) with its value
          String xz = "", xppz = "", xppzpp = "", xzpp = "";
          
          
          if (t.output != null) {
          
            Double X = Double.valueOf(x);
            Double Z = Double.valueOf(z);
            
            // look over t.output and preform regexes for different things
            xz = (t.output).replaceAll("varX", " " + X + " "); // varX -> x as in int x from xForSub
            xz = xz.replaceAll("varZ", " " + Z + " "); // varZ -> x as in int z from zForSub
            xz = xz.replaceAll("varA", " " + dimVals.get(0) + " ");
            xz = xz.replaceAll("varA", " " + dimVals.get(1) + " ");
            xz = xz.replaceAll("varA", " " + dimVals.get(2) + " ");
            
             
            
            xppz = (t.output).replaceAll("varX", " " + (X + polySize) + " "); // varX -> x as in int x from xForSub
            xppz = xppz.replaceAll("varZ", " " + Z + " "); // varZ -> x as in int z from zForSub
            xppz = xppz.replaceAll("varA", " " + dimVals.get(0) + " ");
            xppz = xppz.replaceAll("varA", " " + dimVals.get(1) + " ");
            xppz = xppz.replaceAll("varA", " " + dimVals.get(2) + " ");
            
            
            xppzpp = (t.output).replaceAll("varX", " " + (X + polySize) + " "); // varX -> x as in int x from xForSub
            xppzpp = xppzpp.replaceAll("varZ", " " + (Z + polySize) + " "); // varZ -> x as in int z from zForSub
            xppzpp = xppzpp.replaceAll("varA", " " + dimVals.get(0) + " ");
            xppzpp = xppzpp.replaceAll("varA", " " + dimVals.get(1) + " ");
            xppzpp = xppzpp.replaceAll("varA", " " + dimVals.get(2) + " ");
            
            
            xzpp = (t.output).replaceAll("varX", " " + X + polySize + " "); // varX -> x as in int x from xForSub
            xzpp = xzpp.replaceAll("varZ", " " + (Z + polySize) + " "); // varZ -> x as in int z from zForSub
            xzpp = xzpp.replaceAll("varA", " " + dimVals.get(0) + " ");
            xzpp = xzpp.replaceAll("varA", " " + dimVals.get(1) + " ");
            xzpp = xzpp.replaceAll("varA", " " + dimVals.get(2) + " ");
            
            println(xz);
          
          
          
          
          try{
            y0 = (Double.class.cast(engine.eval(xz))).floatValue();
            y1 = (Double.class.cast(engine.eval(xppz))).floatValue();
            y2 = (Double.class.cast(engine.eval(xppzpp))).floatValue();
            y3 = (Double.class.cast(engine.eval(xzpp))).floatValue();
            println(y0);
          }catch(ScriptException e){
            e.printStackTrace();
          }
          
          
          }
          
          
          beginShape();
          vertex(x,-.1*y0,z);
          vertex(x+polySize,-.1*y1,z);
          vertex(x+polySize,-.1*y2,z+polySize);
          vertex(x,-.1*y3,z+polySize);
          vertex(x,-.1*y0,z);
          endShape();
          // */
        }
      }
    //endShape();
    popMatrix();
    for(int s=0; s<slices.size(); s++){
      slices.get(s).drawSlider();
      dimVals.set(s,slices.get(s).value);
    }
  }
  
  
  
}
