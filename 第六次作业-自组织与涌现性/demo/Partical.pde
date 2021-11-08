class Particle{
PVector location;
PVector v;
PVector acceleration;
float lifespan;
color []colors={#FA9A9A,#8683E8,#F5F188};
int c;
int shape;

  Particle(PVector l){
    acceleration=new PVector(0,0.06);
    v=new PVector(random(-1,1),random(-1,1));
    lifespan=100;
    location=l.get();
    c=int(random(0,3));
    shape=int(random(0,3));
  }

  void move(){
    update();
    display();
  
  
  }
  
  void update(){
    PVector mouse=new PVector(mouseX,mouseY);
    v=PVector.sub(mouse,location);
    v.normalize();
    v.add(acceleration);
    location.add(v);
    lifespan-=0.5;
  
  }
  
  
  void display(){
    noStroke();
    fill(colors[c],(100-lifespan));
    
    if(shape==0){
    ellipse(location.x,location.y,10,10);
    }
    if(shape==1){
    
    rect(location.x,location.y,10,10);
    }
    if(shape==2){
    spark(location.x,location.y);
    }
  }





}
