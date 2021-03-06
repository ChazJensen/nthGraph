class Button{
  float x;
  float y;
  int w;
  int h;
  String title;
  String insertText;
  
  Button(float x, float y, int w, int h, String title, String insertText){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.title = title;
    this.insertText = insertText;
    
  }
    
    void drawButton(){
      rectMode(CORNER);
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
      rect(0,0,w,h,100/13); //changed from w/13+h/13 to 100/13 for consistency
      fill(0);
      textSize(18);
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
