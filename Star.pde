class Star{
  float x;
  float y;
  float z;
  
  float speed;
  
  Star(){
   x = random(-width, width);
   y = random(-height, height);
   z = random(width);
   
  }
  
  void update(){
    if(mouseX<width/2)
    speed = map(mouseX, 0,width/2,0 , 50);
    else
    speed = map(mouseX,width/2,width,50,0);
    z=z-speed;
    
    if(z<1){
      x = random(-width, width);
      y = random(-height, height);
      z = random(width);
     
    }
  }
  
  void show(){
   fill(215,204,222);
   noStroke();
   
   float sx = map(x/z,0,1,0,width);
   float sy = map(y/z,0,1,0,height);
   
   float size = map(z,0,width,8,0);
   ellipse(sx,sy,size,size);
  }
}