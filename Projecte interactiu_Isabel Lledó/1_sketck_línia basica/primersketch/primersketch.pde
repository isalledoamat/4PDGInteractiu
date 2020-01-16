void setup() {
  size(500, 100);
  background(255);
}

void draw() {

  strokeWeight(1);
  noFill();
  beginShape();
  vertex(0,30);
  vertex(50, 90);
  vertex(100, 30);
  vertex(120, 70);
  vertex(200, 20);
  vertex(300, 80);
  vertex(320, 60);
  vertex(400, 80);
  vertex( 420, 10);
  vertex(500, 70);
  endShape();
}
