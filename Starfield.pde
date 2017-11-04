Star[] stars = new Star[1000];

void setup(){
 size(1720,800);
 for(int i=0;i<stars.length;i++){
  stars[i] = new Star(); 
 }
}

void draw(){
 background(0);
 translate(mouseX,mouseY);
 for(int i=0;i<stars.length;i++){
  stars[i].update();
  stars[i].show();
 }
}