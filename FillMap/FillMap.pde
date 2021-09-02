color[] palette = {
                      0xFF320e3b,
                      0xFF4c2a85,
                      0xFF6b7fd7,
                      0xFFbcedf6,
                      0xFFddfbd2
                      };
int x,y,w;
PImage map;


void setup()
{
  size(1280, 720);
  background(palette[int(random(palette.length))]);
  map = loadImage("slice1.png");
  map.loadPixels();
  //rectMode(CENTER);
  beginRecord(PDF,"output/" + timestamp() + "output.pdf");
}

void draw()
{
  fill(palette[int(random(palette.length))]);
  stroke(palette[int(random(5))]);
  x=int(random(map.width));
  y=int(random(map.height));
  w=int(random(30));
  if(alpha(map.pixels[y*map.width+x])==255)
  {
    pushMatrix();
    translate(x,y);
    rotate(random(PI*2));
    rect(0,0,w,w,w*0.3);
    popMatrix();
  }
}
