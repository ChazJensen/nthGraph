
void keyPressed() {
  println(keyCode);
  // w 87
  if (keyCode == 87) c.setForward(true);
  // s 83
  if (keyCode == 83) c.setBackward(true);
  // d 68
  if (keyCode == 68) c.setRight(true);
  // a 65
  if (keyCode == 65) c.setLeft(true);
  // shift 16
  if (keyCode == 16) c.setShift(true);
  // ctrl 17
  if (keyCode == 17) c.setCtrl(true);
  // space 32
  if (keyCode == 32) c.setSpace(true);
  /*
  // w 87
  if (keyCode == 87) c.translateAxis(AxisNames.Z, -10);
  // s 83
  if (keyCode == 83) c.translateAxis(AxisNames.Z, 10);
  // d 68
  if (keyCode == 68) c.translateAxis(AxisNames.X, 10);
  // a 65
  if (keyCode == 65) c.translateAxis(AxisNames.X, -10);
  
  */
}

void keyReleased() {
  // w 87
  if (keyCode == 87) c.setForward(false);
  // s 83
  if (keyCode == 83) c.setBackward(false);
  // d 68
  if (keyCode == 68) c.setRight(false);
  // a 65
  if (keyCode == 65) c.setLeft(false);
  // shift 16
  if (keyCode == 16) c.setShift(false);
  // ctrl 17
  if (keyCode == 17) c.setCtrl(false);
  // space 32
  if (keyCode == 32) c.setSpace(false);
}

void mouseWheel( MouseEvent e ){
  c.zoomInOut(5 * e.getCount() );
}

void mouseDragged ( MouseEvent e ) {
  /*
  float xCalcs, yCalcs, zCalcs;
  xCalcs = 0.0;
  yCalcs = 0.0;
  zCalcs = 0.0;
  
  xCalcs = (100 * sin(TWO_PI * -mouseX / width));
  
  zCalcs = (100 * cos(TWO_PI * -mouseX / width));
  
  
  c.goTo(xCalcs, yCalcs, zCalcs);
  
  
  
  // xCalcs = pmouseX - mouseX;
  // c.translateAxis(AxisName.X, xCalcs);
  */
}
