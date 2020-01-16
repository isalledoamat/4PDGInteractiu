
void setup() {
  size(500, 100);
  frameRate(5);
}

void draw() {
  background(255);
  strokeWeight(1);
  noFill();
  pushMatrix();
  lq();
  popMatrix();
}

void lq() {
  float num=50;
  float[] x={0, 25, 50, 75, 100, 125, 150, 175, 200, 225, 250, 275, 300, 325, 350, 375, 400, 425, 450, 475, 500};
  float [] y={0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100};
  pushMatrix();
  beginShape();
  for (int i=0; i<x.length; i=i+1) {
    float r= random(-50, 50);
    vertex(x[i], y[i]+r);
  }
  endShape();
  popMatrix();
}
