import hype.*;
import hype.extended.colorist.HColorPool;
import hype.extended.layout.HShapeLayout;

PShape asset;
PImage fillshape;
color[] palette = {#390099,#9E0059,#FF0054,#FF5400,#FFBD00};
boolean a;

void setup()
{
  size(600, 600);
  noStroke();
  asset = loadShape("asset.svg");
  fillshape = loadImage("fillshape.png");
  shapeMode(CENTER);
  background(255,255,255,255);
  image(fillshape,0,0);
  //noLoop();
}

void draw()
{
    asset.enableStyle();
    int x,y,size;
    x=int(random(width));
    y=int(random(width)+100);
    size=int(random(50,700));
    color c = get(x,y); //<>//
    println(hex(c));
    shape(asset,x,y,size,size);
    
    save("output.png");

}
