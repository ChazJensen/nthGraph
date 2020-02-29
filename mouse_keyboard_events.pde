void mouseReleased() {
  xRotation = TWO_PI * -mouseX/width;
  yRotation =TWO_PI * -mouseY/height;
}

void mouseWheel() {
  text("POOOOOOP", 100, 100);
}

void keyPressed() {
  println(keyCode);
  if (keyCode == 38) { //hit up to extend axes
    for (int i = 0; i < a.axesScales.length; i++) {
      a.axesScales[i] += 0.2;
    }
  } else if (keyCode == 40) { //hit down to shorten axes
    for (int i = 0; i < a.axesScales.length; i++) {
      if (a. axesScales[i]  != 0) a.axesScales[i] -= 0.2;
    }
  } else if (keyCode == 76) { //hit L to toggle labels
    labelsEnabled = !labelsEnabled;
  }
}
