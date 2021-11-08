class Button{
  Area a;
  String txt;
  boolean clickedOn;//make sure if clicked 
  boolean rolloverOn;//make sure if rollovered

Button(int x,int y,int w,int h,String s){
  a=new Area(x,y,w,h);
  txt=s;
}

void display(){
 // rectMode(CENTER);
  stroke(0);
  strokeWeight(1);
  noFill();
  if(rolloverOn){
    fill(0.5);
  }
  if(clickedOn){
    fill(0);
  }
  rect(a.x,a.y,a.w,a.h);
  float b=0.0;
  if(clickedOn){
    b=1;
  }
  else if(rolloverOn){
    b=0.2;
  }
  else{b=0;}
  fill(b);
  textAlign(CENTER,CENTER);
  text(txt,a.x+a.w/2-5,a.y+5);
 // fill(255,0,0);
 // rect(810/2-40,500-50,80,20);

}

boolean clicked(int mx,int my){
  if(a.contains(mx,my)){clickedOn=true;}
  return clickedOn;
}

boolean rollover(int mx,int my){
  if(a.contains(mx,my)){rolloverOn=true;}
  else{rolloverOn=false;}
  return rolloverOn;
}

void released(){
  clickedOn=false;
}




}
