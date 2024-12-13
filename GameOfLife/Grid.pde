class Grid{
  Cell[][] Field;
  
  Grid(int numRows, int numCols, int popDensity){
    Field = new Cell[numRows][numCols];
    //populate(popDensity);
  }//constructor
  
  void populate(int popDensity){
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) {
        int st;
        if(random(100) < popDensity){
          st = 1;
        }
        else{st = 0;}
        Field[r][c] = new Cell(width / Field[r].length * c, height / Field.length * r, width / Field.length, st); //(int x, int y, int sz,int st)
        Field[r][c].display();
      }
    }
  }
  
  void step(){
    //println("checking");
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) { //check every cell
        int numAlive = 0;
        for(int x = r-1; x <= r+1; x++){//check x, left to right
          println("checking left - right");
          for(int y = c - 1; x <= r + 1; y++){//check y, top down
            if(x >= 0 && y >= 0 && x <= Field.length && y <= Field[r].length){ //out of bounds?
              
              if(x != r && y != c){//don't check self
                numAlive++;
                println(numAlive);
              }
            }
          }
        }
        println("killing");
        if(numAlive < 2 || numAlive > 3 && Field[r][c].state == 1){ // less than 2/more than 3 = die
          Field[r][c].stateChange();
        }
        else if(numAlive == 3 && Field[r][c].state == 0){ //if dead & 3 neighbors -> lives
          Field[r][c].stateChange();
        }
        
      }
    }
  }
  
  void shift(){
    println("displaying...");
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) { //check every cell
        Field[r][c].displayChange();
        Field[r][c].display();
      }
    }
  }
  
  void flip(int mX, int mY){
    int c = floor(mX * 100/ width );
    int r = floor(mY * 100 / height );
    Field[r][c].stateChange();
    Field[r][c].displayChange();
    Field[r][c].display();
  }
  void reset(){
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) {
        Field[r][c].wipe();
        Field[r][c].displayChange();
        Field[r][c].display();
        println("reset");
      }
    }
  }
  
  
}
