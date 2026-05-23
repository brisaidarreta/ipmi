//Brisa Idarreta. Legajo 125598/5
PImage portada2;
PImage portada;
PFont fuentetit;
PFont fuentesubtit;
int pantalla=0 ;
float yFondo = 0;
PImage tablero ;
PImage Peón ;
PImage caballo ;
PImage alfil ;
PImage torre ;
PImage Dama ;
PImage Rey ;
PFont general;
int tiempoPantalla1;
PImage coronacion1;
PImage coronacion2;
PImage coronacion3 ;
PImage enroque1;
PImage enroque2;
PImage peonalpaso1;
PImage peonalpaso2;
PImage peonalpaso3;
PImage faustino;
float transparencia;
float transparenciaTexto = 0;


void setup() {
  size(640, 480);
  portada2= loadImage("fondo.png");
  portada = loadImage("portada.png");
  fuentetit=loadFont("titulo.vlw");
  textFont(fuentetit, 70);
  fuentesubtit= loadFont("subtitulo.vlw");
  textFont (fuentesubtit, 30);
  tablero= loadImage("tablero.png");
  general=loadFont("general.vlw");
  tiempoPantalla1 = millis();
  Peón=loadImage("peón.png");
  caballo= loadImage("caballos.png");
  alfil=loadImage("alfil.png");
  torre= loadImage("torres.png");
  Dama=loadImage("reina.png");
  Rey=loadImage("rey.png");
  coronacion1=loadImage("coronar1.png");
 coronacion2=loadImage("coronar2.png");
 coronacion3 =loadImage("coronar3.png");
 enroque1=loadImage("enroque1.png");
enroque2=loadImage("enroque 2.png");
peonalpaso1=loadImage("peonalpaso1.png");
peonalpaso2=loadImage("peonalpaso2.png");
 peonalpaso3=loadImage("peonalpaso3.png");
 faustino=loadImage("FaustinoOro.jpg");
 transparencia = 0;
}
void fondoAnimado(){

  image(portada2, 0,yFondo,640,480);

  image(portada2,0,yFondo-height,640,480);
}

void transparenciatexto(){
  fill(255, transparencia);
  if(transparencia < 255){
   transparencia += 12;
  }
}



void draw() {
  //pantalla 0

  yFondo += 1;
  if (yFondo >= height) {
    yFondo = 0;
  }

  if (pantalla == 0) {
    fondoAnimado();

    image(portada, 0, 200, 640, 280);
    textFont(fuentetit, 70);
    fill(255);
    text("AJEDREZ", 150, 90 );
  

    fill(146, 147, 170);
    noStroke();
    rect(225, 145, 210, 40);

    textFont (fuentesubtit, 30);
    fill(0);
    text ("¡Aprende conmigo!", 230, 170);
  }



  //pantalla1
  if (pantalla==1) {
    fondoAnimado();
    image(tablero, 0, 0, 340, 480);
    textFont(general, 20);
    transparenciatexto();
    text("  El ajedrez es un juego\n de estrategia y lógica que se\n practica entre dos jugadores\n sobre un tablero de 64 casillas.\n Cada jugador controla un\n conjunto de piezas con\n movimientos y funciones\n diferentes, cuyo objetivo\n principal es dar jaque mate\n al rey rival.", 345, 120);
   
    if (millis() - tiempoPantalla1 > 7000) {

      pantalla = 2;
      transparencia = 0;
    }
  }
  //pantalla 2

  if (pantalla==2) {
    background(0);
   fondoAnimado();
    textFont(fuentetit, 40);
    transparenciatexto();
    text( "Las piezas", 220, 50);


    textFont(general, 20);
  transparenciatexto();
    text("   El peón es la pieza más numerosa del ajedrez\n  Se mueve una casilla hacia adelante,\n aunque en su primer movimiento\n puede avanzar dos y captura en diagonal\n Aunque suele considerarse la pieza\n de menor valor (1 punto), \n los peones cumplen un papel fundamental \nen la defensa y el control del tablero.", 20, 100);
    image(Peón, 275, 175);
 if (millis() - tiempoPantalla1 > 14000) {

    pantalla = 3;
    transparencia = 0;
  }  
}
  
 
  //pantalla 3
  if (pantalla==3) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 40);
    transparenciatexto();
    text("Las piezas", 220, 50);
    textFont(general, 20);
   
  transparenciatexto();
    text("  El caballo es una pieza del ajedrez\n que se caracteriza por su\n movimiento en forma de “L”:\n avanza dos casillas en una dirección\n y luego una perpendicular.\n Es la única pieza capaz\n de saltar por encima de otras \n y vale 3 puntos", 20, 100 );
    image(caballo , 275, 175);
