int alive = 1;
int dead = 0;
int cellDensity = 30;
int numRows = 100;
int numCols = 100;
Grid plate;
boolean start = false;

void setup(){
  size(500,500);
  frameRate(60);
  plate = new Grid(numRows,numCols,cellDensity);
}

void draw(){
  if(start == true){
    //println("moving objects");
    plate.step();
    plate.shift();
  }
}
    
void keyPressed(){
  if (key == ' ' && start == false) {
    start = true;
    println("started");
  } else if (key == ' ' && start == true) {
    start = false;
    println("stopped");
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
    plate.flip(mouseX,mouseY);
    println("cell flipped");
  }
}
    
    
