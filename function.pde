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
    
    int polySize=5;
    
    int xLength = 40;
    int zLength = 30;
    
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
    fill(150,0,150,125);
    //beginShape();
    
    //y=(x^2)*(z^3)*(a^4)*(b^5)*(c^6)
    
    
      for(int x=-(int)(xLength/2); x<=(int)(xLength/2); x+=polySize){
        for(int z=-(int)(zLength/2); z<=(int)(zLength/2); z+=polySize){
          float y0=0,y1=0,y2=0,y3=0;
          try{
            y0 = .0000000000000000001*(Double.class.cast(engine.eval("Math.pow("+x+",2)*Math.pow("+z+",3)*Math.pow("+dimVals.get(0)+",4)*Math.pow("+dimVals.get(1)+",5)*Math.pow("+dimVals.get(2)+",6)"))).floatValue();
            y1 = .0000000000000000001*(Double.class.cast(engine.eval("Math.pow("+(x+polySize)+",2)*Math.pow("+z+",3)*Math.pow("+dimVals.get(0)+",4)*Math.pow("+dimVals.get(1)+",5)*Math.pow("+dimVals.get(2)+",6)"))).floatValue();
            y2 = .0000000000000000001*(Double.class.cast(engine.eval("Math.pow("+(x+polySize)+",2)*Math.pow("+(z+polySize)+",3)*Math.pow("+dimVals.get(0)+",4)*Math.pow("+dimVals.get(1)+",5)*Math.pow("+dimVals.get(2)+",6)"))).floatValue();
            y3 = .0000000000000000001*(Double.class.cast(engine.eval("Math.pow("+x+",2)*Math.pow("+(z+polySize)+",3)*Math.pow("+dimVals.get(0)+",4)*Math.pow("+dimVals.get(1)+",5)*Math.pow("+dimVals.get(2)+",6)"))).floatValue();
          }catch(ScriptException e){
            e.printStackTrace();
          }
          beginShape();
          vertex(x,-.1*y0,z);
          vertex(x+polySize,-.1*y1,z);
          vertex(x+polySize,-.1*y2,z+polySize);
          vertex(x,-.1*y3,z+polySize);
          vertex(x,-.1*y0,z);
          endShape();
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
