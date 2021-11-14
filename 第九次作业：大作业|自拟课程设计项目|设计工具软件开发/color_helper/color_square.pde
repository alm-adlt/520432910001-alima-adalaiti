class Colorsquare{
  int r;//color
  int g;
  int b;
  int x;//positoin
  int y;

  
  Colorsquare(int r_, int g_, int b_, int x_, int y_){
    r=r_;
    g=g_;
    b=b_;
    x=x_;
    y=y_;
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
  //color fill--------------------------
    smooth();
    fill(r,g,b);
    noStroke();
    rect(x,y,150,50);
    translate(x,y);
    fill(100);
    smooth();
    textSize(15);
    text("R"+r,155,13);
    text("G"+g,155,29);
    text("B"+b,155,45);
    popMatrix();
  }
  
  void change(int[][] group,int c){//change color according rgb number scale
    for(int i=0;i<5;i++){
      if(i==0){
        r=int(random(group[c][i],group[c][i+1]));
      }
      else if(i==2){
        g=int(random(group[c][i],group[c][i+1]));
      }
      else if(i==4){
        b=int(random(group[c][i],group[c][i+1]));
      }      
   }
  }
  
  void squarechange(int c){
    colorsquare[i].r=colorgroup[c][6];
    colorsquare[i].g=colorgroup[c][7];
    colorsquare[i].b=colorgroup[c][8];  

  }

}