if (millis() - tiempoPantalla1 > 21000) {

    pantalla = 4;
    transparencia = 0;
}
}

//pantalla 4
if (pantalla==4) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 40);
    transparenciatexto();
    text("Las piezas", 220, 50);
    
    textFont(general, 20);
   transparenciatexto();
    text("  El alfil es una pieza que se mueve en diagonal\n a lo largo del tablero y puede recorrer varias\n casillas en un solo movimiento.\n Cada jugador comienza la partida con dos alfiles:\n uno que se desplaza por casillas claras\n y otro por casillas oscuras.\n Al igual que el caballo,\n vale 3 puntos", 20, 100);
image(alfil , 275, 175);
if (millis() - tiempoPantalla1 > 28000) {

    pantalla = 5;
    transparencia = 0;
}

}

//pantalla 5
if (pantalla==5) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 40);
    transparenciatexto();
    text("Las piezas", 220, 50);
   
    textFont(general, 20);
   transparenciatexto();
    text("  La torre se mueve en línea recta,\n tanto horizontal como verticalmente,\n recorriendo varias casillas en un solo movimiento.\n En el sistema de valoración de piezas,\n la torre tiene un valor aproximado de 5 puntos,\n siendo más valiosa que el alfil y el caballo.", 20, 100);
image( torre,275, 175);
if (millis() - tiempoPantalla1 > 34000) {

    pantalla = 6;
    transparencia = 0;
}
}

//pantalla 6
if (pantalla==6) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 40);
 transparenciatexto();
    text("Las piezas", 220, 50);
    textFont(general, 20);
    transparenciatexto();
    text("  La dama es la pieza más poderosa del ajedrez,\n ya que combina los movimientos de la torre y el alfil.\n Puede desplazarse en línea recta,\n tanto horizontal y verticalmente como en diagonal,\n recorriendo varias casillas en un solo movimiento.\n En el sistema de valoración de piezas,\n la dama tiene un valor aproximado de 9 puntos,\n siendo la pieza de mayor valor después del rey.", 20, 100);
image( Dama, 275, 215);
if (millis() - tiempoPantalla1 > 41000) {

    pantalla = 7;
    transparencia = 0;
}
}

//pantalla 7

if (pantalla==7) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 40);
    transparenciatexto();
    text("Las piezas", 220, 50);
    textFont(general, 20);
    fill (255);
    text(" El rey es la pieza más importante del ajedrez,\n ya que el objetivo principal del juego es protegerlo y\n evitar que quede en jaque mate.\n Puede moverse una casilla en cualquier dirección:\n horizontal, vertical o diagonal.\n El rey no tiene un valor numérico definido como las demás piezas,\n debido a que su captura significa el final del juego.", 20, 100);
image( Rey,275, 215);
if (millis() - tiempoPantalla1 > 48000) {

    pantalla = 8;
    transparencia = 0;
}
}

//pantalla 8

if (pantalla==8) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 35);
    transparenciatexto();
    text("Movimientos especiales", 78, 240);
    if (millis() - tiempoPantalla1 > 50000) {

    pantalla = 9;
    transparencia = 0;
}
}

//pantalla 9: coronación

