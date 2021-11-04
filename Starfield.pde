StarField [] dave;
int n = 2000;
void setup(){
  background(0);
  size(600,600);
  dave = new StarField[n];
  for(int i = 0;i<dave.length/2;i++){
    dave[i] = new oddIndiv();
  }
  for(int i = dave.length/2;i<dave.length;i++){
    dave[i] = new StarField();
  }
}
void draw(){
background(0,0,0,255);
 for(int i = 0;i<dave.length;i++){
   dave[i].move();
   dave[i].show();
  }
}
void mousePressed()
{
   background(100,20,20);
   for(int i = 0;i<dave.length;i++){
   dave[i].myX = mouseX;
   dave[i].myY = mouseY;
}
}
class StarField{
  int myColor;
  double myX,myY,myAngle,mySpeed,mySize;
  StarField(){
  myX = 300;
  myY = 300;
  myAngle = (Math.random()*2*PI);
  mySpeed = (Math.random()*10);
  //myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  myColor = color(255,255,255,120);
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,20,20);
  }
  void move(){
    myX += Math.sin(myAngle)*mySpeed;
    myY += Math.cos(myAngle)*mySpeed;
    if(myX>=700 || myX<=-20){
      myX = 300;
       myAngle = (Math.random()*2*PI);
        mySpeed = (Math.random()*11);
        
    }
    if(myY>=700 || myY<=-20){
      myY = 300;
       myAngle = (Math.random()*2*PI);
        mySpeed = (Math.random()*11);
    }
  }
}
class oddIndiv extends StarField{
  oddIndiv(){
    myX = 600;
    myY = 600;
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*2);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){
    myX += Math.sin(myAngle)*mySpeed-(Math.random()*5)-3;
    myY += Math.cos(myAngle)*mySpeed-(Math.random()*5)-3;
    if(myX>=700 || myX<=-20){
      myX = 600;
      myAngle = (Math.random()*2*PI);
      mySpeed = (Math.random()*2);
    }
    if(myY>=700 || myY<=-20){
      myY = 600;
      myAngle = (Math.random()*2*PI);
      mySpeed = (Math.random()*2);
    }
    
  }
}

