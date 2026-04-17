//Brisa Idarreta. Legajo: 125598/5
PImage miImagen;
void setup(){
  size(800,400);
  miImagen = loadImage("casablanca.jpg");
}

void draw(){
  colorMode( RGB, 255, 255, 255);
background(165, 205, 255);
  
image(miImagen, 0, 0, 400, 400);
stroke(0);

fill(255);
rect(476, 197, 250, 140);
//ventanas
fill(8, 62, 131);
rect(494, 222, 7, 35);
rect(514, 222, 7, 35);
rect(533, 222, 7, 35);
rect(550, 222, 7, 35);
rect(573, 222, 7, 35);
rect(597, 222, 7, 35);
rect(624, 222, 7, 35);
rect(649, 222, 7, 35);
rect(668, 222, 7, 35);
rect(687, 222, 7, 35);
rect(706, 222, 7, 35);
rect(494, 288, 7, 35);
rect(514, 288, 7, 35);
rect(533, 288, 7, 35);
rect(550, 288, 7, 35);
rect(573, 288, 7, 35);
rect(624, 288, 7, 35);
rect(649, 288, 7, 35);
rect(668, 288, 7, 35);
rect(687, 288, 7, 35);
rect(706, 288, 7, 35);



//puerta
fill(255);
rect(593, 301, 13, 35);
//decoraciones entre ventanas
//a pesar e buscar en la web, no entendí cómo poner medios círculos, por eso hago solo triángulos.
triangle (490, 280, 497.5, 270, 505, 280);
triangle (510, 280, 517.5, 270, 525, 280);
triangle (529, 280, 537.5, 270, 545, 280);
triangle (548, 280, 557.5, 270, 565, 280);
triangle (570, 280, 577.5, 270, 585, 280);
triangle (620, 280, 627.5, 270, 635, 280);
triangle (645, 280, 653.5, 270, 660, 280);
triangle (665, 280, 673.5, 270, 680, 280);
triangle (685, 280, 693.5, 270, 700, 280);
triangle (705, 280, 713.5, 270, 720, 280);
//columnas
 rect(563,201,5,135);
 rect(583,201,5,135);
 rect(613,201,5,135);
 rect(635,201,5,135);
//techo
rect(540, 173, 7, 14);
rect(655, 173, 7, 14);
rect(476, 186, 250, 14);
rect(562,187,78,15);
rect(562, 173,78,15);
triangle(562,187,599, 164, 640,186);
line(599, 119, 599, 164 );
line(599, 202, 599, 266);
rect(595, 266, 10, 16);
fill(245, 0, 37);
rect(599, 123,5,14);
fill(2, 198, 33);
rect( 400,350,400,47);
fill(255);
rect(400, 336, 400, 16);

//arbustos
noStroke();
fill(1,118,19);
ellipse(472,329, 25, 45);
ellipse(490,329, 25, 45);
ellipse(510,329, 25, 45);
ellipse(530,329, 25, 45);
ellipse(550,329, 25, 45);
ellipse(570,329, 25, 45);
ellipse(590,329, 25, 45);
ellipse(610,329, 25, 45);
ellipse(630,329, 25, 45);
ellipse(650,329, 25, 45);
ellipse(670,329, 25, 45);
ellipse(690,329, 25, 45);
ellipse(710,329, 25, 45);
ellipse(730,329, 25, 45);


// fuente

fill(232, 7, 7);
ellipse(614, 375, 303, 25);
fill(173, 255, 245);
ellipse(614, 373, 200, 10);
triangle(601, 377, 618, 377, 609.5, 308);
// árboles
fill(14,100,1);
circle(790, 5, 35);
circle(790, 20, 35);
circle(790, 40, 35);
circle(790, 65, 35);
circle(775, 65, 35);
circle(790, 80, 35);
circle(790, 105, 35);
circle(790, 120, 35);
circle(790, 140, 35);
circle(790, 165, 35);
circle(775, 155, 35);
circle(775, 165, 35);
circle(750, 165, 35);
circle(730, 165, 35);
circle(715, 165, 35);
circle(720, 185, 35);
rect(710, 146, 90,75);
circle(711,218, 35);
circle(731,218, 35);
circle(751,218, 35);
circle(770,218, 35);
circle(711,235, 28);
circle(715,125, 35);
circle(715,140, 35);
circle(730,140, 35);
circle(752,140, 35);
circle(790, 180, 35);
circle(790, 205, 35);
circle(790, 220, 35);
circle(790, 240, 35);
circle(775, 240, 35);
circle(760, 240, 35);
circle(790, 265, 35);
circle(790, 280, 35);

rect(400,0,20, 280);
circle(410, 275, 25);
circle(420, 265, 25);
circle(420, 248, 25);
rect(418, 148,95, 80);
circle(421, 226, 35);
circle(447, 216, 35);
circle(470, 216, 35);
circle(495, 220, 35);
circle(495, 240, 25);
circle(505, 214, 35);
circle(501, 185, 35);
circle(501, 155, 37);
circle(484, 133, 35);
circle(458, 142, 35);
circle(430, 134, 35);
circle(419, 110, 35);
circle(414, 90, 35);
circle(418, 63, 35);
circle(430, 43, 35);
circle(418, 12, 35);



//coordenadas
fill(0);
text( mouseX + " / " + mouseY, mouseX, mouseY );
}
