//Global Variables
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000; //similar to int declaration
color backgroundColour;
Boolean nightMode=false;
float  titleX, titleY, titleWidth, titleHeight;
Boolean widthLarger1=false, heightLarger1=false;
String title = "Measles Assignment";
PFont titleFont;
color yellow=#FCF000, resetDefaultInk=#000000, buttonFill = #9B7524, resetButtonColour = #9B7524; //nightmode friendly
int titleSize;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
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
  color backgroundColour = ( nightMode==true ) ? color( random(255), random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ;//ternary operator, similar to IF-Else
  background( backgroundColour );
  fill(#F0BA27);
  rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //See x&Y Measles Random Positioning
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
  imagePopulation ();
  //
}//End setup
//
void draw()
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
    buttonFill = #9B7524;
  } else {
    buttonFill = #7E6128;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect (xScarf, yScarf, widthScarf, heightScarf);
  fill(resetButtonColour);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if (mouseX> xScarf && mouseX< xScarf+widthScarf && mouseY>yScarf && mouseY<yScarf+heightScarf) exit();
  //Technically there are four ways to code a mouse button press
  if ( mouseButton == LEFT) {//Night Mode FALSE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(#F0BA27);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } //End Left Mouse Button
  //
  if ( mouseButton == RIGHT) {//Night Mode TRUE
  backgroundColour = color( random(255), random(255), random(255), 0 );
  background ( backgroundColour );
  fill(#F0BA27);
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
