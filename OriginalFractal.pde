import processing.core.PApplet;

public class Sketch extends PApplet {

  public void settings() {
    size(400, 400);
  }

  public void setup() {
    background(0);
    noLoop();
  }

  public void draw() {
    myFractal(width / 2, height / 2, 100);
  }

  public void myFractal(int x, int y, int siz) {
    if (siz < 5) return;

    fill(255, 100);
    ellipse(x, y, siz, siz);

    int newSize = siz / 2;
    myFractal(x - newSize, y, newSize);
    myFractal(x + newSize, y, newSize);
    myFractal(x, y - newSize, newSize);
    myFractal(x, y + newSize, newSize);
  }
}
