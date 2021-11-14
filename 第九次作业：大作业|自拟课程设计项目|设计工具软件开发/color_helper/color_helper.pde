int[][] colorgroup={{0,100,0,100,0,100,0,0,0},{245,255,245,255,245,255,255,255,255},{255,255,0,160,165,255,247,144,214},{255,255,0,50,0,100,255,0,0},{255,255,97,168,0,90,255,115,56},{255,255,210,255,0,120,254,204,39},{0,140,200,255,0,130,79,216,111},{0,30,160,200,200,255,85,199,255},{65,140,0,30,185,255,155,98,230}};
Sample[] colorsample=new Sample[9];
Colorsquare[] colorsquare=new Colorsquare[4];
int i=0;
Button button1;
Button button2;
Button button3;
Button button4;

int c_=1;
Colorsquare newcolor1;
Colorsquare newcolor2;
Colorsquare newcolor3;
boolean clsq1=false;
boolean clsq2=false;
boolean clsq3=false;


String ss="COLLPER : your color helper :)";
String s="There are more colors than you think in the world ! XD";




void setup(){
  size(800,800);
  background(240);
  for(int i=0;i<colorgroup.length;i++){
  colorsample[i]=new Sample(80,200+i*40,50,40,i);
  }
  colorsquare[0]=new Colorsquare(255,0,0,100,100);
  colorsquare[1]=new Colorsquare(255,0,0,100,125);
  colorsquare[2]=new Colorsquare(255,0,0,100,150);
  colorsquare[3]=new Colorsquare(255,0,0,100,175);
  button1=new Button(200,600,100,30,"keep this!");
  button2=new Button(200,650,100,30,"another color");
  button3=new Button(320,600,90,30,"reset");
  button4=new Button(320,650,90,30,"save");
}

void draw(){
  background(240);
  //dispalying----------------------------------
  if(clsq1){newcolor1.display();}
  else{colorsquare[0].display();}

  if(clsq2){newcolor2.display();} 
  else{colorsquare[1].display();}

  if(clsq3){newcolor3.display();} 
  else{colorsquare[2].display();} 
  
  colorsquare[3].display();
 //show sample colors------------------------------------------------ 
  for(int i=0;i<colorgroup.length;i++){
    colorsample[i].colordisplay(colorgroup,i,6);
  //println(colorgroup[i][5],colorgroup[i][5+1],colorgroup[i][5+2]);
  }
  
  //display button----------------------------------
  button1.display();
  button1.rollover(mouseX,mouseY);
  button2.display();
  button2.rollover(mouseX,mouseY);
  button3.display();
  button3.rollover(mouseX,mouseY);  
  button4.display();
  button4.rollover(mouseX,mouseY);    

//example displaying-----------------------------
  stroke(150);
  fill(colorsquare[0].r,colorsquare[0].g,colorsquare[0].b);
  rect(420,150,300,530);
  noStroke();
  fill(colorsquare[1].r,colorsquare[1].g,colorsquare[1].b);
  rect(500,280,30,30);
  rect(630,200,90,45);
  rect(500,450,90,45);
  rect(450,500,190,90);
  rect(520,620,200,50);
  rect(455,188,35,50);
  noStroke();
  fill(colorsquare[2].r,colorsquare[2].g,colorsquare[2].b);
  rect(660,430,54,50);
  rect(430,600,50,60);
  noStroke();
  fill(colorsquare[3].r,colorsquare[3].g,colorsquare[3].b);
  rect(480,210,45,50);
  
  //title dispalying-----------------------------------
  textSize(30);
  smooth();
  fill(#8B8585);
  text(ss,50,50);
  textSize(18);
  text(s,50,80);

}

void mousePressed(){
  //changing  color---------------------------------

  if(colorsample[0].clicked(mouseX,mouseY)){
    c_=0;    
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
    }
    }  
   else if(colorsample[1].clicked(mouseX,mouseY)){
    c_=1;
  if(button1.clicked(mouseX,mouseY)){
      buuton1clk();}
    }  
    else if(colorsample[2].clicked(mouseX,mouseY)){
      c_=2;
      if(button1.clicked(mouseX,mouseY)){
      buuton1clk();}
  }  
  else   if(colorsample[3].clicked(mouseX,mouseY)){
    c_=3;
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
    }
  } 
  else  if(colorsample[4].clicked(mouseX,mouseY)){
    c_=4;
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
    }
  }    
 else  if(colorsample[5].clicked(mouseX,mouseY)){
    c_=5;
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
}
  } 
else  if(colorsample[6].clicked(mouseX,mouseY)){
    c_=6;
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
}
  } 
 else  if(colorsample[7].clicked(mouseX,mouseY)){
    c_=7;
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
}
  } 
 else  if(colorsample[8].clicked(mouseX,mouseY)){
    c_=8;
    
    if(button1.clicked(mouseX,mouseY)){
      buuton1clk();
}
  }    
colorsquare[i].squarechange(c_);



if(button2.clicked(mouseX,mouseY)){
  //int c2=int(random(9));
  //colorsquare[1].change(colorgroup,c2);
  //int c3=int(random(9));
  //colorsquare[2].change(colorgroup,c3);
  
  colorsquare[i].change(colorgroup,c_);
  if(i>0&&random(1)<0.4){ 
    int c2=int(random(9));
    colorsquare[i].change(colorgroup,c2);}
    colorsquare[i].display();
  //println("rgb value:"+colorsquare[0].r+"G:"+colorsquare[0].g+"B:"+colorsquare[0].b);

}

if(button3.clicked(mouseX,mouseY)){
reset();
}

if(button4.clicked(mouseX,mouseY)){
save("color-group"+year()+month()+day()+hour()+minute()+second()+".jpg");
}

}

void mouseReleased(){
  button1.released();
  button2.released();
  button3.released();
  button4.released();
}
void buuton1clk(){
   if(i==0){
      newcolor1=colorsquare[0];
  //  println("did it");
      clsq1=true;
      i=i+1;
      }
   else if(i==1){
      newcolor2=colorsquare[1];
      clsq2=true; 
  //  println("did it again");
      i=i+1;}
   else if(i==2){
      newcolor3=colorsquare[2];
      clsq3=true;
      i=i+1;
      }
  println("did happen"); 
}

void reset(){
  i=0;
  colorsquare[0]=new Colorsquare(255,0,0,100,100);
  colorsquare[1]=new Colorsquare(255,0,0,100,125);
  colorsquare[2]=new Colorsquare(255,0,0,100,150);
  colorsquare[3]=new Colorsquare(255,0,0,100,175);
  clsq1=false;
  clsq2=false;
  clsq3=false;
  
}

void savespl(){

}
