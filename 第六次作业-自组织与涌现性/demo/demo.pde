int total=2000;
Particle[] p=new Particle[total];
int b=100;
color []colors={#FA9A9A,#8683E8,#F5F188};

void setup(){
  size(800,800);
  getset();
}

void getset(){
    for(int i=0;i<total;i++){
   float pxx=random(-500,width+500);
   float pyy=random(-500,height+500);
   PVector pp=new PVector(pxx,pyy);
   p[i]=new Particle(pp);
  }
}

void draw(){
    fill(255,b);
    rect(0,0,width,height);

  for(int i=0;i<total;i++){
    for(int j=0;j<total;j++){
      if((p[i].location.x==p[j].location.x)&&(p[i].location.y==p[j].location.y)){
        float bcx=p[i].location.x;
        float bcy=p[i].location.y;
        noStroke();
        fill(0,10);
        ellipse(bcx,bcy,40,40);
      }      
    }

  }
  for(int i=0;i<total;i++){
    Particle p_=p[i];
    p_.move();
  }
  
  if(mousePressed&&(mouseButton==LEFT)){
  if(b==100){
    b=0;
  }
  else if(b==0){
    b=100;
  }
  
  }
  else if(mousePressed&&(mouseButton==RIGHT)){
    background(255);
    getset();  }
}

void spark(float x,float y){
  float d=5;
  quad(x,y-d,x-d,y,x,y+d,x+d,y);
}
