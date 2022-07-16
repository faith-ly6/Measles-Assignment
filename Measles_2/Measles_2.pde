//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter; 
float xLeftPupil, yLeftPupil, eyeDiameterPupil, xRightPupil, yRightPupil;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xHat, yHat, hatWidth, hatHeight;
float xRightHair, yRightHair, xLeftHair, yLeftHair, widthRect, heightRect;
float xCurlLeft, yCurlLeft, xCurlRight, yCurlRight, widthCurl, heightCurl;
int thack=10;
float xScarf, yScarf, widthScarf, heightScarf;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000; //similar to int declaration
color backgroundColour;
Boolean nightMode=false;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
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
  xCurlLeft = ;
  yCurlLeft = ; 
  xCurlRight = ; 
  yCurlRight = ;
  widthCurl = ; 
  heightCurl = ;
  //
  xScarf = width*1/6; 
  yScarf = height*7/8; 
  widthScarf = smallerDimension;
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
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  //
  faceRadius = smallerDimension/2;
  //
  color backgroundColour = ( nightMode==true ) ? color( random(255), random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ;//ternary operator, similar to IF-Else
  background( backgroundColour );
  fill(#DE9C22);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw()
{
  ellipse(xCurlLeft, yCurlLeft, widthCurl, heightCurl);
  //
  ellipse(xCurlRight, yCurlRight, widthCurl, heightCurl);
  //
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
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1);//resets default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension); //if zero is first, then default
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//smallerDimension*1/50
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Technically there are four ways to code a mouse button press
  if ( mouseButton == LEFT) {//Night Mode FALSE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(#DE9C22);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } //End Left Mouse Button
  //
  if ( mouseButton == RIGHT) {//Night Mode TRUE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(#DE9C22);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  //Note: Mouse WHEEL is also available
  //if (mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /*for any button
  if ( nightMode == false ) {//NightMode Switch
    nightMode = true;
  } else {
    nightMode = false;
  }//End nightMode Switch
  //
  backgroundColour = ( nightMode==true ) ? color( random(255), random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ;//ternary operator, similar to IF-Else
  background ( backgroundColour );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  */
  //
  /*
  color backgroundColour = ( nightMode==true ) ? color( random(255), random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ;//ternary operator, similar to IF-Else
  background( backgroundColour );
  */
  //
}//End mousePressed
//
//End MAIN Program
