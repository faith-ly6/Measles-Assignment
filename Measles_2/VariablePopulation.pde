float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter; 
float xLeftPupil, yLeftPupil, eyeDiameterPupil, xRightPupil, yRightPupil;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xHat, yHat, hatWidth, hatHeight;
float xRightHair, yRightHair, xLeftHair, yLeftHair, widthRect, heightRect;
float xScarf, yScarf, widthScarf, heightScarf;

void populatingVariables() {
xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  //
  xScarf = width*2/8; 
  yScarf = height*7/8; 
  widthScarf = width*1/2;
  heightScarf = height*1/8;
  //
  xHat = width*8/16;
  yHat = height*1/16; 
  hatWidth = width*7/8;
  hatHeight = smallerDimension*6/16; 
  //
  xLeftHair = width*1/16; 
  yLeftHair = height*1/16;
  xRightHair = width*12/16;
  yRightHair = height*1/16;
  widthRect = width*3/16;
  heightRect = smallerDimension*2;
  //
  xLeftEye = xCenter-smallerDimension*.75/4;
  yLeftEye = yCenter-smallerDimension*2.5/16;
  xRightEye = xCenter+smallerDimension*.75/4;
  yRightEye = yCenter-smallerDimension*2.5/16;
  eyeDiameter = smallerDimension*3/16;
  //
  xLeftPupil = xCenter-smallerDimension*.75/4;
  yLeftPupil = yCenter-smallerDimension*2.5/16;
  xRightPupil = xCenter+smallerDimension*.75/4;
  yRightPupil = yCenter-smallerDimension*2.5/16;
  eyeDiameterPupil = width*1/16;
  //
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/16;
  xLeftNostril = xCenter-smallerDimension*1.5/16; 
  yLeftNostril = yCenter+smallerDimension*2/16;
  xRightNostril = xCenter+smallerDimension*1.5/16;
  yRightNostril = yLeftNostril;
  //
}
