int startX = -2000;
int startY= 700+((int)Math.random()*500);
int endX = -2000;
int endY = 700-((int)Math.random()*500);
int n = 0;
void setup(){
size(1000,800);
strokeWeight(7);
background((int)(Math.random()*155),(int)(Math.random()*155),(int)(Math.random()*155));
}
void draw(){
stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)); 
  while (endX < 1000){
    endX = startX + (int)(Math.random()*9);
    endY = startY + ((int)(Math.random()*18)-9);
    line(startY, startX, endY, endX);
    startX = endX;
    startY = endY;
  }
  
  if (n<15){
    startX = -2000;
    startY= 700+((int)Math.random()*500);
    endX = -2000;
    endY = 700-((int)Math.random()*500);
    n++;
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
  n = 0;
  startX = -2000;
  startY= 700+((int)Math.random()*500);
  endX = -2000;
  endY = 700-((int)Math.random()*500);
  background((int)(Math.random()*155),(int)(Math.random()*155),(int)(Math.random()*155));
int locationX = (int)(Math.random()*1000);
int locationY = (int)(Math.random()*1000);
//yellow
fill(55, 55, 0);
//draw the head
ellipse(locationX, locationY, 150, 150);
//white
fill(255);
//eyes
ellipse(locationX, locationY, 60, 50);
ellipse(locationX, locationY, 60, 50);
//black
fill(0);
//pupil
ellipse(locationX, locationY, 30, 30);
}
