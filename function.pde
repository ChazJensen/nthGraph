class Function{

Function(){}
  
   void drawGraph(){
    pushMatrix();
    background(255);
   
    int polySize=5;
   
    int xLength = 300;
    int zLength = 400;
   
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
   
      for(int x=-(int)(xLength/2); x<=(int)(xLength/2); x+=polySize){
        for(int z=-(int)(zLength/2); z<=(int)(zLength/2); z+=polySize){
          beginShape();
          vertex(x,-.1*pow(x,2)+z,z);
          vertex(x+polySize,-.1*pow((x+polySize),2)+z,z);
          vertex(x+polySize,-.1*pow((x+polySize),2)+z+polySize,z+polySize);
          vertex(x,-.1*pow(x,2)+z+polySize,z+polySize);
          vertex(x,-.1*pow(x,2)+z,z);
          endShape();
        }
      }
    //endShape();
    popMatrix();
  }
 
}
 
  
