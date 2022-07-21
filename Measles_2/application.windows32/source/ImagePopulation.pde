PImage pic1;
float picWidthAdjusted1, imageWidthRatio1=0.0, imageHeightRatio1=0.0, picHeightAdjusted1;
float imageLargerDimension1, imageSmallerDimension1;
float imageX1, imageY1, imageWidth1, imageHeight1;
//
void imagePopulation () {
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
