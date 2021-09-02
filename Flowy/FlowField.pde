class FlowField 
{
  PVector[][] field;
  int celW, celH;
  int cols, rows;
  float noiseScale = 100;
  
  FlowField(int _cols, int _rows)
  {
    cols = _cols;
    rows = _rows;
    celW = width/cols;
    celH = height/rows;
    field = new PVector[cols][rows];
    init();
  }
  
  void init()
  {
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        float x = i * celW;
        float y = j * celH;
        float angle = map(noise(x/noiseScale), 0, 1, 0, TWO_PI);
        PVector v = new PVector(cos(angle), sin(angle));
        field[i][j] = v;
      }
    }
  }
  
  void display()
  {
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        pushMatrix();
        translate(i * celW, j * celH);
        rotate(field[i][j].heading());
        scale(0.25);
        //shape(flowShape,-flowShape.width/2, -flowShape.height/2);
        popMatrix();
      }
    }
    
  }
}
