class Semilla {

  float x=0;
  float y=0;
  float ancho=10;
  float alto=12;
  Semilla(float px, float py, float pancho, float palto)
  {
    x=px;
    y=py;
    ancho=pancho;
    alto=palto;
  }
 
  void avanzar()
  {
    x-=3;
  }
  void dibujar()
  {
    strokeWeight(0.5);

    fill(#3AFF00);
    stroke(0);

    ellipse(x, y, ancho, alto);
  }

 
  }
