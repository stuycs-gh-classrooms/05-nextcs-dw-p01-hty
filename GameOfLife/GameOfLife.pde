int alive = 1;
int dead = 0;
int cellDensity = 30;
int numRows = 100;
int numCols = 100;
Grid plate;
boolean start;

void setup(){
  size(500,500);
  frameRate(60);
  plate = new Grid(numRows,numCols,cellDensity);
}

void draw(){
  if(start){
    plate.step();
    plate.shift();
  }
}
    
void keyPressed(){
  if(key == ' '){
    if(start == false){
     start = true;
    }
    else{start = false;
    }
  }
  if(key == 'p'){
    plate.populate(cellDensity);
  }
  if(key == 'r'){
    plate.reset();
  }
}
void mousePressed(){
  if(mousePressed == true){
  }
}
    
    
