int a = 900;

public void setup(){
  size(600, 600);
  frameRate(70);
  background(0, 0, 0);
}
public void draw(){
  fill(0, 10);
  if(a <= 900){
    a--; 
  }
  if(a == 900){
    a++; 
  }
  if(a == 0){
   a++; 
  }
  if(mousePressed){
    a = 900; 
  }
  sierpinski(0, 600, 600);
}
public void mouseDragged(){

}
public void sierpinski(int x, int y, int len){
  if(len < a){
    fill(((int)(Math.random()*255)), ((int)(Math.random()*255)), ((int)(Math.random()*255)));
    triangle(x, y, x + len/2, y - len, x + len, y); 
  }
  else{
    sierpinski(x, y, len/2); 
    sierpinski(x + len/2, y, len/2); 
    sierpinski(x + len/4, y - len/2, len/2); 
  }
  
} 
