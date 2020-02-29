  
final int foo = 2;


void mousePressed(){
  for(int s=0; s<func.slices.size(); s++){
    if(func.slices.get(s).mouseIsHovering()){
      func.slices.get(s).hold=true;
    }
  }
  
  for (Button b : numButtons) {
    if (b == k_enter && b.mouseIsHovering()) {
      println(userInput);
      t.analyzeInput();
      userInput = "";
    } else if (b.mouseIsHovering()) userInput += b.insertText;
  }
  
}

void mouseReleased(){
  for(int s=0; s<func.slices.size(); s++){
    if(func.slices.get(s).hold)func.slices.get(s).hold=false;
  }
  
    if (!textboxEnabled) {
    xRotation = TWO_PI * -mouseX/width;
    yRotation =TWO_PI * -mouseY/height;
  }
  
}

void mouseWheel(MouseEvent e){
  float turn=e.getCount();
  zoom+=(5*turn);
}

void keyPressed() {
  println(keyCode);
  if (keyCode == 8 && userInput.length() > 0 /*prevent out of bounds errors */) userInput = userInput.substring(0, userInput.length()-1); //backspace removes last char

  else if (keyCode != 16 /*shift*/) userInput += key; //otherwise, add the key to the end of the string

  //move next 3 lines to top of void?
  if (keyCode == 10) { //hit enter to toggle textbox
    println(userInput);
    t.analyzeInput();
    userInput = "";
  }
}
