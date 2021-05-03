void setup() {
  size(600, 600);

}

void draw() {
background(255);
 noFill();
 // ellipse central
 push();
   fill (255 ,160 ,15, 75);
  ellipse(width/2, height/2, 300, 300);
  
  pop();


  //rojo
  fill(255, 0, 0);
  ellipse(300, 150, 80, 80);
 
 
  fill(255, 100, 0);
  ellipse(370, 168, 40, 40);

  
  fill(255, 255, 0);
  ellipse(410, 200, 40, 40);
  
  fill(100, 255, 0);
  ellipse(435, 235, 40, 40);
  
   //verde 
   fill(0, 255, 0);
  ellipse(450, 300, 80, 80);
  
  fill(0, 255, 100);
  ellipse(400, 415, 60, 60);
  
    fill(0, 255, 255);
  ellipse(300, 450, 60, 60);
  
  fill(0, 150, 250);
  ellipse(200, 415, 60, 60);
  
  //azul
  fill(0, 0, 255);
  ellipse(150, 300, 80, 80);
  
  fill(100, 0, 255);
  ellipse(165, 235, 40, 40);
  
 fill(255, 0, 255);
  ellipse(190, 200, 40, 40);

  fill(255, 0, 150);
  ellipse(230, 168, 40, 40);
  
fill (0,0,0);
textSize (10);
text ("alumno: Contreras Franco", 70,40);
text ("Legajo: 73467/3", 70,50);
textAlign(CENTER,BOTTOM);  
textSize (38);
text ("R", 300,170);
text ("G", 450,320);
text ("B", 150,320);
  
  strokeWeight(3);
  noFill();
line (300,200,200,325);
line (300,200,400,325);
line (400,325,200,325);

/*guias
line (width/2,0,width/2,600);
line (0,height/2,600,height/2);
*/
}
void mousePressed() {
  println( mouseX + "," + mouseY);
}

//Alumno: Contreras Franco, TecnoMultimedial 1
