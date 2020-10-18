import processing.pdf.*;
PShape tile;

void setup()
{
  size(1000,1000);
  beginRecord(PDF,"Output/output.pdf");
  background(0);
  noLoop();
  noStroke();
  tile = loadShape("tile5.svg");
}

void draw()
{
  int rows,cols;
  rows = width/10;
  cols = width/10;
  tile.enableStyle();
  for(int i=0; i<cols; i++)
    {
      for(int j=0; j<rows; j++)
        {
          pushMatrix();
          translate(i*100-1,j*100-1); 
          rotate(int(random(4))*PI/2);
          shape(tile,-tile.width/2,-tile.height/2);
          popMatrix();

        }
    }
   endRecord();
}
