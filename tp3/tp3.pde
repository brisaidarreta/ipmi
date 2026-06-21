//https://youtu.be/OAfqQ_xQ0fY
//perdón por pasarme de tiempo. Juro que lo grabé demasiadas veces y no encontré como acortarlo más :(
PImage Opart;
float rotación =0;
boolean cambioColor = false; 

void setup(){
  background(255);
size (800, 400);
Opart= loadImage("21.jpg"); 
}
void draw() {
//ROTATE, TRANSLATE, PUSHMATRIX Y POPMATRIX.
 pushMatrix();
  translate(600,200); // que el centro esté en la mitad derecha de la pantalla
  rotate(rotación);              
  translate(-600, -200); // volvemos al origen para dibujar normalmente
  dibujarFondo();
//circulos con líneas verdes
dibujarEsferas(475, 68);
dibujarEsferas(664, 154);
dibujarEsferas(400, 326);
dibujarEsferas(530, 350);
//círculos con líneas rojas arriba
dibujarEsferas(602, 69);
dibujarEsferas(800, 177);
dibujarEsferas(449, 238);
dibujarEsferas(658, 277);
//círculos que llevan líneas azules arriba
dibujarEsferas(750,57);
dibujarEsferas (770, 323);
dibujarEsferas(558,209);
dibujarEsferas(400, 146);
//líneas arriba de las esferas
dibujarL();
 popMatrix();
   
//la puse al final porque no recordaba si vimos arc() para hacer medios circulos, entonces dibuje el círculo completo y tapé  la mitad con la imagen
  image(Opart, 0, 0, 400, 400); 

}

// que se dibujen esferas simulando un degredé (más oscuro afuera, más claro adentro)
void dibujarEsferas(float circx, float circy){
// función propia con parámetros que no retorna un valor
// for anidado
//condiciona-les
//funciones matemáticas
  float diam= 75;
  float radio= diam/2;
  for (float y=-radio; y<=radio;y++){
    for (float x=-radio; x<=radio; x++){
      float distCentro= dist (0, 0, x, y);
      if( distCentro <= radio){
        float f = map (distCentro, 0, radio, 270, 150);
        float b= map (distCentro, 0, radio, 220, 110);
        float i= map (distCentro, 0, radio, 130, 80);
        
        noStroke();
        fill(f, b, i);
        ellipse(circx + x, circy + y, 5, 5);
      
      }
    }
  }
}
//Que las líneas de cierto color pasen por arriba de cierta esfera
void dibujarLineasSobreEsfera(float cx, float cy, color c, int desfase){
  float diam = 75;
  float radio = diam/2;

  int inicio = int(cy - radio); 
  inicio = inicio - (inicio % 15); // se reddondea al múltiplo de 15 más cercano

  for(int y = inicio; y <= cy + radio; y += 15){
    stroke(c);
    line(cx - radio, y + desfase, cx + radio, y + desfase); 
  }
}
//Presionar tecla para rotar pantalla o para reestablecer el trabajo.
void keyPressed (){
   if(key == 'r' || key == 'R'){
    rotación += PI/2; 
  }
  //volver a estado original
if(key == ' '){   //barras espaciadora
    rotación = 0;
    cambioColor = false;
  }
}

void dibujarL(){
// líneas verdes/amarillas
  dibujarLineasSobreEsfera(475, 68, cambiarColor( 1), 0); 
  dibujarLineasSobreEsfera(664, 154, cambiarColor( 1), 0);
  dibujarLineasSobreEsfera(400, 326, cambiarColor( 1), 0);
  dibujarLineasSobreEsfera(530, 350, cambiarColor( 1), 0);

  // líneas rojas/rosas
  dibujarLineasSobreEsfera(602, 69, cambiarColor(2), 5); 
  dibujarLineasSobreEsfera(800, 177, cambiarColor(2), 5);
  dibujarLineasSobreEsfera(449, 238, cambiarColor(2), 5);
  dibujarLineasSobreEsfera(658, 277, cambiarColor(2), 5);

  // líneas azules/celeste
  dibujarLineasSobreEsfera(750, 57, cambiarColor(3), 10); 
  dibujarLineasSobreEsfera(770, 323, cambiarColor(3), 10);
  dibujarLineasSobreEsfera(558, 209, cambiarColor(3), 10);
  dibujarLineasSobreEsfera(400, 146, cambiarColor(3), 10);
  }
  //líneas del fondo
  void dibujarFondo(){
  //CICLO FOR
   color color1 = cambiarColor(1);
  color color2 = cambiarColor(2);
  color color3 = cambiarColor(3);

  for(int y=0; y<height; y+=15){

    strokeWeight(5);

    stroke(color1);
    line(400,y,800,y);

    stroke(color2);
    line(400,y+5,800,y+5);

    stroke(color3);
    line(400,y+10,800,y+10);
  }
  }
  // Que las líneas cambien de color
 color cambiarColor(int tipoLinea) {
   //FUNCIÓN PROPIA CON PARÁMETROS QUE RETORNA UN VALOR
   if (cambioColor) {
    if (tipoLinea == 3) return color(53, 250, 212);   // amarillo
    if (tipoLinea == 2) return color(255, 108, 236);  // rosa
    return color(250, 231, 53);                       // celeste
  } 
  else {
    if (tipoLinea == 1) return color(0, 255, 0);      // verde
    if (tipoLinea == 2) return color(255, 0, 0);      // rojo
    return color(0, 0, 255);                          // azul
  }
}
//Que se cambie de color al clickear el mouse
void mouseClicked() {
  if (mouseX > width/2) {
    cambioColor = !cambioColor; 
  }
}


    
  

   
