color[] palette = {
                      0xFF0A0903,
                      0xFFff0000,
                      0xFFFF8200,
                      0xFFFFC100,
                      0xFFFFEAAE,
                      0xFF7F7EFF,
                      0xFFA390E4
                      };
                      
int[] bezierArg = new int[6];
int nodes = 3;
                      
void setup() 
{
  size(1000,1000);
  background(palette[int(random(palette.length))]);
  beginRecord(SVG, "output/" + timestamp() + "output.svg");
}

void draw() 
{ 
  stroke(color(palette[int(random(palette.length))]));
  strokeWeight(random(1,10));
  noFill();
  beginShape();
  vertex(int(random(1280)),int(random(1280)));
  for(int j = 0; j < nodes; j++)
   {
    for(int i=0;i<bezierArg.length;i++)
    bezierArg[i]=int(random(-100,1380));
    bezierVertex(bezierArg[0],bezierArg[1],bezierArg[2],bezierArg[3],bezierArg[4],bezierArg[5]);
   }
  endShape();
}
