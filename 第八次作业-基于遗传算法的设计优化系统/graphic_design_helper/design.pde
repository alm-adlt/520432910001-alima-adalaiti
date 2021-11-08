class Design{
DNA dna;
float x,y;//posioton
float fitness;//how user like the pattern
boolean rolloverOn;//rolling over or not
Area a;//pattern area


Design(DNA dna_,float x_,float y_){
    dna = dna_;
    x = x_;
    y = y_;  
fitness=1;
a=new Area(int(x),int(y),150,230);
}


void display(){
pushMatrix();
    translate(x,y);
    
 //define --------------
 //background 
    float []genes=this.dna.genes;
    float bkc1=map(genes[0],0,1,0,255);
    float bkc2=map(genes[1],0,1,0,255);
    float bkc3=map(genes[2],0,1,0,255);
    stroke(0);
    fill(bkc1,bkc2,bkc3);
    rect(0,0,150,230);
 //ellipse 
    float elps_x=map(genes[3],0,1,0,150);
    float elps_y=map(genes[4],0,1,0,230);
    float elps_dx=map(genes[5],0,1,0,80);
    float elps_dy=map(genes[6],0,1,5,80);
    float elpsc1=map(genes[7],0,1,0,255);
    float elpsc2=map(genes[8],0,1,0,255);
    float elpsc3=map(genes[9],0,1,0,255);

    stroke(0);
    fill(elpsc1,elpsc2,elpsc3);
    ellipse(elps_x,elps_y,elps_dx,elps_dy);
    
 //triangle
    float tri_x1=map(genes[10],0,1,0,150);
    float tri_y1=map(genes[11],0,1,0,230);
    float tri_x2=map(genes[12],0,1,0,150);
    float tri_y2=map(genes[13],0,1,0,230);
    float tri_x3=map(genes[14],0,1,0,150);
    float tri_y3=map(genes[15],0,1,0,230);
    float tric1=map(genes[16],0,1,0,255);
    float tric2=map(genes[17],0,1,0,255);
    float tric3=map(genes[18],0,1,0,255);

    stroke(0);
    fill(tric1,tric2,tric3);
    triangle(tri_x1,tri_y1,tri_x2,tri_y2,tri_x3,tri_y3);
    
 //rect
    float rect_x=map(genes[19],0,1,0,100);
    float rect_y=map(genes[20],0,1,0,190);
    float rect_w=map(genes[21],0,1,10,50);
    float rect_h=map(genes[22],0,1,10,50);
    float rectc1=map(genes[23],0,1,0,255);
    float rectc2=map(genes[24],0,1,0,255);
    float rectc3=map(genes[25],0,1,0,255);

    stroke(0);
    fill(rectc1,rectc2,rectc3);
    rect(rect_x,rect_y,rect_w,rect_h);
 //
popMatrix();

// Display fitness value
    textAlign(CENTER);
    if (rolloverOn) fill(0);
    else fill(0.25);
    text(int(fitness), x+75, y+230+20);

}


DNA getDNA(){
  return dna;
}

float getfitness(){
  return fitness;
}
//increace fitness score if mouse rolling over pattern
  void rollover(int mx,int my) {
    if (a.contains(mx, my)) {
      rolloverOn = true;
      if (mousePressed) {
        fitness =fitness+ 0.25;
      }
    } else {
      rolloverOn = false;
    }
  }





}
