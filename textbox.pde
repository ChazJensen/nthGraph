class Textbox {
  int x;
  int y;
  String output;
  
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
    rect(x-40,y-20,450,50,100/13);
    fill(0);
    textSize(20);
    textAlign(LEFT);
    text("y = " + userInput, x-20, y+10);
  }

  void analyzeInput() {
    output = userInput;
    output = output.replace("sqrt", "Math.sqrt").replace("ln", "Math.log").replace("abs", "Math.abs").replace(" sin", "Math.sin").replace(" cos", "Math.cos").replace(" tan", "Math.tan").replace("arcsin", "Math.asin").replace("arccos", "Math.acos").replace("arctan", "Math.atan").replace("/e", "Math.E").replace("π", "Math.PI");
    try {
      System.out.println("Result: " + engine.eval(output));
    } 
    catch (ScriptException e) {
      //System.out.println(temp);
      System.out.println("Sorry, it appears your function was invalid.");
    }
    
  }
}
