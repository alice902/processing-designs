class Agent
{
  float x, y, z;
  float speed, size;
  float noiseScale;
  float noiseStrength;
  color agentColour;
  
   Agent()
  {
    x = random(width);
    y = random(height);
    speed = random(-2, 2);
    size = random(1, 5);
    agentColour = color(palette[int(random(palette.length))]);
    noiseScale = 300;
    noiseStrength = 10;
  }
  
    Agent(float _scale, float _strength)
  {
    x = random(width);
    y = random(height);
    speed = random(-2, 2);
    size = random(1, 5);
    agentColour = color(palette[int(random(palette.length))]);
    noiseScale = _scale;
    noiseStrength = _strength;
  }
  
  Agent(float _scale, float _strength, float _speedA, float _speedB , float _sizeA, float _sizeB)
  {
    x = random(width);
    y = random(height);
    speed = random(_speedA, _speedB);
    size = random(_sizeA, _sizeB);
    agentColour = color(palette[int(random(palette.length))]);
    noiseScale = _scale;
    noiseStrength = _strength;
  }
  
  Agent(float _scale, float _strength, float _speedA, float _speedB , float _sizeA, float _sizeB, float _zSize)
  {//wersja 3D
    x = random(width);
    y = random(height);
    speed = random(_speedA, _speedB);
    size = random(_sizeA, _sizeB);
    agentColour = color(palette[int(random(palette.length))]);
    noiseScale = _scale;
    noiseStrength = _strength;
    z = random(0.1, _zSize);
  }
  
  void display()
  {
    strokeWeight(size);
    stroke(agentColour);
    point(x, y);
  }
  
  void display3D()
  {
    strokeWeight(size);
    stroke(agentColour);
    point(x, y, z);
  }
  
  void update()
  {
    float angle = noise(x/noiseScale, y/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed;
  }
  
    void update3D()
  {
    float angle = noise(x/noiseScale, y/noiseScale, z) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed;
    z+= 0.001;
  }
}
