//Alumno: Contreras franco
//legajo: 73467/3

int pantalla,r,g,b; // variables enteras
float posX=0,posX2=800,incremento = 2,incremento2 = 2, incremento3=2,Y=-300,Y2=700,Y3=750,contador,contador2,contador3; //variables flotantes
PImage foto0,foto1,foto2,foto3,foto4,foto5,foto6,foto7,foto8,foto10,foto11,foto12; //asignacion de pimage
PFont font1; //asignacion de pfont

//importo libreria minim
import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup () {
  size (800,600);
  //declara y creo mi font//
  font1 = createFont("font1.ttf",48);
  textAlign (CENTER);
  //carga de imagenes, no for//
  foto0=loadImage ("deadpool0.PNG");
  foto1=loadImage("deadpool1.PNG");
  foto2=loadImage("deadpool2.PNG");
  foto3=loadImage("logo.png");
  foto4=loadImage("deadpool4.PNG");
  foto5=loadImage("deadpool5.PNG");
  foto6=loadImage("deadpool6.PNG");
  foto7=loadImage("deadpool7.PNG");
  foto8=loadImage("deadpool8.PNG");
  foto10=loadImage("end.png");
  foto11=loadImage("background.png");
  foto12=loadImage("boton2prueba_ojos.png");
  //minim//
   minim =new Minim(this);
   music =minim.loadFile("music.mp3");
   music.loop();
  //variables contadores
  contador= 400;
  contador2= 400;
  contador3=-0.70; 
}

void draw () {
    
    textFont(font1);
   //colores intermitentes     
   r = int( random(255) ); 
   g = int( random(255) ); 
   b = int( random(255) );
  //PANTALLA 0    
  if ( pantalla == 0) {
    background(139,26,26);
    image (foto11,0,0,width,height);
    image (foto3,0,Y,800,300);
    Y++;
    if (Y>=3) {
    Y=3;
    }
pushMatrix();
    stroke(246,255,3);
    strokeWeight(1);
    ellipseMode (CENTER);
    fill (r,g,b);
    ellipse (400,440,30,30);
    image(foto12, 380, 420, 40, 40);
pushStyle();
    textSize (30);
    fill (r,g,b);
    text  ("PRESS BUTTOM",390,490);
popStyle();
popMatrix();

  }
  //PANTALLA 1
      if ( pantalla == 1) { 
        posX=posX+incremento;
        {if ( posX>width/2)
        incremento = 0; 
    }
         background (foto1);
  pushStyle();    
         fill (0,0,0);
         text ("DIRIJIDO POR",posX, height/2-40);
  popStyle();
  pushStyle(); 
          fill (255,251,211);
          if ( pantalla == 1) { 
          posX2=posX2-incremento2;
          {if ( posX2<width/2)
          incremento2 = 0; }
    }
      text ("\nTIM MILLER", posX2, height/2 -20);
  popStyle();   
  }  
    //PANTALLA 2
   else if (pantalla == 2) {
     
     if ( pantalla == 2) { 
        posX=posX+incremento;
        {if ( posX>width/2)
        incremento = 0; 
    }
    if ( pantalla == 2) { 
        posX2=posX2-incremento2;
        {if ( posX2<width/2)
        incremento2 = 0; }
    }
    }
       background (foto2);
  pushStyle();    
       fill (0,0,0);
       text ("ESCRITO POR",posX,height/2 -40);
  popStyle();
  pushStyle();
       fill (255,251,211);
       text ("RHETT RHESSE &\n PAUL WAGNER",posX2,height/2+10);
  popStyle();     
      } 
     //PANTALLA 3
     else if (pantalla == 3) {
       
       if ( pantalla == 3) { 
        posX=posX+incremento;
        {if ( posX>width/2)
        incremento = 0; 
    }
    }
        if ( pantalla == 2) { 
        posX2=posX2-incremento2;
        {if ( posX2<width/2)
        incremento2 = 0; }
    }
    
       background (foto4);
   pushStyle();    
      fill (0,0,0);
      text ("MUSICA POR",posX,height/2-40); 
   popStyle();
   pushStyle();
      fill (255,251,211);
      text ("TOM HOLKENBORG",posX,height/2+10);
   popStyle();    
 }
     //PANTALLA 4
     else if (pantalla == 4) {
       contador3 ++;
       if ( pantalla == 4) { 
        posX=posX+incremento;
        {if ( posX>width/2)
        incremento = 0; 
    }
    }
       //POS Y2
        if ( pantalla == 4) { 
        Y2=Y2-incremento2;
        {if ( Y2<height/2)
        incremento2 = 0; }
    }
        //POS Y3
        if ( pantalla == 4) { 
        Y3=Y3-incremento3;
        {if ( Y3<height/2)
        incremento3 = 0; }
    }
    //la coma
        if (contador3>300){
      contador3=300;
      }
      
     background (foto5);
   pushStyle();    
     fill (0,0,0);
     textSize (80);
     textAlign (CENTER,BOTTOM);
     text ("CASTING BY",posX+50,height/2-40);
   popStyle();
   pushStyle();
     fill (255,251,211);
     //RONNA CRES,csa
     text ("R",width/2-180,Y2);
     text ("O",width/2-150,Y3);
     text ("N",width/2-120,Y2);
     text ("N",width/2-90,Y3);
     text ("A",width/2-60,Y2);
     
     text ("C",width/2-30,Y3);
     text ("R",width/2,Y2);
     text ("E",width/2+30,Y3);
     text ("S",width/2+60,Y2);
     
     pushStyle();
     textSize( map(contador3, 0, 400, 0, 50) );
     text (",",width/2+90,297);
     popStyle();
     
     text ("c",width/2+120,Y3);
     text ("a",width/2+150,Y2);
     text ("s",width/2+180,Y3);
     text ("t",width/2+210,Y2);
     
     
   popStyle();
     //BOTON NEXT
     fill (r,g,b);
     ellipse (720,570,30,30);
     image(foto12, 700, 550, 40, 40);
    
   }
   //PANTALLA 5
   else if (pantalla == 5) {
     contador--;
      background (foto6);
    pushStyle();
       fill (255,251,211);
       textSize( map(contador, 400, 0, 100, 20) );
       if (contador<200){
      contador=200;
      }
      text ("RYAN REYNOLDS",width/2,height/2);
   popStyle();
   pushStyle();
       fill (255,77,77);
      //BOTON NEXT
     fill (r,g,b);
     ellipse (720,570,30,30);
     image(foto12, 700, 550, 40, 40);
   popStyle();
     }
     //PANTALLA 6
     else if (pantalla == 6) {
       contador2--;
      background (foto7);
   pushStyle();
      fill (255,251,211);
      textSize( map(contador2, 400, 100, 100, 20) );
      if (contador2<200){
      contador2=200;
      }
      text ("MORENA BACCARIN",width/2+20,height/2);
   pushStyle();
       fill (255,77,77);
      //BOTON NEXT
     fill (r,g,b);
     ellipse (720,570,30,30);
     image(foto12, 700, 550, 40, 40);
   popStyle();
     }
     //PANTALLA 7
      else if (pantalla == 7) {
        contador--;
      background (foto8);
      //BOTON NEXT
     fill (r,g,b);
     ellipse (720,570,30,30);
     image(foto12, 700, 550, 40, 40);
   pushStyle();
      fill (255,251,211);
      textSize( map(contador, 400, 0, 100, 20) );
      if (contador<200){
      contador=200;
      }
      text ("ED SKREIN",width/2,height/2);
   popStyle();
     }
     //PANTALLA 8
     else if (pantalla == 8) {
        contador3++;
      background (foto0);
      fill (r,g,b);
      ellipse (720,570,30,30);
      image(foto12, 700, 550, 40, 40);
   pushStyle();
      textSize (30);
      fill(0,0,0);
      text ("PROTAGONISTAS SECUNDARIOS",width/2-150,100);
   popStyle();
   pushStyle();
      fill (255,251,211);
      textSize( map(contador3, 0, 400, 0, 50) );
      if (contador3>300){
      contador3=300;
      }
      text ("GINA CARANO",width/2-150,200);
      text ("LESLIE UGGAMS",width/2-150,250);
      text ("BRIANNA HILDEBRAND",width/2-150,300);
      text ("KARAN SONI",width/2-150,350);
      text ("JED RESS",width/2-150,400);
      text ("STEFAN KAPICIC",width/2-150,450);
   popStyle();
     }
     //PANTALLA 9
     else if (pantalla ==9) {
     background (foto10);
   pushStyle();
     fill (255,251,211);
     text("THANKS FOR WATCHING",500,250);
   popStyle();
   pushStyle();
    //BOTON NEXT
     fill (r,g,b);
     ellipse (720,570,30,30);
     image(foto12, 700, 550, 40, 40);
   popStyle();
     
     }    
   println (pantalla,mouseX,mouseY);
 }

