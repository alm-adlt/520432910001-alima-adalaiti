class Population{
  float mutationRate;
  Design[] population;
  ArrayList<Design> matingPool;
  int feneration;
  int generation;
  
Population(float m,int num){
  mutationRate=m;
  population=new Design[num];
  matingPool=new ArrayList<Design>();
  generation=0;
  for(int i=0;i<population.length;i++){
    population[i]=new Design(new DNA(),100+i*230,100);
  }
} 
  
//display all patterns
 void display(){
    for (int i = 0; i < population.length; i++) {
      population[i].display();
    }   
 }
 
 
//rooling over or not 
  void rollover(int mx, int my) {
    for (int i = 0; i < population.length; i++) {
      population[i].rollover(mx, my);
    }
  }
  
//make matingpool for select
void select(){
  matingPool.clear();
  float maxfitness=getMaxfitness();
    for (int i = 0; i < population.length; i++) {
      float fitnessNormal = map(population[i].getfitness(), 0, maxfitness, 0, 1);
      int n = (int) (fitnessNormal * 100);  
      for (int j = 0; j < n; j++) {
        matingPool.add(population[i]);
      }
    }  
}

//produce new generation
void reproduction(){
  for(int i=0;i<population.length;i++){
    int a=int(random(matingPool.size()));
    int b=int(random(matingPool.size()));
    Design mom=matingPool.get(a);
    Design dad=matingPool.get(b);
    DNA momdna=mom.getDNA();
    DNA daddna=dad.getDNA();
    //child birth~
    DNA child=momdna.crossover(daddna);
    //replace old dna with new child one
    population[i]=new Design(child,100+i*230,100);
  
  }
  generation=generation+1;

}
int getGenerations(){
  return generation;

}

//to find hihgest fitness score for population
float getMaxfitness(){
  float record=0;
  for(int i=0;i<population.length;i++){
    if(population[i].getfitness()>record){
      record=population[i].getfitness();
    }
  
  }
  return record;
}



}
