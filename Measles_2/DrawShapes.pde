
void drawShapes () {
  fill(#9B7524);
  rect(xScarf, yScarf, widthScarf, heightScarf);
  //
  fill(0,0,0);
  rect(xRightHair, yRightHair, widthRect, heightRect);
  //
  fill(0,0,0);
  rect(xLeftHair, yLeftHair, widthRect, heightRect);
  //
  fill(0,0,0);
  ellipse(xHat, yHat, hatWidth, hatHeight);
  //
  fill(#0CAA17);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  //
  fill(#0CAA17);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  //
  fill(0,0,0);
  ellipse(xRightPupil, yRightPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  fill(0,0,0);
  ellipse(xLeftPupil, yLeftPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  fill(#E5A225);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  //
  strokeWeight(1);//resets default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension); //if zero is first, then default
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //working rect() is before FACE in setup
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//smallerDimension*1/50
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
  //
}
