class Enemigo
{
  float x, y;

  Enemigo(float px, float py)
  {
    x=px;
    y=py;
  }
  void avanzar()
  {
    x-=2;
  }

  void dibujar()
  {

    enemigo.resize(50, 50);
    image(enemigo, x, y);
  }
}
class Enemigo1
{
  float x, y;

  Enemigo1(float px, float py)
  {
    x=px;
    y=py;
  }
  void avanzar()
  {
    x+=3;
  }

  void dibujar()
  {

    enemigo1.resize(50, 50);
    image(enemigo1, x, y);
  }
}
