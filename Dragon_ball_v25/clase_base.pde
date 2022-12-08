class BaseXI
{ 
  float x, y, ancho;
  float velocidadX=3;
  BaseXI(float px, float py, float pancho)
  {
    x=px;
    y=py;
    ancho=pancho;
  }
  void avanzar()
  {

    x=x-velocidadX;
   
  }
  void dibujar()
  {
    fill(255);
   noStroke();
    line(x, y, x + ancho, y);
    
  }
}
class BaseYI
{ 
  float x, y, alto;
  float velocidadX=1;
  BaseYI(float px, float py, float palto)
  {
    x=px;
    y=py;
    alto=palto;
  }
  void avanzar()
  {

    x=x-velocidadX;
   
  }
  void dibujar()
  {
    fill(255);
   stroke(3);
    line(x, y, x , y+alto);
    
  }
}
