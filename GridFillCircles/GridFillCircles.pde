import java.util.Calendar;
import processing.svg.*;

color[] palette = {
                    #390099,
                    #9E0059,
                    #FF0054,
                    #FF5400,
                    #FFBD00
                  };
                  
boolean isFinished = false;

void setup()
{
  size(1000, 1000);
  background(palette[int(random(palette.length))]);
  noStroke();
  ellipseMode(CENTER);
  beginRecord(SVG,"output/" + timestamp() + "output.svg");
}

void draw()
{
  int cols = 10;
  int rows = 10;
  int size = 4;
  float cellW = width / cols;
  float cellH = height / rows;
  if(isFinished == false)
  {
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        float circleSize = int(random(cellW));
        for(int k = 0; k <= size; k++)
        {
          fill(palette[int(random(palette.length))]);
          ellipse(i*cellW+cellW/2, j*cellH+cellH/2, circleSize, circleSize);
          circleSize = random(circleSize-10);
        }
      }
    }
    isFinished = true;
  }
}
