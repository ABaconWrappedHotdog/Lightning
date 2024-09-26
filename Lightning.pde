int startX = 0;
int startY= 500+((int)Math.random()*500);
int endX = 0;
int endY = 500-((int)Math.random()*500);

void setup(){
size(1000,800);
strokeWeight(5);
}
void draw(){

stroke((int)(Math.random()*255));
while (endX < 1000){
endX = startX + (int)(Math.random()*9);
endY = startY + ((int)(Math.random()*18)-9);
line(startY, startX, endY, endX);
line(endY, endX, startY, startX);
startX = endX;
startY = endY;

}

for(int i=200;i<800;i+=100+(int)(Math.random()*50)){
  for(int s =10;s<200;s+=100+(int)(Math.random()*50)){
    int colour = (int)(Math.random()*155);
    fill(colour,colour,colour);
    noStroke();
    ellipse(i,50,190,s);
  }
}
}

void mousePressed(){
  startX = 0;
  startY= 500+((int)Math.random()*500);
  endX = 0;
  endY = 500-((int)Math.random()*500);
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));

}
