import processing.serial.*;
float xoff = 0.0;
color[] paleta={color(87, 169, 181), color(6, 109, 118), color(11, 73, 84), color(33, 45, 59)};

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port

float inByte;

float v1;
float v2;
float num;

void setup()
{
  size(1000, 700);
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  frameRate(10);
}

void draw()
{
  background(255);
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  } 
  //println(val); //print it out in the console
  stroke(paleta[int(v1)]);
  //println(int(v1));
  noFill();
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  //println(n);
  for (int i=-20; i<height -20; i=i+60) {
    strokeWeight(random(v2));
    strokeCap(ROUND);
    stroke(paleta[int(random(paleta.length))]);
    pushMatrix();
    translate(0, i);
    lq(n);
    popMatrix();
  }
}

void lq(float nn) {
  float[] x={-80, -20, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000, 1050};
  float [] y={-50, 20, 0, 10, 100, 20, 100, 30, 90, 40, 100, 50, 90, -30, 80, 100, 20, 100, 30, 120, 30, 70, 40, 90, 50, 100, -30};
  pushMatrix();
  beginShape();
  for (int i=0; i<x.length; i=i+1) {
    float r= random(-num, num);
    curveVertex(x[i]+r, y[i]+r);
  }
  endShape();
  popMatrix();
}
  void serialEvent (Serial myPort) {
    String inString = myPort.readStringUntil('\n');
    if (inString != null) {
      // trim off any whitespace:
      inString = trim(inString);
      // convert to an int and map to the screen height:
      inByte = float(inString);
      println(inByte);
      num= map(inByte, 300, 1024, 2, 150);
      println(num);
      v1 = map(inByte, 300, 1024, 0, 3);
      v2 = map(inByte, 0, 1024, 1, 30);
    }
  }
