//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, yLeftEye, xRightEye, yRightEye, xLeftPupil, yLeftPupil, xRightPupil, yRightPupil,  eyeDiameter, eyeDiameterPupil;
float xNosebridge, yNosebridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
//
void setup()
{
  //CANVAS will be added to later
  size(750,500); //Landscape
  //
  //Population
  float xCenter = width/2;
  float yCenter = height/2;
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if (width >= height ) {
    smallerDimension = height ;
  } else {
    smallerDimension = width;
   //
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = width*6/16;
  yLeftEye = height*6/16;
  xRightEye = width*10/16;
  yRightEye = height*6/16;
  eyeDiameter = width*2/16;
  //
  xLeftPupil = width*6/16;
  yLeftPupil = height*6/16;
  xRightPupil = width*10/16;
  yRightPupil = height*6/16;
  eyeDiameterPupil = width*1/16;
  //
  xNosebridge = width*8/16;
  yNosebridge = height*7/16;
  xLeftNostril = width*7/16;
  yLeftNostril = height*10/16;
  xRightNostril = width*9/16;
  yRightNostril = height*10/16;
  //
  xLeftMouth = width*6/16;
  yLeftMouth = height*12/16;
  xRightMouth = width*10/16; 
  yRightMouth = height*12/16;
  //
  xMeasle = width*4/16;
  yMeasle = height*5/16;
  measleDiameter = width*1/16; 
}//End setup
//
void draw() 
{
  //light pink
  fill(242,218,228);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
  //brown
  fill(188,158,103);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  //
  //brown
  fill(188,158,103);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  //
  fill(0,0,0);
  ellipse(xRightPupil, yRightPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  fill(0,0,0);
  ellipse(xLeftPupil, yLeftPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  //darker light pink
  fill(234,199,214);
  triangle(xNosebridge, yNosebridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  //
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  //Red
  fill(216,24,24);
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//

//End MAIN Program
