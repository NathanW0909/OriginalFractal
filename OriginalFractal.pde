import processing.core.PApplet;

public class Sketch extends PApplet {

  void setup() {
  size(600, 600);
  background(0);
  noFill();
  stroke(255);
  drawFractal(width / 2, height / 2, 200, 5);
}

void drawFractal(float x, float y, float radius, int depth) {
  if (depth == 0) return;
  
  ellipse(x, y, radius * 2, radius * 2);
  
  float newRadius = radius / 2;
  drawFractal(x - newRadius, y, newRadius, depth - 1);
  drawFractal(x + newRadius, y, newRadius, depth - 1);
  drawFractal(x, y - newRadius, newRadius, depth - 1);
  drawFractal(x, y + newRadius, newRadius, depth - 1);
}

