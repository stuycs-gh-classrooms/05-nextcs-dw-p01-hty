class Cell{
  PVector pos;
  int size;
  int state;
  
  Cell(x, y, sz, st){
     pos = new PVector(x, y);
     size = sz;
     state = st; 
  }
  
  void display(){
   if(state == 1){
     fill(255);
   }
   else{fill(0);}
  square(pos.x,pos.y,sz);
  }
}
