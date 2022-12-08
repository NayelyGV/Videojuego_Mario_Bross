class Piso{

  float a=0;
  float b=0;
  float c=0;
  float d=0;
  float e=0;
  float f=0;
  float g=0;

  int o=800; //Pantalla2
  int p=1600;//Pantalla3
  int q=2400;//Pantalla4
  int r=3200;//Pantalla5
  int s=25; //tamaño del cuadrado

  float posicionX=0;//Obstaculos x
  float velocidadX=6;

  void dibujar()
  {
    strokeWeight(1);
    fill(#500000);
    stroke(0);
    
    for (a=0; a<800; a++) 
    {
      image(escama,posicionX+a,540);
      image(escama,posicionX+a,570);
      a=a+27;
    }
  }
}
class Obstaculos {
  float x=0;
  float y=0;
  float ancho=0;
  float alto=0;
  
  int o=800; //Pantalla2
  int p=1600;//Pantalla3
  int q=2400;//Pantalla4
  int r=3200;//Pantalla5
  int s=25; //tamaño del cuadrado
  Obstaculos(float px, float py,float pancho, float palto) {
    x = px;
    y = py;
   ancho = pancho;
   alto = palto;
  }

  void avanzar() {
    x -= 3;
  }
  void dibujar() {
   
    //Pantalla1
    fill(#FFF300);
    stroke(0);
    ladrillo.resize(26,26);
image(ladrillo,x,y);
    //rect(x, y, ancho, alto);
  }
}

//class Obstaculos {
//  float x, y, ancho, vel;
//  Obstaculos(float px, float py, float pancho, float pvel) {
//    x = px;
//    y = py;
//    ancho = pancho;
//    vel = pvel;
//  }
//  int o=800; //Pantalla2
//  int p=1600;//Pantalla3
//  int q=2400;//Pantalla4
//  int r=3200;//Pantalla5
//  int s=25; //tamaño del cuadrado

//  void avanzar() {
//    x -= vel;
//  }
//  void dibujar() {
   
//    //Pantalla1
//    fill(#FFF300);
//    stroke(0);

//    rect(x+100, y+430, s, s);
//    rect(x+272, y+430, s, s);
//    rect(x+297, y+430, s, s);
//    rect(x+322, y+430, s, s);
//    rect(x+347, y+430, s, s);
//    rect(x+372, y+430, s, s);

//    rect(x+322, y+330, s, s);

//    rect(x+503, y+480, s, 60);

//    rect(x+654, y+455, s, 85);


//    //Pantalla2

//    rect(x+2+o, y+445, s, 95);

//    rect(x+118+o, y+425, s, 115);
//    rect(x+265+o, y+425, s, 115);

//    rect(x+358+o, y+405, s, 135);


//    rect(x+543+o, y+430, s, s);
//    rect(x+568+o, y+430, s, s);
//    rect(x+593+o, y+430, s, s);

//    rect(x+618+o, y+330, s, s);

//    rect(x+643+o, y+230, s, s);
//    rect(x+668+o, y+230, s, s);
//    rect(x+693+o, y+230, s, s);
//    rect(x+718+o, y+230, s, s);
//    rect(x+743+o, y+230, s, s);


//    //Pantalla3

//    rect(x+82+p, y+230, s, s);
//    rect(x+107+p, y+230, s, s);
//    rect(x+132+p, y+230, s, s);
//    rect(x+157+p, y+230, s, s);

//    rect(x+182+p, y+330, s, s);


//    rect(x+207+p, y+430, s, s);
//    rect(x+232+p, y+430, s, s);


//    rect(x+362+p, y+430, s, s);
//    rect(x+462+p, y+430, s, s); 
//    rect(x+562+p, y+430, s, s);

//    rect(x+462+p, y+330, s, s);

//    rect(x+675+p, y+430, s, s);

//    rect(x+700+p, y+330, s, s);
//    rect(x+725+p, y+330, s, s);

//    //Pantalla4

//    rect(x+q, y+330, s, s);
//    rect(x+25+q, y+330, s, s);
//    rect(x+50+q, y+330, s, s);
//    rect(x+75+q, y+330, s, s);

//    rect(x+25+q, y+430, s, s);
//    rect(x+50+q, y+430, s, s);
//    //gradas1.1
//    rect(x+105+q, y+515, s, s);
//    rect(x+130+q, y+515, s, s);
//    rect(x+155+q, y+515, s, s);
//    rect(x+180+q, y+515, s, s);
//    rect(x+130+q, y+490, s, s);
//    rect(x+155+q, y+490, s, s);
//    rect(x+180+q, y+490, s, s);
//    rect(x+155+q, y+465, s, s);
//    rect(x+180+q, y+465, s, s);
//    rect(x+180+q, y+440, s, s);
//    //gradas1.2
//    rect(x+265+q, y+515, s, s);
//    rect(x+290+q, y+515, s, s);
//    rect(x+315+q, y+515, s, s);
//    rect(x+340+q, y+515, s, s);
//    rect(x+265+q, y+490, s, s);
//    rect(x+290+q, y+490, s, s);
//    rect(x+315+q, y+490, s, s);
//    rect(x+265+q, y+465, s, s);
//    rect(x+290+q, y+465, s, s);
//    rect(x+265+q, y+440, s, s);
//    //gradas2.1
//    rect(x+435+q, y+515, s, s);
//    rect(x+460+q, y+515, s, s);
//    rect(x+485+q, y+515, s, s);
//    rect(x+510+q, y+515, s, s);
//    rect(x+535+q, y+515, s, s);
//    rect(x+460+q, y+490, s, s);
//    rect(x+485+q, y+490, s, s);
//    rect(x+510+q, y+490, s, s);
//    rect(x+535+q, y+490, s, s);
//    rect(x+485+q, y+465, s, s);
//    rect(x+510+q, y+465, s, s);
//    rect(x+535+q, y+465, s, s);
//    rect(x+510+q, y+440, s, s);
//    rect(x+535+q, y+440, s, s);
//    //gradas2.2
//    rect(x+658+q, y+515, s, s);
//    rect(x+683+q, y+515, s, s);
//    rect(x+708+q, y+515, s, s);
//    rect(x+733+q, y+515, s, s);
//    rect(x+758+q, y+515, s, s);
//    rect(x+658+q, y+490, s, s);
//    rect(x+683+q, y+490, s, s);
//    rect(x+708+q, y+490, s, s);
//    rect(x+733+q, y+490, s, s);
//    rect(x+658+q, y+465, s, s);
//    rect(x+683+q, y+465, s, s);
//    rect(x+708+q, y+465, s, s);
//    rect(x+658+q, y+440, s, s);
//    rect(x+683+q, y+440, s, s);


//    //Pantalla5

//    //gradas final
//    rect(x+360+r, y+515, s, s);
//    rect(x+335+r, y+515, s, s);
//    rect(x+310+r, y+515, s, s);
//    rect(x+285+r, y+515, s, s);
//    rect(x+260+r, y+515, s, s);
//    rect(x+235+r, y+515, s, s);
//    rect(x+210+r, y+515, s, s);
//    rect(x+185+r, y+515, s, s);
   
//    rect(x+360+r, y+490, s, s);
//    rect(x+335+r, y+490, s, s);
//    rect(x+310+r, y+490, s, s);
//    rect(x+285+r, y+490, s, s);
//    rect(x+260+r, y+490, s, s);
//    rect(x+235+r, y+490, s, s);
//    rect(x+210+r, y+490, s, s);
   
//    rect(x+360+r, y+465, s, s);
//    rect(x+335+r, y+465, s, s);
//    rect(x+310+r, y+465, s, s);
//    rect(x+285+r, y+465, s, s);
//    rect(x+260+r, y+465, s, s);
//    rect(x+235+r, y+465, s, s);
  
//    rect(x+360+r, y+440, s, s);
//    rect(x+335+r, y+440, s, s);
//    rect(x+310+r, y+440, s, s);
//    rect(x+285+r, y+440, s, s);
//    rect(x+260+r, y+440, s, s);
 
//    rect(x+360+r, y+415, s, s);
//    rect(x+335+r, y+415, s, s);
//    rect(x+310+r, y+415, s, s);
//    rect(x+285+r, y+415, s, s);

//    rect(x+360+r, y+390, s, s);
//    rect(x+335+r, y+390, s, s);
//    rect(x+310+r, y+390, s, s);

//    rect(x+360+r, y+365, s, s);
//    rect(x+335+r, y+365, s, s);
  
//    rect(x+360+r, y+340, s, s);
   
//  }
  
//}
