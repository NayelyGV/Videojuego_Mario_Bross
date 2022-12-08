class Esfera
{
 float x, y;
 
 Esfera(float px, float py)
 {
  x=px;
  y=py;
 }
 void avanzar()
 {
   x-=1;
 }
 void dibujar()
 {
   
   esferas1.resize(70,70);
   image(esferas1,x,y);
 }
}
