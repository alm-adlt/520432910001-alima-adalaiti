class DNA{

float[] genes;
int num=26;
  DNA(){
    genes = new float[num]; 
  
    for(int i=0;i<genes.length;i++){
      genes[i] = random(0,1);
  }}
  
  DNA(float[] newgenes){
    genes=newgenes;
  }
  
  DNA crossover(DNA partner){
    float[] child=new float[genes.length];
    
    int midpoint=int(random(genes.length));
    
    for(int i=0;i<genes.length;i++){
      if(i>midpoint){
        child[i]=genes[i];
      }
      else{
        child[i]=partner.genes[i];
      }
    }
    DNA newgenes=new DNA(child);
    return newgenes;
  }
  
void mutate(float m){
  for(int i=0;i<genes.length;i++){
    if(random(1)<m){
      genes[i]= random(0,1);
    }
  }
}
  



}
