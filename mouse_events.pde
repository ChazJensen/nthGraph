void mousePressed(){
  for(int s=0; s<func.slices.size(); s++){
    if(func.slices.get(s).mouseIsHovering()){
      func.slices.get(s).hold=true;
    }
  }
  
}

void mouseReleased(){
  for(int s=0; s<func.slices.size(); s++){
    if(func.slices.get(s).hold)func.slices.get(s).hold=false;
  }
}

void mouseWheel(MouseEvent e){
  float turn=e.getCount();
  zoom+=(5*turn);
}
