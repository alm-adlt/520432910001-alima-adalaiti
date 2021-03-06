
int [] colors ={#050505,#FFFFFF,#FC4C4C,#FC9636,#FCFC36,#58FA51,#2DF7D0,#1ADEFF,#D279FF};//pen color
int pc=0;//color of pen now
float d;//size of pen
int p;//pen type



void setup(){
  size(1000,1000);
  background(255);
  d=30;

}

void draw(){
showboard();
sizechanging();

//pen changing----------

  if(key=='p'){
    p=1;
  }
  if(key=='c'){
    p=2; 
  }  
  if(key=='k'){
    p=3;
  }
  if(p==1){
    pen();
  }
  if(p==2){
    circlePen();
  }    
  if(p==3){
    sparkpen();
  }     


if(keyPressed==true){
//color changing-------------------------
  if(key=='0'){//black pen
    pc=0;
}
    if(key=='1'){//white pen
    pc=1;
}
    if(key=='2'){//red pen
    pc=2;
}
    if(key=='3'){//orange pen
    pc=3;
}
    if(key=='4'){//yellow pen
    pc=4;
}
    if(key=='5'){//green pen
    pc=5;
}
    if(key=='6'){//bluegreen pen
    pc=6;
}
    if(key=='7'){//blue pen
    pc=7;
}
    if(key=='8'){//purple pen
    pc=8;
}
    //save img
    if(key=='s'){
      save("canvas.jpg");
    }


}


}

   




//different pen modes

void circlePen(){
  if(mousePressed){
    stroke(0);
    strokeWeight(2);
    fill(colors[pc]);
    ellipse(mouseX,mouseY,d,d);
  }
}

void spark(){
  quad(mouseX,mouseY-d,mouseX-d,mouseY,mouseX,mouseY+d,mouseX+d,mouseY);
}

void sparkpen(){
    if(mousePressed){
    noStroke();
    fill(colors[pc]);
    spark();
  }
}
void pen(){
  if(mousePressed){
    float vx,vy;
    float x,y;
    x=mouseX;
    y=mouseY;
    vx=mouseX-x;
    vy=mouseY-y;
    float v=sqrt(vx*vx+vy*vy);
    noStroke();
    fill(colors[pc]);
    ellipse(mouseX,mouseY,d,d);

}
}
void download(float x,float y){
    beginShape();
    vertex(x,y);
    vertex(x+20,y);
    vertex(x+20,y+25);
    vertex(x+28,y+25);
    vertex(x+10,y+45);
    vertex(x-8,y+25);
    vertex(x,y+25);
    vertex(x,y);
    endShape(CLOSE);

}

void sizechanging(){
  if(mousePressed){
    if(mouseX>120&&mouseX<150&&mouseY>110&&mouseY<115){
      d=5;
    }
  
    if(mouseX>165&&mouseX<195&&mouseY>110&&mouseY<125){
      d=15;
    }    
  
    if(mouseX>215&&mouseX<245&&mouseY>110&&mouseY<140){
      d=30;
    }        
    
    
    
  
  
  }

}

void showboard(){
  fill(#A7A7A7);
  noStroke();
  rect(0,0,600,60);
  fill(#C1C1C1);
  noStroke();
  rect(600,0,850,60);
  fill(#A7A7A7);
  noStroke();
  rect(850,0,1000,60); 
  fill(#C1C1C1);
  noStroke();
  rect(0,60,600,40);
  fill(#A7A7A7);
  noStroke();
  rect(600,60,850,40);
  fill(#C1C1C1);
  noStroke();
  rect(850,60,1000,40);   
  
  String s1="color";
  String s2="brush";
  String s3="save";
  String s4="key";
  String s5="c       k      p                    s";
  String s6="size";
  String s7="click to change size";
  fill(255);
  textSize(30);
  text(s1,25,40);
  text(s2,620,40);
  text(s3,875,40);
  text(s4,25,90);
  text(s5,710,90);
  fill(0);
  text(s6,25,130);
  textSize(20);
  text(s7,300,120);
//color showing----------------------
  for(int i=0;i<9;i++){
    fill(colors[i]);
    ellipse(130+50*i,30,20,20); 
    fill(255);
    textSize(30);
    text(i,124+50*i,90);
  }
//brush showing-----------------------
    //circle pen
    stroke(0);
    strokeWeight(2);
    fill(colors[pc]);
    ellipse(720,30,d,d);
    //sparkpen
    int dd=770;
    noStroke();
    fill(colors[pc]);
    quad(dd,30-d,dd-d,30,dd,30+d,dd+d,30);
    //pen
    noStroke();
    fill(colors[pc]);
    ellipse(820,30,d,d);    
fill(255);
download(950,10);

//size changing---------------------------

noStroke();
fill(0);
rect(120,110,30,5);
rect(165,110,30,15);

rect(215,110,30,30);

}
