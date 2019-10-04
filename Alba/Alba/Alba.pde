import processing.pdf.*;

void setup(){
  size(400,400, PDF, "alba.pdf");
}
void draw(){
  background(20,100,10);
  strokeWeight(1);
 /*monyo*/
 fill(120,90,60);
 rect(0,0,130,160);
 /*cap*/
 fill(#FADEC0);
 ellipse(65,100,100,150);
 /*ulls*/
 strokeWeight(2);
 arc(45,90,25,20,radians(200),radians(340));
 arc(85,90,25,20,radians(200),radians(340));
 /*nas*/
 strokeWeight(2);
 arc(65,120,20,20,radians(45),radians(135));
 /*boca*/
 arc(65,130,55,50,radians(45),radians(135));
 
 println("ja està");
 exit();
 
}
