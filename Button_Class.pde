class Button{
  float x;
  float y;
  int w;
  int h;
  String title;
  
  Button(float x, float y, int w, int h, String title){
    this.x =x;
    this.y =y;
    this.w =w;
    this.h =h;
    this.title =title;
    
  }
    
    void drawButton(){
      color c = color(240);
      stroke(0);
      strokeWeight(1);
      if(mouseIsHovering() && mousePressed){
        c = color(180);
        stroke(0,0,155);
        strokeWeight(3);
      }else if(mouseIsHovering()){
        c = color(235);
        stroke(0,0,155);
        strokeWeight(2);
      }

      pushMatrix();
      translate(x,y);
      fill(c);
      rect(0,0,w,h,w/13+h/13);
      fill(0);
      textSize(12);
      textAlign(CENTER,CENTER);
      text(title,w/2,h/2);
      popMatrix();
      stroke(0);
      strokeWeight(1);
    }
  
    boolean mouseIsHovering(){
      if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
       return true; 
      }else{
      return false;
      }
    }
  
}

class PlayButton extends Button{
  
  float diameter;
  
  PlayButton(float x, float y, int d){
    super(x,y,d,d,"");
    diameter=d;
  }
  
  void drawButton(){
    color c = color(240);
      stroke(0);
      strokeWeight(1);
      if(mouseIsHovering() && mousePressed){
        c = color(180);
        stroke(0,0,155);
        strokeWeight(3);
      }else if(mouseIsHovering()){
        c = color(235);
        stroke(0,0,155);
        strokeWeight(2);
      }
      
      pushMatrix();
      translate(x,y);
      fill(c);
      ellipseMode(CORNER);
      ellipse(0,0,diameter,diameter);
      ellipseMode(CENTER);
      fill(0);
      translate(diameter/2,diameter/2);
      triangle(-diameter/6,-diameter/5, -diameter/6,diameter/5, diameter/5,0);
      popMatrix();
      stroke(0);
      strokeWeight(1);
  }
  
}
