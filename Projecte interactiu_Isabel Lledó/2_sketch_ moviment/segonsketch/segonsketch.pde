

void setup() {
  size(500, 100);
  frameRate(2);
}

void draw() {
  background(255);
  strokeWeight(1);
  noFill();
      pushMatrix();
      translate(0, 0);
      lq();
      popMatrix();
}

void lq() {
  beginShape();
  vertex(0, 30 + random(-25,+25));
  vertex(50 + random(-25,+25), 90 + random(-25,+25));
  vertex(100 + random(-25,+25), 30 + random(-25,+25));
  vertex(120 + random(-25,+25), 70 + random(-25,+25));
  vertex(200 + random(-25,+25), 20 + random(-25,+25));
  vertex(300 + random(-25,+25), 80 + random(-25,+25));
  vertex(320 + random(-25,+25), 60 + random(-25,+25));
  vertex(400 + random(-25,+25), 80 + random(-25,+25));
  vertex( 420 + random(-25,+25), 10 + random(-25,+25));
  vertex(500, 70 + random(-25,+25));
  endShape();
}
