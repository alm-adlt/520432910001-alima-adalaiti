  int colors[]={#FFFFFF,#FFFFFF,#FFFFFF,#BCBCBC,#7C7C7C,#363636};
  int a;//change width
  int b;
  int h;//rect's height
  int x,y;
  int dw;
  int dh;
  
void setup(){
  size(800,800);
  background(255);
  b=int(random(0,height/2));//change height
  h=height/10;
  x=y=0;
}

void draw(){
   
  for(int w=width/10;w<=width;w=w+a){
   a=int(random(0,width/4));
   b=int(random(0,height/3));
    w=w+a;
    stroke(0);
    strokeWeight(8);
    
    if(w>h){
      dw=int(random(w/4,w));
      rect(x,y,w-dw,h);
      fill(colors[int(random(0,6))]);
      rect(x+w-dw,y,dw,h);
    }
    else if(w<h){
      dh=int(random(h/4,h));
      rect(x,y,w,h-dh);
      fill(colors[int(random(0,6))]);
      rect(x,y+h-dh,w,dh);
    }
    else if(w==h){
      fill(colors[int(random(0,6))]);
      rect(x,y,w,h);
    }
    
    if(x>=width){
      x=0;
      y=y+h;
      h=h+b;
    }
    else {
      x=x+w;
    }
   
  }
   
}
