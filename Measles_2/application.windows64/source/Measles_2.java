import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Measles_2 extends PApplet {

//Global Variables
float xMeasle, yMeasle, measleDiameter;
int resetWhite=0xffFFFFFF, red=0xffFF0000; //similar to int declaration
int backgroundColour;
Boolean nightMode=false;
float  titleX, titleY, titleWidth, titleHeight;
Boolean widthLarger1=false, heightLarger1=false;
String title = "Measles Assignment";
PFont titleFont;
int yellow=0xffFCF000, resetDefaultInk=0xff000000, buttonFill = 0xff9B7524, resetButtonColour = 0xff9B7524; //nightmode friendly
int titleSize;
//
public void setup()
{
  //CANVAS will will be added to later
   //Landscape
  //
  //Population
  populatingVariables();
  //
  titleX = width*1/6;
  titleY = height*1/40;
  titleWidth = xCenter+smallerDimension*1/4;
  titleHeight = height*1/10;
  //Single Executed Code
  //Fonts from OS (Operating System)
  String [] fontList = PFont.list(); //To list all fonts availiable on OS
  printArray(fontList);//For Listing all possible fonts fo choose from, then createFont
  titleFont = createFont("AR BONNIE", 48);//Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do Not press "OK", known bug
  //
  faceRadius = smallerDimension/2;
  //
  int backgroundColour = ( nightMode==true ) ? color( random(255), random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ;//ternary operator, similar to IF-Else
  background( backgroundColour );
  fill(0xffF0BA27);
  rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //See x&Y Measles Random Positioning
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
  imagePopulation ();
  //
}//End setup
//
public void draw()
{
  image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
  //
  drawShapes ();
  //
  fill(yellow); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X*Y, see Processing.org/Reference
  //Values: [LEFT | CENTER| RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  titleSize = 48;//Change this number until it fits
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
  //
  //Hover-over
  if (mouseX> xScarf && mouseX< xScarf+widthScarf && mouseY>yScarf && mouseY<yScarf+heightScarf) {
    buttonFill = 0xff9B7524;
  } else {
    buttonFill = 0xff7E6128;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect (xScarf, yScarf, widthScarf, heightScarf);
  fill(resetButtonColour);
  //
}//End draw
//
public void keyPressed() {
}//End keyPressed
//
public void mousePressed() {
  if (mouseX> xScarf && mouseX< xScarf+widthScarf && mouseY>yScarf && mouseY<yScarf+heightScarf) exit();
  //Technically there are four ways to code a mouse button press
  if ( mouseButton == LEFT) {//Night Mode FALSE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(0xffF0BA27);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } //End Left Mouse Button
  //
  if ( mouseButton == RIGHT) {//Night Mode TRUE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(0xffF0BA27);
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

public void drawShapes () {
  fill(0xff9B7524);
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
  fill(0xff0CAA17);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  //
  fill(0xff0CAA17);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  //
  fill(0,0,0);
  ellipse(xRightPupil, yRightPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  fill(0,0,0);
  ellipse(xLeftPupil, yLeftPupil, eyeDiameterPupil, eyeDiameterPupil);
  //
  fill(0xffE5A225);
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
PImage pic1;
float picWidthAdjusted1, imageWidthRatio1=0.0f, imageHeightRatio1=0.0f, picHeightAdjusted1;
float imageLargerDimension1, imageSmallerDimension1;
float imageX1, imageY1, imageWidth1, imageHeight1;
//
public void imagePopulation () {
 pic1 = loadImage("../Images/mouth.png");//Dimensions: width 154, height 81
  int picWidth1 = 154;
  int picHeight1 = 81;
  if ( picWidth1>=picHeight1 ) {//Image Dimension Comparison
      //True if Landscape or Square
      imageLargerDimension1 = picWidth1;
      imageSmallerDimension1 = picHeight1;
      widthLarger1 = true;
    } else {
      //False if Portrait
      imageLargerDimension1 = picHeight1;
      imageSmallerDimension1 = picWidth1;
      heightLarger1 = true;  
    }//End Image Dimension Comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verify variables details
  //
  //Aspect Ratio
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  //
  //Population of Rect()
  imageX1 = width*1/4;
  imageY1 = height*3/6;
  imageWidth1 = width*5/10;
  imageHeight1 = height*1/2;
  //
 //Adjusted Image Variables for Aspect Ratio: entire image will be smaller due to aspect ratio
  picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;
  picHeightAdjusted1 = height * imageHeightRatio1;
  println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1); //Note: println() also verifies decimal places, complier will truncate
}
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter; 
float xLeftPupil, yLeftPupil, eyeDiameterPupil, xRightPupil, yRightPupil;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xHat, yHat, hatWidth, hatHeight;
float xRightHair, yRightHair, xLeftHair, yLeftHair, widthRect, heightRect;
float xScarf, yScarf, widthScarf, heightScarf;

public void populatingVariables() {
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
  xLeftEye = xCenter-smallerDimension*.75f/4;
  yLeftEye = yCenter-smallerDimension*2.5f/16;
  xRightEye = xCenter+smallerDimension*.75f/4;
  yRightEye = yCenter-smallerDimension*2.5f/16;
  eyeDiameter = smallerDimension*3/16;
  //
  xLeftPupil = xCenter-smallerDimension*.75f/4;
  yLeftPupil = yCenter-smallerDimension*2.5f/16;
  xRightPupil = xCenter+smallerDimension*.75f/4;
  yRightPupil = yCenter-smallerDimension*2.5f/16;
  eyeDiameterPupil = width*1/16;
  //
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/16;
  xLeftNostril = xCenter-smallerDimension*1.5f/16; 
  yLeftNostril = yCenter+smallerDimension*2/16;
  xRightNostril = xCenter+smallerDimension*1.5f/16;
  yRightNostril = yLeftNostril;
  //
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Measles_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
