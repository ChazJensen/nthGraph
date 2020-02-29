class Function{
  
  
  
  Function(){
    
  }
  
  void drawGraph(){
    background(255);
    
    camera(00,00,200,0,0,0,0,1,0);
    
    stroke(0,255,0);
    line(-1000,0,0,1000,0,0);
    stroke(255,0,0);
    line(0,-1000,0,0,1000,0);
    stroke(0,0,255);
    line(0,0,-1000,0,0,1000);
    
    //noFill();
    //stroke(0);
    noStroke();
    fill(150,0,150,125);
    //beginShape();
      for(int x=-100; x<101; x+=5){
        for(int z=-100; z<101; z+=5){
          beginShape();
          vertex(x,-.1*pow(x,2)+z,z);
          vertex(x+5,-.1*pow((x+5),2)+z,z);
          vertex(x+5,-.1*pow((x+5),2)+z+5,z+5);
          vertex(x,-.1*pow(x,2)+z+5,z+5);
          vertex(x,-.1*pow(x,2)+z,z);
          endShape();
        }
      }
    //endShape();
  }
  
}
