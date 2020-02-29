class Slider{
  
  int x;
  int y;
  int z;
  int h;
  float xRot;
  float yRot;
  float zRot;
  
  Boolean hold = false;
  
  int value;
  
  Slider(int x, int y, int z, int h){
    this.x=x;
    this.y=y;
    this.z=z;
    this.h=h;
    xRot=0;
    yRot=0;
    zRot=0;
    value=0;
  }
  
  void drawSlider(){
    if(hold)value=y+(h/2)-(mouseY-2);
    if((mouseY-2)<y || (mouseY-2)>y+h)hold=false;
    if(value>(h/2))value=h/2;
    if(value<-(h/2))value=-h/2;
    noStroke();
    fill(100);
    rect(x-2.5,y,5,h);
    fill(30,30,150);
    rect(x-10,y+(h/2)-value,20,5);
  }
  
  Boolean mouseIsHovering(){
    if(mouseX>x-15 && mouseX<x+15 && mouseY>y+(h/2)-value && mouseY<y+(h/2)-value+5)return true;
    return false;
  }
  
}
