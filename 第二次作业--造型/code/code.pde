int x,y=0;//position
float a;//shape
int colors[]={#FF6C6C,#fcc0dc,#98B2FF,#abf8ea,
              #8CF0AB,#F1FC7D,#F7986B,#de96e9};
void setup(){
  size(800,800);
  background(200);
  frameRate(1);
}

void draw(){
  for(int x=0;x<900;x=x+50){ 
    for(int y=0;y<900;y=y+50){
     a=(int)random(0,4);
     if(a==0){//right triangle
     fill(colors[(int)random(0,8)]);
     rect(x,y,50,50);
     fill(colors[(int)random(0,8)]);
     noStroke();
     triangle(x,y,x+50,y+50,x+50,y);}
      
else if(a==1){//circle
  fill(colors[(int)random(0,8)]);
  rect(x,y,50,50);
  fill(colors[(int)random(0,8)]);
  noStroke();
  ellipse(x+25,y+25,50,50);}
else if(a==2){//rectangle
  fill(colors[(int)random(0,8)]);
  noStroke();
  rect(x,y,50,50);}
else if(a==3){//lefft triangle
  fill(colors[(int)random(0,8)]);
  rect(x,y,50,50);
  fill(colors[(int)random(0,8)]);
  noStroke();
  triangle(x,y,x+50,y,x,y+50);}
  
   }
   
 }

}
