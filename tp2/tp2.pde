//Introducción a la Programacción para Medios Interactivos
//Comisión 3
//Gusmerotti Matias (Legajo: 119052/5)

PImage img1, img2, img3, img4, img5;
String texto1, texto2, texto3, texto4, texto5, texto6;
int contador;
int estado;
float posX, posY;
PFont miFuente;

//Setup
void setup() {
  frameRate(60/4);
  size(640, 480);
  img1 = loadImage("data/pantalla1.jpg");
  img2 = loadImage("data/pantalla2.jpg");
  img3 = loadImage("data/pantalla3.jpg");
  img4 = loadImage("data/pantalla4.jpg");
  img5 = loadImage("data/pantalla5.jpg");

//Textos:
  texto1 = "“Pulsante” es la reproducción a gran escala de un corazón con un corte transversal con aurículos y ventrículos al descubierto. La estructura mide aproximadamente 1.50 metros x 90 centímetros.";
  texto2 = "Fue construida en base a tela de yeso, gasa médica, lanas y diversos textiles, además de ramas de árboles del Jardín Botánico de la Universidad Austral de Chile (UACh).";
  texto3 = "En su interior tiene más de 300 luces LED RGB y una placa electrónica Arduino. La instalación es acompañada de diseño sonoro y sonificación del pulso, creado por el académico Christian Oyarzún, de la Facultad de Arquitectura y Artes.";
  texto4 = "A través de un sensor de lectura de pulso, los usuarios pueden reproducir sus propias palpitaciones, cuyos ritmos son también exteriorizados a través de luz y color. El proyecto fue desarrollado con recursos del FONDART Nacional en la línea de nuevos medios, y es el resultado de un trabajo conjunto de diversos profesionales de la Universidad Austral de Chile.";
  texto5 = "Fin de la presentación";
  texto6 = "Haz click en el recuadro para reiniciar";
  
  miFuente = loadFont("data/Calibri-Italic-20.vlw");
  textFont( miFuente );
  textAlign(LEFT);

  estado = 1;
  contador = 0;
  posX = 10;
  posY = 400;
}


//Draw
void draw() {
  println("estado="+estado);
  background(0, 255, 0);
  if ( estado == 1 ) {
    //Pantalla 1
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto1, posX, posY, 600, 200);

    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto1, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      estado = 3;
      contador = 0;
      posX = 10;
      posY = 400;
    }
  } else if ( estado == 3 ) {
    
    //Pantalla 2
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto2, posX, posY, 600, 200);

    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto2, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      estado = 5;
      contador = 0;
      posX = 10;
      posY = 360;
    }
  } else if ( estado == 5 ) {

    //Pantalla 3
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto3, posX, posY, 600, 200);

    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 6 ) {
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto3, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      estado = 7;
      contador = 0;
      posX = 20;
      posY = 310;
    }
  } else if ( estado == 7 ) {
  

  //Pantalla 4
  image( img4, 0, 0, width, height);
  fill(255);
  textSize(20);
  text ( texto4, posX, posY, 600, 200);

  contador++;
  }if ( contador>=60) {
    estado++;
    contador = 0;
    } else if (estado == 8) {
    image( img4, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto4, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      estado = 9;
      contador = 0;
      posX= 20;
      posY = 330;
    }
  } else if (estado == 9) {
    background(255, 0, 0);
    image( img5, 0, 0, width, height);
    textSize(48);
    text( texto5, 110, 240, 600, 200);
    textSize(36);
    text (texto6, 50, 400, 600, 200);
    if ( mouseX>250 && mouseX<250+150
      && mouseY >300 && mouseY<300+80 ) {
      fill(255, 0, 0);
    } else {
      fill(200);
    }
    rect( 250, 300, 150, 80);
  }
}


//MousePressed
void mousePressed() {
  if ( estado==9) {
    if ( mouseX>250 && mouseX<250+150
      && mouseY >300 && mouseY<300+80 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 10;
    posY = 400;;
  }
}
