class Slider{
  
  int x;
  int y;
  int z;
  int h;
  float xRot;
  float yRot;
  float zRot;
  String dimNum;
  
  Boolean hold = false;
  
  int value;
  
  Slider(int x, int y, int z, int h, String dimNum){
    this.x=x;
    this.y=y;
    this.z=z;
    this.h=h;
    xRot=0;
    yRot=0;
    zRot=0;
    value=0;
    this.dimNum = dimNum;
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
    textSize(20);
    text(dimNum, x-5, y + h + 20);
  }
  
  Boolean mouseIsHovering(){
    if(mouseX>x-15 && mouseX<x+15 && mouseY>y+(h/2)-value && mouseY<y+(h/2)-value+5)return true;
    return false;
  }
  
}

/*


class PCSlider extends Slider{
  
  PCSlider(int x, int y, int z, int h) {
    super (x, y, z, h, "PC");
  }
}


/*
class PCSlider{ //polyCountSlider
  
  int x;
  int y;
  int z;
  int h;
  float xRot;
  float yRot;
  float zRot;
  
  Boolean hold = false;
  
  int value;
  
  PCSlider(int x, int y, int z, int h){
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
    if(hold)value=y+(h)-(mouseY-2);
    if((mouseY-2)<y || (mouseY-2)>y+h)hold=false;
    if(value>(h))value=h;
    if(value<2)value=2;
    noStroke();
    fill(100);
    rect(x-2.5,y,5,h);
    fill(30,30,150);
    rect(x-10,y+(h)-value,20,5);
  }
  
  Boolean mouseIsHovering(){
    if(mouseX>x-15 && mouseX<x+15 && mouseY>y+(h)-value && mouseY<y+(h)-value+5)return true;
    return false;
  }
  
}

*/
