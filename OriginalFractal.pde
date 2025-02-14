import processing.core.PApplet;

public class Sketch extends PApplet {

 void setup() {
  size(400, 400);
  noFill();
  stroke(255);
  myFractal(width / 2, height / 2, 200);
  noLoop(); 
}

void draw() {
}

void myFractal(int x, int y, int siz) {
  if (siz < 5) return;

  rectMode(CENTER);
  rect(x, y, siz, siz);
  
  int newSize = siz / 2;
  myFractal(x - newSize, y - newSize, newSize);
  myFractal(x + newSize, y - newSize, newSize);
  myFractal(x - newSize, y + newSize, newSize);
  myFractal(x + newSize, y + newSize, newSize);
}
