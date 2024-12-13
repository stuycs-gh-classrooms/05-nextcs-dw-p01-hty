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
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) { //check every cell
        int numAlive = 0;
        for(int x = r-1; x <= r+1; x++){//check x, left to right
          for(int y = c - 1; x <= r + 1; y++){//check y, top down
            if(x >= 0 && y >= 0 && x <= Field.length && y <= Field[r].length){ //out of bounds?
              if(x != r && y != c){//don't check self
                numAlive++;
              }
            }
          }
        }
        
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
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) { //check every cell
        Field[r][c].displayChange();
        Field[r][c].display();
      }
    }
  }
  
  void flip(int mX, int mY){
    int r = floor(mX / width * 100);
    int c = floor(mY / height * 100);
    Field[r][c].stateChange();
    Field[r][c].displayChange();
  }
  void reset(){
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) {
        Field[r][c].wipe();
        shift();
      }
    }
  }
  
  
}
