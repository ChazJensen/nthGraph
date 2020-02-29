void mousePressed(){
  if(btnUp.mouseIsHovering()){
    cameraY+=10;
    camera(cameraX,cameraY,cameraZ, width/2.0, height/2.0, 0, 0, 1, 0);
  }
  
  if(btnDown.mouseIsHovering()){
    cameraY-=10;
    camera(cameraX,cameraY,cameraZ, width/2.0, height/2.0, 0, 0, 1, 0);
  }
  
}

void mouseWheel(MouseEvent e){
  float turn=e.getCount();
  zoom+=(5*turn);
}
