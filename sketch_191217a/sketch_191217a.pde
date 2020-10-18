import processing.pdf.*;

void setup()
{
  size(600, 600);
  beginRecord(PDF,"Output/gengrid.pdf");
  background(#390099);
  noLoop();
  noStroke();
}

void draw()
{
  int cols = 10;
  int rows = 10;
  float cellW = width/cols;
  float cellH = height/rows;
  color[] palette = {#390099,#9E0059,#FF0054,#FF5400,#FFBD00};
  
  for(int i=0; i<cols; i++)
  for(int j=0; j<rows; j++)
  {
    fill(palette[int(random(5))]);
    float circleSize = int(random(cellW));
    int position = int(random(2));
    ellipse(i*cellW+cellW/2,j*cellH+cellH/2,circleSize,circleSize);
    fill(palette[int(random(5))]);
    circleSize = random(circleSize-5);
    ellipse(i*cellW+cellW/2,j*cellH+cellH/2,circleSize,circleSize);
    fill(palette[int(random(5))]);
    circleSize = random(circleSize-5);
    ellipse(i*cellW+cellW/2,j*cellH+cellH/2,circleSize,circleSize);
  }  
  endRecord();
}
