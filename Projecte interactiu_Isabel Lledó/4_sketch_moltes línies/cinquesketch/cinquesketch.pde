float xoff = 0.0;

void setup() {
  size(1000, 500);
  frameRate(5);
}

void draw() {
  background(255);
  noFill();
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  println(n);
  for (int i=0; i<height-50; i=i+10) {
    strokeWeight(random(1,4));
    pushMatrix();
    translate(0, i);
    lq(n);
    popMatrix();
  }
}

void lq(float nn) {
  float num=30;
  float[] x={-50,0,50,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1050};
  float [] y={-20,-5,0,10,100,20,100,30,90,40,100,50,90,-20,-5,0,10,100,20,100,30,90,40,90,50,100,-30};
  pushMatrix();
  beginShape();
  for (int i=0; i<x.length; i=i+1) {
    float r= random(-num, num);
    vertex(x[i]+r, y[i]+r);
  }
  endShape();
  popMatrix();
}
