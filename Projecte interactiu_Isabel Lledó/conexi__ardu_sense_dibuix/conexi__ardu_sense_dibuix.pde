import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port
float inByte;

float v1;
float v2;

void setup()
{
  size(1000, 500);
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  background(255);
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
println(inByte);
}
void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil('\n');
  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the screen height:
    inByte = float(inString);
    //println(inByte);
    v1 = map(inByte, 0, 1024, 0, 3);
    v2 = map(inByte, 0, 1024, 1, 5);
  }
}
