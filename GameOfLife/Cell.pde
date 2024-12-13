class Cell{
  PVector pos;
  int size;
  int state;
  int nextState;
  
  Cell(int x, int y, int sz,int st){
     pos = new PVector(x, y);
     size = sz;
     state = st; 
  }
  
  void display(){
   if(state == 1){
     fill(0);
   }
   else{fill(255);}
   square(pos.x,pos.y,size);
  }
  void stateChange(){
    if(state == alive){
      nextState = 0;
    }
    else{nextState = 1;}
  }
  void displayChange(){
    state = nextState;
  }
  void wipe(){
    if(state == alive){
      nextState = 0;
    }
  }
  
}
  
