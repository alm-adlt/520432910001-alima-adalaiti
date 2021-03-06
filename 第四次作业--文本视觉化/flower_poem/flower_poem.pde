//flower poem
//to make the sentences to flower-like patterns

String whole="a red red rose";
//you can change this "whole" string to get new patterns~
String []poems=splitTokens(whole,". ,?!");
int g1,g2,g3,g4=0;//to help counting letters
int[] colors1={#F78F48,#FFC095,#F7885F};//orange
int[] colors2={#F1FC5E,#F1FF31,#FAF47C};//yellow
int[] colors3={#FC4545,#FF8181,#FCC9C9};//red
int[] colors4={#46EEFF,#11DDF2,#3EBDFF};//blue


void charCount (String[] s){
  for(int i=0;i<s.length;i++){
    for(int j=0;j<s[i].length();j++){
      //sorting and counting letters
    if((s[i].charAt(j)=='a')||(s[i].charAt(j)=='b')||(s[i].charAt(j)=='h')||(s[i].charAt(j)=='d')||(s[i].charAt(j)=='w')||s[i].charAt(j)=='u'||s[i].charAt(j)=='q'){
    g1=g1+1; }
    else if(s[i].charAt(j)=='i'||s[i].charAt(j)=='g'||s[i].charAt(j)=='j'||s[i].charAt(j)=='f'||s[i].charAt(j)=='x'||s[i].charAt(j)=='t'||s[i].charAt(j)=='v'){
      g2=g2+1; }
    else if(s[i].charAt(j)=='o'||s[i].charAt(j)=='y'||s[i].charAt(j)=='l'||s[i].charAt(j)=='k'||s[i].charAt(j)=='n'||s[i].charAt(j)=='s'){
      g3=g3+1; }
    else if(s[i].charAt(j)=='e'||s[i].charAt(j)=='z'||s[i].charAt(j)=='p'||s[i].charAt(j)=='c'||s[i].charAt(j)=='r'||s[i].charAt(j)=='m'){
      g4=g4+1; }

}
}

//for check
println(g1,g2,g3,g4);
// println(s[2].charAt(1));
}

void setup (){
  size(700,700);
  background(0);
  charCount(poems);//counting 
  frameRate(1);
  
}



void draw(){
  background(0);
  Graphic1(g1);
  Graphic2(g3);
  Graphic3(g3);
  Graphic4(g4);
  
}

void Graphic1(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(4,50));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors1[int(random(0,3))],random(10,50));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    ellipse(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d,d);
    } 
  }
}

void Graphic2(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(4,50));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors2[int(random(0,3))],random(10,40));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    rectMode(CENTER);
    rect(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d,d);
    } 
  }
}

void Graphic3(int a){
  for(int i=0;i<a;i++){
    int n=int(random(5,100));
    int dis=int(random(0,width/3));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors3[int(random(0,3))],random(10,60));
    strokeWeight(random(0,15));
    float d=random(10,width/5);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    point(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j));
   
    } 
  }
}

void Graphic4(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(5,100));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors4[int(random(0,3))],random(10,50));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    rectMode(CENTER);
    rect(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d/2,d+2);
    } 
  }
}
