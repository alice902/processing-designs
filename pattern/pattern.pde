import processing.pdf.*;
PShape asset;

void setup()
{
  size(1000,1000);
  beginRecord(PDF,"Output/geng.pdf");
  //noLoop();
  asset = loadShape("pattern.svg");
}

void draw()
{ 
  shapeMode(CENTER);
  int col=10;
  for(int i=0;i<col;i++)
  {
    for(int j=0;j<col;j++)
    {
      shape(asset,100*i+50,100*j+50);
      int k = int(random(4))*90;
      asset.rotate(radians(k));
    }
  }
}

void mousePressed()
{
    endRecord();
}
