class Camera
{
  final int X = 0;
  final int Y = 1;
  final int Z = 2;
  
  final int Z_ORIGINAL = 20;

  float[] position = { 1.0, 0.0, 1.0 };
  float[] focusPoint = { 0.0, 0.0, 0.0 };
  float[] up = { 0.0, 1.0, 0.0 };
  
  boolean moveForward = false;
  void setForward (boolean bool) { moveForward = bool; updateMovement(); }
  boolean moveBackward = false;
  void setBackward (boolean bool) { moveBackward = bool; updateMovement(); }
  boolean moveRight = false;
  void setRight (boolean bool) { moveRight = bool; updateMovement(); }
  boolean moveLeft = false;
  void setLeft (boolean bool) { moveLeft = bool; updateMovement(); }
  boolean shift = false;
  void setShift (boolean bool) { shift = bool; updateMovement(); }
  boolean ctrl = false;
  void setCtrl (boolean bool) { ctrl = bool; updateMovement(); }
  boolean space = false;
  void setSpace (boolean bool) { space = bool; updateMovement(); }

  Camera ()
  {
    camera (
      position[X], position[Y], position[Z], 
      focusPoint[X], focusPoint[Y], focusPoint[Z], 
      up[X], up[Y], up[Z]
      );
  }

  Camera (float x, float y, float z)
  {
    position[X] = x;
    position[Y] = y;
    position[Z] = z;
    call();
  }

  void call() {
    camera (
      position[X], position[Y], position[Z], 
      focusPoint[X], focusPoint[Y], focusPoint[Z], 
      up[X], up[Y], up[Z]
      );
  }
  
  void updateMovement ()
  {
    if (shift) {
      if (moveForward) translateAxis(AxisNames.Z, -10);
      if (moveBackward) translateAxis(AxisNames.Z, 10);
      if (moveRight) rot(AxisNames.Y, -PI / 4);
      if (moveLeft) rot( AxisNames.Y,  PI / 4);
      if (space) translateAxis(AxisNames.Y, 10);
    } else if (ctrl) {
      // if (moveForward) 
    } else {
      if (moveForward) zoomInOut( -20);
      if (moveBackward) zoomInOut( 20);
      if (moveRight) translateAxis(AxisNames.X, 10);
      if (moveLeft) translateAxis(AxisNames.X, -10);
      if (space) translateAxis(AxisNames.Y, -10);
    }
  }
  
  float[] theta = {0.0, 0.0, 0.0};
  void rot(AxisNames A, float t) {
    switch (A) {
      case Y:
        theta[y] += t;
        goTo( 100 * cos(theta[Y]), 10, 100 *sin(theta[X]));
        break;
      case X:
        theta[X] += t;
        goTo( 10, 100 * cos(t), 100 * sin(t));
        break;
      case Z:
        theta[Z] += t;
        goTo(100 * cos(t), 100 * sin(t), 10);
        break;
        
      default:
        break;
    }
  }

  void translateAxis(AxisNames A, float dist)
  {
    switch(A)
    {
    case X:
      position[X] += dist;
      focusPoint[X] += dist;
      break;
    case Y:
      position[Y] += dist;
      focusPoint[Y] += dist;
      break;
    case Z:
      position[Z] += dist;
      focusPoint[Z] += dist;
      break;

    default:
      break;
    }
  }

  void zoomInOut(float dist)
  {
     position[Z] += dist;
  }

  void goTo(float x, float y, float z)
  {
    position[X] = x;
    position[Y] = y;
    position[Z] = z;
  }

  void goToAxis(AxisName A, float dest)
  {
    switch(A)
    {
    case X:
      position[X] = dest;
      break;
    case Y:
      position[Y] = dest;
      break;
    case Z:
      position[Z] = dest;
      break;

    default:
      break;
    }
  }

  float getRadius ()
  {  
    return sqrt(
      pow( (position[X] - focusPoint[X]), 2 ) +
      pow( (position[Y] - focusPoint[Y]), 2 ) );
  }
}
