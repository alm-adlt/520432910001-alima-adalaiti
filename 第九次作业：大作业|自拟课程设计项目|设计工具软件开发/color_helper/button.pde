class Button{
  Rectangle r;
  String txt;
  boolean clickedOn;//make sure clicked or not
  boolean rolloverOn;
  
  Button(int x,int y,int w,int h,String s){
    r=new Rectangle(x,y,w,h);
    txt=s;
  }
    
void display(){
  smooth();
  stroke(0);
  noFill();
  if(rolloverOn){
    fill(200);
  }
  if(clickedOn){
    fill(100);
  }
  
  rect(r.x,r.y,r.w,r.h);
  int b=0;
  if (clickedOn){
    b=200;
  }
  else if(rolloverOn){
    b=50;
  }
  else{b=0;}
  fill(b);
  text(txt,r.x+10,r.y+20);

  }
  
boolean clicked(int mx,int my){
 // print("--------");
  if(r.contains(mx,my)){
  clickedOn=true;}
  return clickedOn;
}

boolean rollover(int mx,int my){
  if(r.contains(mx,my)){rolloverOn=true;}
  return rolloverOn;
}
void released(){clickedOn=false;}




}
