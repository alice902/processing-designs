PImage img, brush;
int strokeSize, randX, randY, pixelId;
float n, noiseScale;
color pixColour;

void setup()
{
  size(1920, 1280);
  img = loadImage("picture6.jpg");
  background(255);
  imageMode(CENTER);
  noiseScale = 0.005;
  noiseSeed(int(random(1000)));
}

void draw()
{
  strokeSize = 150 - frameCount / 30;
  if(strokeSize<30) strokeSize=30;
  
  for(int i = 0; i < 100; i++)
  {
  randX = int(random(width));
  randY = int(random(height));
  pixelId = randX + randY*width;
  pixColour = img.pixels[pixelId];

  brush = loadImage("brushes/stroke6b.png");
  brush.resize(strokeSize,0);
  
  tint(pixColour);
  translate(randX,randY);
  n = noise(randX * noiseScale, randY * noiseScale);
  rotate(random(map(n, 0, 1, -TWO_PI, TWO_PI)));
  image(brush,brush.width,brush.height);
  }
}
