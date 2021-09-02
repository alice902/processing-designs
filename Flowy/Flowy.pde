int cols = 20;
int rows = 20;
Agent agents[];

color[] palette = {
                    #390099,
                    #9E0059,
                    #FF0054,
                    #FF5400,
                    #FFBD00
                  };

/*color[] palette = {
                      0xFF0A0903,
                      0xFFff0000,
                      0xFFFF8200,
                      0xFFFFC100,
                      0xFFFFEAAE,
                      0xFF7F7EFF,
                      0xFFA390E4
                      };*/
                      
void setup()
{
  size(1280,720);
  background(palette[int(random(palette.length))]);
  //beginRecord(SVG,"output/" + timestamp() + "output.svg");
  agents = new Agent[3000];
  for(int i = 0; i < agents.length; i++)
    agents[i] = new Agent(1000, 30, -50, 50, 1, 15);                  //arg scale, strength, min speed, max speed, min size, max size
}

void draw()
{
  for (Agent agent : agents)
  {
    //agent.display3D();   
    //agent.update3D();
    agent.display();
    agent.update();
    
  }
}
