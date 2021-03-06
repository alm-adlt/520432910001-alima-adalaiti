int num=5;//number of genes,length of dna
Population population;
Button button;

void setup(){
  size(1350,500);
  background(100);
  float mutationRate=0.6;
  population=new Population(mutationRate,num);
  button=new Button(width/2-80,500-60,160,20,"evolve new generation");

}

void draw(){
  
  background(100);
population.display();
population.rollover(mouseX,mouseY);

textAlign(CENTER);
fill(0);
text("Generation #:"+population.getGenerations(),width/2,height-20);

//dispay button
button.display();
button.rollover(mouseX,mouseY);



}
//if user want new genaration
void mousePressed(){
  if(button.clicked(mouseX,mouseY))
  {population.select();
  population.reproduction();
  }

}

void mouseReleased(){
  button.released();
}
