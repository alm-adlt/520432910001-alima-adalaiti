float x=500;
float y=500;
float disx=700;
float disy=700;
color []c={#F0B3B3,#F56FCD,#71D0E0,#FFCE71,#DC85F5};
float a=60;
int n=0;
int num=90;
float b=1;

void setup(){
  size(1100,1100);
  background(255);
  

}
void flower(float x,float y,float disx,float disy){
    bezier(x,y,x-disx,y+disy,x+disx,y+disy,x,y);
    bezier(x,y,x-disx,y-disy,x+disx,y-disy,x,y);
    bezier(x,y,x-disy,y+disx,x-disy,y-disx,x,y);
    bezier(x,y,x+disy,y+disx,x+disy,y-disx,x,y);

}

void draw(){
  background(0);
  translate(x,y);
  for(int i=0;i<num;i++){
    fill(c[n]);
    stroke(255);
    scale(0.91);
    rotate(radians(a));
    flower(0,0,disx,disy);
  
  }
  
  a=a-b;
  
}

void mouseClicked(){
x=random(width/4,width*3/4);
y=random(height/4,height*3/4);
disx=random(100,700);
disy=random(100,700);
n=int(random(0,5));
num=int(random(5,100));
b=random(0,1);
}
