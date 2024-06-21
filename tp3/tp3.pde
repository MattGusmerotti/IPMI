//Link: https://youtu.be/wTQlCgtH97A
//Gusmerotti Matias Oscar
//Comisión 3
//Legajo: 119052/5


PImage foto;
int contador;
int estado;

void setup(){
 size(800,400);
 foto = loadImage("img.png");
 frameRate(1);
 estado = 1;
 contador = 0;
}

void draw(){
 println("estado="+estado);
 BorrarFondo();
 if ( estado == 1) {
   image (foto,0,0);
   DibujarImagen();
   contador++;
    if ( contador>=3 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    image( foto, 0, 0, 1, 1);
    DibujarImagenColor();
 image(foto,0,0);
 }
}