if (pantalla==9) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 35);
    transparenciatexto();
    text("Movimientos especiales", 78, 50);
    
    textFont(fuentesubtit, 30);
    fill (255);
    text(" 1. Coronacion",50 ,100);
    
    textFont(general, 20);
    transparenciatexto();
    text("  La coronación es una regla especial del ajedrez\n que ocurre cuando un peón logra llegar a la última fila del tablero,\n en el lado contrario al que comenzó.\n En ese momento, el jugador puede transformar ese peón\n en otra pieza de mayor valor: dama, torre, alfil o caballo.\n Generalmente, se elige la dama debido a su gran poder de movimiento.", 15, 150);
    image( coronacion1, 15, 284);
     image( coronacion2, 320, 284);
     image( coronacion3, 372, 284);
     if (millis() - tiempoPantalla1 > 57000) {
    pantalla = 10;
}
}

//pantalla10

if (pantalla==10) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 35);
    transparenciatexto();
    text("Movimientos especiales", 78, 50);
    
    textFont(fuentesubtit, 30);
    transparenciatexto();
 text("2.Peon al paso", 50 ,100);
 textFont(general, 20);
    transparenciatexto();
    text("  El peón al paso puede realizarse cuando un peón avanza\ndos casillas en su primer movimiento y queda al lado de un peón rival.\nEn esa situación, el peón adversario puede capturarlo\ncomo si solo hubiera avanzado una casilla.\nEsta captura debe hacerse inmediatamente en el siguiente turno;\nde lo contrario, se pierde la posibilidad de realizarla.", 20, 150);
  image(peonalpaso1, 15, 284);
  image(peonalpaso2, 100, 284);
  image (peonalpaso3, 185,284);
  if (millis() - tiempoPantalla1 > 65000) {
    pantalla = 11;
     transparencia = 0;
}
}


if (pantalla==11) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 35);
    transparenciatexto();
    text("Movimientos especiales", 78, 50);
    
    textFont(fuentesubtit, 30);
    transparenciatexto();
 text("3. Enroque", 50 ,100);
 textFont(general, 20);
    transparenciatexto();
    text(" En el enroque participan el rey y una de las torres.\n Consiste en mover el rey dos casillas hacia la torre\n y luego colocar la torre al lado del rey, del lado opuesto.\n Para realizar el enroque, ni el rey ni la torre\n deben haberse movido previamente,\n no puede haber piezas entre ambos y el rey no puede estar en jaque\n ni atravesar casillas amenazadas por piezas rivales.", 15, 150); 
image(enroque1 , 15, 297);
image(enroque2 , 200, 297);
if (millis() - tiempoPantalla1 > 72000) {

    pantalla = 12;
     transparencia = 0;
}
}

//pantalla 11
if (pantalla==12) {
    background(0);
fondoAnimado();
    textFont(fuentetit, 35);
    transparenciatexto();
    text("ORGULLO NACIONAL", 78, 50);
    
    textFont(fuentesubtit, 30);
   transparenciatexto();
 text("Faustino Oro", 50 ,100);
 textFont(general, 20);
    transparenciatexto();
    text("  Faustino Oro es un ajedrecista argentino de 12 años.\nA sus 10 años, logró ganarle una partida online al mejor jugador\nde ajedrez del mundo: Magnus Carlsen. Pero ese no fue su mayor\n logro en el deporte, sino que a los 12 años, 6 meses y 26 días,\nse convirtió en el segundo Gran Maestro de ajedrez\n más joven de la historia. La crítica dice que puso haber sido\n el más joven de no ser por el reciente cambio de normas\n de la FIDE para conseguir ese título", 15, 150);
image(faustino, 372, 307);
fill(0);
rect(12, 410, 70, 30);
textFont(general, 15);
fill(255);
text("Reiniciar", 14,425);
}
  
}

void mousePressed() { //225+210=435-----145+40=185
  if ( mouseX>225 &&
    mouseX<435 &&
    mouseY>145 &&
    mouseY< 185) {
    pantalla=1;
  }
  if ( mouseX>12 &&
    mouseX<82&&
    mouseY>410 &&
    mouseY< 440) {
    pantalla=0;
  }
  
}

































//Santa Rita, por favor, pide para mí a Dios que apruebe este TP. Amén
