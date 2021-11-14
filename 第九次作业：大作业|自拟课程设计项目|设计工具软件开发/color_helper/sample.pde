class Sample{
Rectangle r;
boolean clickedOn;
int c;

    Sample(int x,int y, int w, int h,int c){
      r=new Rectangle(x,y,w,h);
    }
    
 void colordisplay(int[][] group,int c,int n){
   noStroke();
   fill(group[c][n],group[c][n+1],group[c][n+2]);
   rect(r.x,r.y,r.w,r.h);
   }
 boolean clicked(int mx,int my){//if clickedon
   if(r.contains(mx,my)){
   clickedOn=true;}
   return clickedOn;
 }
 
 void released(){
   clickedOn=false;
 }

 }
 
