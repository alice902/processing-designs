import java.util.Calendar;
import processing.svg.*;

PShape tile;
float tileSpacingX;
float tileSpacingY;

void setup()
{
  size(1000,1000);
  background(255);
  tile = loadShape("tile8.svg");
  shapeMode(CENTER);
  beginRecord(SVG,"output/" + timestamp() + "output.svg");
}

void draw()
{
  tileSpacingX = width / tile.width;
  tileSpacingY = height / tile.height;

    for(int i = 0; i < tileSpacingX; i++)
     {
       for(int j = 0; j < tileSpacingY; j++)
         {
           pushMatrix();
           translate(i*tile.width-1, j*tile.height-1); 
           rotate(int(random(4))*HALF_PI);
           shape(tile, -tile.width/2, -tile.height/2);
           popMatrix();
         }
     }
}