void mousePressed() {
  
    if (pantalla>=10) {
        pantalla = 0;
    }
  
    else if ( pantalla == 4){
      if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=5;
      contador=400;
 } 
      }else if (pantalla == 5) {
       if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=6;  
      contador=400;}  
 }
 else if (pantalla == 6) {
       if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=7;  
      contador2=400;}  
 }
 else if (pantalla == 7) {
       if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=8;
      contador=400;
      contador3=0;}  
 }
  else if (pantalla == 8) {
       if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=9;
      contador=0;
      contador3=0;}  
 }
  else if (pantalla == 9) {
       if ( dist(mouseX, mouseY, 700, 550) < 40 ) {
      pantalla=0;
      Y=-300;}  
       
 }

    else if ( pantalla == 0  ) {
      if ( dist(mouseX, mouseY, 380, 420) < 40 )
    pantalla=1;
    posX=0;
    posX2=800;
    incremento= 2;
    incremento2= 2;
      }
    else if ( pantalla == 1  ) {
    posX=0;
    posX2=800;
    incremento= 2;
    incremento2= 2;
    pantalla = 2;  }
    else if ( pantalla == 2  ) {
     posX=0;
    posX2=800;
    incremento= 2;
    incremento2= 2;
    pantalla = 3;  }
    else if ( pantalla == 3  ) {
     posX=0;
    posX2=800;
    Y2=700;
    Y3=750;
    incremento= 2;
    incremento2= 2;
    incremento3= 2;
    pantalla = 4;  }
    else if ( pantalla == 4  ) {
    posX=0;
    posX2=800;
    Y2=700;
    Y3=750;
    incremento= 2;
    incremento2= 2;
    incremento3= 2;
    pantalla = 5;  }

}
