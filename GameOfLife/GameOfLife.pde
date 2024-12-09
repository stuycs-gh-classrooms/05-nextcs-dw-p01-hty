int alive = 1;
int dead = 0;
int cellDensity = 60;
int numRows = 100;
int numCols = 100;


void setup(){
  size(500,500);
  frameRate(60);
  g = new Grid(numRows,numCols,cellDensity);
}

void draw(){
}
