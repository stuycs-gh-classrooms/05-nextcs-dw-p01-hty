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
        Field[r][c] = new Cell(width / Field[r].length * c, height / Field.length * r, width / Field.length, st); //(int x, int y, int sz,int st)
        Field[r][c].display();
      }
    }
  }
  
  
  
  
  
}
