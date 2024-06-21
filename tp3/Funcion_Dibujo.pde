void DibujarImagen(){
  for (int i=width; i>0;i-=40){
    for (int j=height; j>0;j-=40){
      if (esPar(i+j)){
        fill(0);
      } else {
          fill(255);
        }   
    rect(width/2, 0,i,j);
    }
  }  
  for (int k=width; k>0;k-=40){
    for (int l=height; l>0;l-=40){
      if (esPar(k+l)){
        fill(0);
      } else {
        fill(255);
        }    
    ellipse(k+20,l-20,17,17);
    image(foto,0,0);
    }
  }  
}

void DibujarImagenColor(){
  for (int i=width; i>0;i-=40){
      float r1 = random(0,255); 
      float r2 = random(0,255);
      float r3 = random(0,255);
      color c1 = color(r1,r2,r3);
      color c2 = color(r3,r2,r1);
    for (int j=height; j>0;j-=40){
      if (esPar(i+j)){
        fill(c1);
      } else {
          fill(c2);
        }   
    rect(width/2, 0,i,j);
    }
  }  
  for (int k=width; k>0;k-=40){
      float r1 = random(0,255); 
      float r2 = random(0,255);
      float r3 = random(0,255);
      color c1 = color(r1,r2,r3);
      color c2 = color(r3,r2,r1);
    for (int l=height; l>0;l-=40){
      if (esPar(k+l)){
        fill(c1);
      } else {
          fill(c2);
        }    
    ellipse(k+20,l-20,17,17);
     image(foto,0,0);
    }
  }
}
