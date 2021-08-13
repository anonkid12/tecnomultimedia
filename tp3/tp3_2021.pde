int estado; 
void setup() {
  size(1000, 1000);
  surface.setResizable(true);
  stroke(255);
  estado = 0;
}

void draw() {
   if ( estado==0 ) {
   mostrarPantalla0();
  background(0, 0, 0);
  noStroke();
  stroke(255);
  textSize(48);
  textAlign(CENTER);
  text("Presione una tecla\n para comenzar",width/2,height/2);
  }

}

void mousePressed() {
  if ( estado==0 ) {
    mostrarPantalla0();  
  }else if ( estado==1 ) {
    mostrarPantalla1();      
  }
  }
