class Textbox {
  int x;
  int y;

  Textbox(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void drawTextbox() {
    fill(240);
    stroke(0);
    strokeWeight(1);
    fill(255);
    rectMode(CORNER);
    rect(x-40,y-20,80+11*userInput.length(),50,100/13);
    fill(0);
    textSize(20);
    textAlign(LEFT);
    text("y = " + userInput, x-20, y+10);
  }

  void analyzeInput() {
    String temp = userInput;
    
    try {
      System.out.println(engine.eval(temp));
    } 
    catch (ScriptException e) {
      System.out.println(temp);
      System.out.println("Sorry, it appears your function was invalid.");
    }
    
  }
}
