import processing.pdf.*;
color[] paleta={color(87, 169, 181), color(6, 109, 118), color(11, 73, 84), color(33,45,59)};
float xoff = 0.0;

void setup() {
  size(1000, 500, PDF, "mar5.pdf");
  frameRate(8);
}

void draw() {
  background(255);
  noFill();
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  println(n);
  for (int i=-20; i<height-5; i=i+170) {
    strokeWeight(random(10, 100));
    strokeCap(ROUND);
    stroke(paleta[int(random(paleta.length))]);
    pushMatrix();
    translate(0, i);
    lq(n);
    popMatrix();
  }
}

void lq(float nn) {
  float num=80;
  float[] x={-50, 0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000, 1050};
  float [] y={-20, -5, 0, 10, 100, 20, 100, 30, 90, 40, 100, 50, 90, -30, 80, 100, 20, 100, 30, 120, 30, 70, 40, 90, 50, 100, -30};
  pushMatrix();
  beginShape();
  for (int i=0; i<x.length; i=i+1) {
    float r= random(-num, num);
    curveVertex(x[i]+r, y[i]+r);
  }
  endShape();
  popMatrix();
   println("Finished.");
  exit();
}
