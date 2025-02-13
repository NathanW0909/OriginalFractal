import processing.core.PApplet;

public class Sketch extends PApplet {

  public void settings() {
    size(400, 400); // Ensure a visible canvas size
  }

  public void setup() {
    noFill();
    stroke(255);
    myFractal(width / 2, height / 2, 200);
    noLoop(); // Prevents continuous redrawing
  }

  public void draw() {
  }

  public void myFractal(int x, int y, int siz) {
    if (siz < 5) return;

    rectMode(CENTER);
    rect(x, y, siz, siz);
    
    int newSize = siz / 2;
    myFractal(x - newSize, y - newSize, newSize);
    myFractal(x + newSize, y - newSize, newSize);
    myFractal(x - newSize, y + newSize, newSize);
    myFractal(x + newSize, y + newSize, newSize);
  }

  public static void main(String[] args) {
    PApplet.main("Sketch");
  }
}
