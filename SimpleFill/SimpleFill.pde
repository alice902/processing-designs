import java.util.Calendar; //<>//
import processing.svg.*;

PShape asset;
color[] palette = {
                    #390099,
                    #9E0059,
                    #FF0054,
                    #FF5400,
                    #FFBD00
                  };

void setup()
{
  size(1280,720);
  noStroke();
  asset = loadShape("asset.svg");
  shapeMode(CENTER);
  background(palette[int(random(palette.length))]);
  beginRecord(SVG,"output/" + timestamp() + "output.svg");
}

void draw()
{
   noStroke();
   asset.disableStyle();
   int x,y,size;
   x=int(random(width));
   y=int(random(width)+100);
   size=int(random(50,700));
   color c = get(x,y);
   fill(palette[int(random(palette.length))]);
   stroke(palette[int(random(palette.length))]);
   shape(asset,x,y,size,size);
}
