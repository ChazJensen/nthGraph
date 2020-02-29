class Axes {
  float[] axesScales; // multipliers for each axes scales (default x1)

  Axes (int dim) {
    axesScales = new float[dim];

    zeroScales();
  }

  void zeroScales() {
    for (int i = 0; i < axesScales.length; i++) {
      axesScales[i] = 2.0;
    }
  }

  void drawAxes() {
    strokeWeight(2);
    stroke(0);
    pushMatrix();
    if (mousePressed) {
      xRotation=(TWO_PI * -mouseX/width);
      yRotation=(TWO_PI * -mouseY/height);
    }
    if(keyPressed){
       if(keyCode == 16) zRotation = (TWO_PI * -mouseY/height);
    }
    rotateY(xRotation);
    rotateX(yRotation);
    rotateZ(zRotation);
    line(-100 * axesScales[0], 0, 0, 100 * axesScales[0], 0, 0); //x
    line(0, -100 * axesScales[0], 0, 0, 100 * axesScales[0], 0); //y
    line(0, 0, -100 * axesScales[0], 0, 0, 100 * axesScales[0]); //z
    strokeWeight(10);
    stroke(255, 0, 0);
    point(0, 0, 0); //origin
    point(-100 * axesScales[0], 0, 0); //-x
    point(0, -100 * axesScales[0], 0); //-y
    point(0, 0, -100 * axesScales[0]); //-z
    point(100 * axesScales[0], 0, 0); //x
    point(0, 100 * axesScales[0], 0); //y
    point(0, 0, 100 * axesScales[0]); //z
    
    //labels
    
    if(labelsEnabled){
     fill(0, 0, 0);
     textSize(20);
     text("-x", -100 * axesScales[0] - 5, 0, 0);
     text("-y", 0, -100 * axesScales[0] - 5, 0);
     text("-z", 0, 0, -100 * axesScales[0] - 5);
     text("+x", 100 * axesScales[0] - 5, 0, 0);
     text("+y", 0, 100 * axesScales[0] - 5, 0);
     text("+z", 0, 0, 100 * axesScales[0] - 5);
    }
    
    popMatrix();
  }
}
