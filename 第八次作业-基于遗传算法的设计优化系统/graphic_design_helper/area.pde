class Area{
   int x;
   int y;
   int w;
   int h;  
   
   Area(int x_,int y_, int w_, int h_){
     x = x_;
     y = y_;
     w = w_;
     h = h_;     
   }
   boolean contains(int px, int py) {
    if((px > x) && (px < x + w ) &&( py > y )&&( py < y + h)){
      println(1);
    return true;
    
    }
    else{return false;}
    
   }


}
