void eventoCruz() { //evento cruz
   if ( estado==1 ) {
      mostrarPantalla1();
  int xfor = width / 150 / 2 + 1;
  int yfor = height / 150 / 2 + 1;

  for (int i = xfor*-1; i < xfor; i++) {
    for (int j = yfor*-1; j < yfor; j++) {
      pushMatrix();
      translate(width/2+i*150, height/2+j*150);
      eventoCruz(); //invoco evento cruz
      popMatrix();
      }
    }
  }

   pushMatrix();
  rotate(radians(frameCount));
  rectMode(CENTER);
  rect(0, 0, 50, 50);
  rect(0+49, 0, 50, 50);
  rect(0-49, 0, 50, 50);
  rect(0, 0+49, 50, 50);
  rect(0, 0-49, 50, 50);
  popMatrix();
}
