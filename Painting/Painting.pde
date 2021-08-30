PImage img, brush;
int x, y, strokeSize, randX, randY, pixelId;
color pixColour;

void setup()
{
  size(1920, 2880);
  img = loadImage("picture4.jpg");
  background(255);
  imageMode(CENTER);
}

void draw()
{
  randX = int(random(width));
  randY = int(random(height));
  pixelId = randX + randY*width;
  pixColour = img.pixels[pixelId];
  
  strokeSize = 300 - frameCount / 50;
  if(strokeSize<30) strokeSize=30;
  brush = loadImage("brushes/stroke12.png");
  brush.resize(strokeSize,0);
  
  tint(pixColour);

  translate(randX,randY);
  rotate(random(TWO_PI));
  image(brush,brush.width,brush.height); 
}
