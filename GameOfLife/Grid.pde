class Grid{
  Cell[][] Field;
  
  Grid(int numRows, int numCols, int popDensity){
    Field = new Cell[numRows][numCols];
    populate(popDensity);
  }//constructor
  
  void populate(int popDensity){
    for (int r = 0; r < Field.length; r++) {
      for (int c = 0; c < Field[r].length; c++) {
        int st;
        if(random(100) < popDensity){
          st = 1;
        }
        else{st = 0;}
        Field[r][c] = new Cell(int(width / Field.length * r), int(height / Field[r].length * c), int(width / Field.length), st);
      }
    }
  }
  
  
  
  
  
}
