int alive = 1;
int dead = 0;
int cellDensity = 60;
int numRows = 100;
int numCols = 100;
Grid plate;

void setup(){
  size(500,500);
  frameRate(60);
  plate = new Grid(numRows,numCols,cellDensity);
}
