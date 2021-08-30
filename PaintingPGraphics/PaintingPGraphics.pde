import java.util.Calendar;

PImage img, brush;
int strokeSize, randX, randY, pixelId, frameCountSize;
color pixColour;
PGraphics outputImage;

String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void setup()
{
  size(100,100);
  img = loadImage("picture4.jpg");
  img.loadPixels();
  outputImage = createGraphics(img.width,img.height, JAVA2D);
  outputImage.beginDraw();
  outputImage.background(255);
  outputImage.imageMode(CENTER);
  frameCountSize = 20000;
}

void draw()
{
  randX = int(random(img.width));
  randY = int(random(img.height));
  pixelId = randX + randY * img.width;
  pixColour = img.pixels[pixelId];
  
  strokeSize = 300 - frameCount / 50;
  if(strokeSize<30) strokeSize = 30;
  brush = loadImage("brushes/stroke10.png");
  brush.resize(strokeSize,0);

  outputImage.tint(pixColour);
  
  outputImage.pushMatrix();
  outputImage.translate(randX,randY);
  outputImage.rotate(random(TWO_PI));
  outputImage.image(brush, brush.width, brush.height);
  outputImage.popMatrix();
  
  println(frameCountSize - frameCount + " frames until image file saved.");
  
  if(frameCount >= frameCountSize)
  {
    outputImage.endDraw();
    outputImage.save("output/" + timestamp() + "output.png");
    exit();
    println("Done!");
  }
  
}
