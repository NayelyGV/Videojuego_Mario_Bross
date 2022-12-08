//Elaborado por Nayely Giles Valdez y Mauricio Paravicini
PrintWriter output;

//import processing.sound.*;
//SoundFile musica_menu;

Piso pi= new Piso();
ArrayList <Mario> marios= new ArrayList<Mario>();
ArrayList <Obstaculos> obstaculos= new ArrayList<Obstaculos>();
ArrayList <Semilla> semillas= new ArrayList<Semilla>();
ArrayList <BaseXI> basesxi= new ArrayList<BaseXI>();
ArrayList <Esfera> esferas= new ArrayList<Esfera>();
ArrayList <Enemigo> enemigos= new ArrayList<Enemigo>();
ArrayList <Enemigo1> enemigos1= new ArrayList<Enemigo1>();

PImage bg2, coin, pipe, ground, ground2;
PImage bg, flyright, flyleft, fastleft, fastleft2;
PImage fastleft3, fastright, fastright2, fastright3;
PImage rightup, leftup, leftjump, rightjump, leftfall, rightfall;
PImage duckleft, duckright, marioleft, mariowalkleft;
PImage mariowalkleft2, marioright, mariowalkright, mariowalkright2;
PImage LtoR, RtoL;
PImage mario_retorna, krilin, gameover, enemigo, enemigo1;
PImage fm, fondo, escama, esferas1, mario, instrucciones, fin, es_dragon, ladrillo;


boolean keyup = false;
boolean keyright = false;
boolean keyleft = false;
boolean keydown = false;
boolean keyuplook = false;
boolean keyfast = false;
boolean keykrilin = false;
boolean keymario = false;

float ipx=100, ipy=670, speed=0, slow = 0, jump, g=670;
int PointsCounter = 0, LR =0, once=1, jumpon=0, jumptime=0, onejump=0, stime=0, i=0;
int estado=0;
int x = 800;
int y = 600;
int puntos=0;
int o=800; //Pantalla2
int p=1600;//Pantalla3
int q=2400;//Pantalla4
int r=3200;//Pantalla5
int s=25; //tamaño del cuadrado
int b=5;//ancho de la semilla
int c=10;//alto de la semilla

void setup() {

  size(800, 600);
  //musica_menu= new SoundFile(this, "musica_fon.mp3");
  //musica_menu.play();
  fm=loadImage("db1.jpg");
  mario=loadImage("mario_photo.jpg");
  fondo=loadImage("cielo.png");
  escama=loadImage("escama.png");
  fin=loadImage("fin.jpg");
  esferas1=loadImage("esferas.png");
  ladrillo=loadImage("ladrillo5.png");
  gameover=loadImage("mario_gameover.jpg");
  es_dragon=loadImage("esferas.png");
  instrucciones=loadImage("INSTRUCCIONES1.png");
  marioleft = loadImage("marioleft.png");
  mariowalkleft = loadImage("mariowalkleft.png");
  mariowalkleft2 = loadImage("mariowalkleft2.png");
  marioright = loadImage("marioright.png");
  mariowalkright = loadImage("mariowalkright.png");
  mariowalkright2 = loadImage("mariowalkright2.png");
  LtoR = loadImage("LtoR.png");
  RtoL = loadImage("RtoL.png");
  duckleft = loadImage("duckleft.png");
  duckright = loadImage("duckright.png");
  leftjump = loadImage("leftjump.png");
  rightjump = loadImage("rightjump.png");
  leftfall = loadImage("leftfall.png");
  rightfall = loadImage("rightfall.png");
  rightup = loadImage("rightup.png");
  leftup = loadImage("leftup.png");
  fastleft = loadImage("fastleft.png");
  fastleft2 = loadImage("fastleft2.png");
  fastleft3 = loadImage("fastleft3.png");
  fastright = loadImage("fastright.png");
  fastright2 = loadImage("fastright2.png");
  fastright3 = loadImage("fastright3.png");
  flyright = loadImage("flyright.png");
  flyleft = loadImage("flyleft.png");
  mario_retorna=loadImage("marioregreso.jpg");
  krilin=loadImage("krilin.jpg");
  enemigo=loadImage("enemigo8.png");
  enemigo1=loadImage("enemigo9.png");

  marios.add(new Mario(100, 510));
  esferas.add(new Esfera(3800, 480));

  for (int i=0; i<4000; i++)
  {
    enemigos.add(new Enemigo(i+random(0, 4000), random(200, 510)));
    i=i+int(random(70, 200));
  }
  for (int i=0; i<4000; i++)
  {
    enemigos1.add(new Enemigo1(i, random(200, 510)));
    i=i+int(random(70, 200));
  }


  //BASEXI--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  basesxi.add(new BaseXI(100, 430, s));
  basesxi.add(new BaseXI(272, 430, 125));
  basesxi.add(new BaseXI(322, 330, s));
  basesxi.add(new BaseXI(503, 480, s));
  basesxi.add(new BaseXI(654, 455, s));
  basesxi.add(new BaseXI(2+o, 445, s));
  basesxi.add(new BaseXI(118+o, 425, s));
  basesxi.add(new BaseXI(265+o, 425, s));
  basesxi.add(new BaseXI(358+o, 405, s));
  basesxi.add(new BaseXI(543+o, 430, 75));
  basesxi.add(new BaseXI(618+o, 330, s));
  basesxi.add(new BaseXI(643+o, 230, 125));
  basesxi.add(new BaseXI(82+p, 230, 100));
  basesxi.add(new BaseXI(182+p, 330, s));
  basesxi.add(new BaseXI(207+p, 430, 50));
  basesxi.add(new BaseXI(362+p, 430, s));
  basesxi.add(new BaseXI(462+p, 430, s));
  basesxi.add(new BaseXI(562+p, 430, s));
  basesxi.add(new BaseXI(462+p, 330, s));
  basesxi.add(new BaseXI(675+p, 430, s));
  basesxi.add(new BaseXI(700+p, 330, 50));
  basesxi.add(new BaseXI(q, 330, 25));
  basesxi.add(new BaseXI(25+q, 430, 50));
  basesxi.add(new BaseXI(105+q, 515, 100)); 
  basesxi.add(new BaseXI(130+q, 490, 75));
  basesxi.add(new BaseXI(155+q, 465, 50));
  basesxi.add(new BaseXI(180+q, 440, s));
  basesxi.add(new BaseXI(265+q, 515, 100));
  basesxi.add(new BaseXI(265+q, 490, 75));
  basesxi.add(new BaseXI(265+q, 465, 50));
  basesxi.add(new BaseXI(265+q, 440, s));
  basesxi.add(new BaseXI(435+q, 515, 125));
  basesxi.add(new BaseXI(460+q, 490, 100));
  basesxi.add(new BaseXI(485+q, 465, 75));
  basesxi.add(new BaseXI(510+q, 440, 50));
  basesxi.add(new BaseXI(658+q, 515, 125));
  basesxi.add(new BaseXI(658+q, 490, 100));
  basesxi.add(new BaseXI(658+q, 465, 75)); 
  basesxi.add(new BaseXI(658+q, 440, 50));
  basesxi.add(new BaseXI(185+r, 515, 250));
  basesxi.add(new BaseXI(210+r, 490, 225));
  basesxi.add(new BaseXI(235+r, 465, 200));
  basesxi.add(new BaseXI(260+r, 440, 175));
  basesxi.add(new BaseXI(285+r, 415, 150));
  basesxi.add(new BaseXI(310+r, 390, 125));
  basesxi.add(new BaseXI(335+r, 365, 100));
  basesxi.add(new BaseXI(360+r, 340, 75));
  basesxi.add(new BaseXI(385+r, 315, 50));
  basesxi.add(new BaseXI(410+r, 290, s));
  //-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  //OBSTACULOS---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  //PANTALLA1
  obstaculos.add(new Obstaculos(100, 430, s, s));
  for (int i=0; i<125; i++)
  {
    obstaculos.add(new Obstaculos(i+272, 430, s, s));
    i=i+25;
  }
  obstaculos.add(new Obstaculos(322, 330, s, s));
  obstaculos.add(new Obstaculos(503, 480, s, s+35));
  obstaculos.add(new Obstaculos(654, 455, s, s+60));

  //PANTALLA2
  obstaculos.add(new Obstaculos(2+o, 445, s, s+70));
  obstaculos.add(new Obstaculos(118+o, 425, s, s+90));
  obstaculos.add(new Obstaculos(265+o, 425, s, s+90));
  obstaculos.add(new Obstaculos(358+o, 405, s, s+110));
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+543+o, 430, s, s));
    i=i+25;
  }
  obstaculos.add(new Obstaculos(i+543+o, 330, s, s));
  for ( i=0; i<125; i++)
  {
    obstaculos.add(new Obstaculos(i+643+o, 230, s, s));
    i=i+25;
  }
  //PANTALLA3
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+82+p, 230, s, s));
    i=i+25;
  }
  obstaculos.add(new Obstaculos(182+p, 330, s, s));
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+207+p, 430, s, s));
    i=i+25;
  }
  for ( i=0; i<300; i++)
  {
    obstaculos.add(new Obstaculos(i+362+p, 430, s, s));
    i=i+100;
  }
  obstaculos.add(new Obstaculos(462+p, 330, s, s));
  obstaculos.add(new Obstaculos(675+p, 430, s, s));
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+700+p, 330, s, s));
    i=i+25;
  }
  //PANTALLA4
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+q, 330, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+25+q, 430, s, s));
    i=i+25;
  }
  //GRADAS1.1
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+105+q, 515, s, s));
    i=i+25;
  }
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+130+q, 490, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+155+q, 465, s, s));
    i=i+25;
  }
  obstaculos.add(new Obstaculos(180+q, 440, s, s));
  //GRADAS1.2
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+265+q, 515, s, s));
    i=i+25;
  }
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+265+q, 490, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+265+q, 465, s, s));
    i=i+25;
  }
  obstaculos.add(new Obstaculos(265+q, 440, s, s));
  //GRADAS.1
  for ( i=0; i<125; i++)
  {
    obstaculos.add(new Obstaculos(i+435+q, 515, s, s));
    i=i+25;
  }
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+460+q, 490, s, s));
    i=i+25;
  }
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+485+q, 465, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+510+q, 440, s, s));
    i=i+25;
  }
  //GRADAS2.2
  for ( i=0; i<125; i++)
  {
    obstaculos.add(new Obstaculos(i+658+q, 515, s, s));
    i=i+25;
  }
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+658+q, 490, s, s));
    i=i+25;
  }
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+658+q, 465, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+658+q, 440, s, s));
    i=i+25;
  }

  //PANTALLA5
  //GRADAS FINAL
  for ( i=0; i<250; i++)
  {
    obstaculos.add(new Obstaculos(i+185+r, 515, s, s));
    i=i+25;
  }
  for ( i=0; i<225; i++)
  {
    obstaculos.add(new Obstaculos(i+210+r, 490, s, s));
    i=i+25;
  }
  for ( i=0; i<200; i++)
  {
    obstaculos.add(new Obstaculos(i+235+r, 465, s, s));
    i=i+25;
  }
  for ( i=0; i<175; i++)
  {
    obstaculos.add(new Obstaculos(i+260+r, 440, s, s));
    i=i+25;
  }
  for ( i=0; i<150; i++)
  {
    obstaculos.add(new Obstaculos(i+285+r, 415, s, s));
    i=i+25;
  }
  for ( i=0; i<125; i++)
  {
    obstaculos.add(new Obstaculos(i+310+r, 390, s, s));
    i=i+25;
  }
  for ( i=0; i<100; i++)
  {
    obstaculos.add(new Obstaculos(i+335+r, 365, s, s));
    i=i+25;
  }
  for ( i=0; i<75; i++)
  {
    obstaculos.add(new Obstaculos(i+360+r, 340, s, s));
    i=i+25;
  }
  for ( i=0; i<50; i++)
  {
    obstaculos.add(new Obstaculos(i+385+r, 315, s, s));
    i=i+25;
  }

  obstaculos.add(new Obstaculos(i+360+r, 290, s, s));
  //-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  //PREMIO-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  for (int i=0; i<120; i++)
  {
    semillas.add(new Semilla(i+270, 410, b, c));
    i=i+28;
  }

  semillas.add(new Semilla(330, 310, b, c));
  for (int i=0; i<109; i++)
  {
    semillas.add(new Semilla(i+690, 500, b, c));
    i=i+28;
  }
  for (int i=0; i<109; i++)
  {
    semillas.add(new Semilla(i+150+o, 450, b, c));
    i=i+28;
  }
  for (int i=0; i<70; i++)
  {
    semillas.add(new Semilla(i+545+o, 390, b, c));
    i=i+28;
  }
  for (int i=0; i<320; i++)
  {
    semillas.add(new Semilla(i+650+o, 180, b, c));
    i=i+28;
  }

  semillas.add(new Semilla(185+p, 310, b, c));
  for (int i=0; i<30; i++)
  {
    semillas.add(new Semilla(i+210+p, 410, b, c));
    i=i+28;
  }
  for (int i=0; i<300; i++)
  {
    semillas.add(new Semilla(i+370+p, 410, b, c));
    i=i+100;
  }

  semillas.add(new Semilla(i+415+p, 310, b, c));
  semillas.add(new Semilla(i+630+p, 410, b, c));

  for (int i=0; i<200; i++)
  {
    semillas.add(new Semilla(i+710+p, 310, b, c));
    i=i+28;
  }
  for (int i=0; i<30; i++)
  {
    semillas.add(new Semilla(i+30+q, 410, b, c));
    i=i+28;
  }
  for (int i=0; i<50; i++)
  {
    semillas.add(new Semilla(i+215+q, 500, b, c));
    i=i+28;
  }
  for (int i=0; i<80; i++)
  {
    semillas.add(new Semilla(i+575+q, 450, b, c));
    i=i+28;
  }
  for (int i=0; i<80; i++)
  {
    semillas.add(new Semilla(i+575+q, 475, b, c));
    i=i+28;
  }
  for (int i=0; i<80; i++)
  {
    semillas.add(new Semilla(i+575+q, 500, b, c));
    i=i+28;
  }
  for (int i=0; i<80; i++)
  {
    semillas.add(new Semilla(i+575+q, 525, b, c));
    i=i+28;
  }
  //-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
}

void draw()
{
  if (estado==0) {
    image(fm, 0, 0);
    fill(0); 
    textSize(28);
    rect(520, 90, 265, 160);
    fill(255);
    stroke(255);
    strokeWeight(5);
    text("Seleccione una ", 540, 120);
    text("opcion: ", 540, 150);
    text("1.- Jugar   ", 540, 180);
    text("2.- Instrucciones  ", 540, 210);
    text("3.- Salir", 540, 240);
  }

  if (estado==1) {
    fondo.resize(800, 540);

    image(fondo, 0, 0);

    pi.dibujar();
    comersemillas();
    comeresferas();
    gameover();
    gameover1();
    for (Mario ma : marios)
    {
      ma.caminar();
      ma.avanzar();
    }
    for (BaseXI xi : basesxi)
    {
      xi.dibujar();
      xi.avanzar();
    }
    for (Obstaculos ob : obstaculos)
    {
      ob.avanzar();
      ob.dibujar();
    }
    for (Semilla se : semillas)
    {
      se.dibujar();
      se.avanzar();
    }
    for (Esfera es : esferas)
    {
      es.dibujar();
      es.avanzar();
    }
    for (Enemigo en : enemigos)
    {
      en.dibujar();
      en.avanzar();
    }
    for (Enemigo1 en1 : enemigos1)
    {
      en1.dibujar();
      en1.avanzar();
    }

    //COLISION
    for (Mario ma : marios) {
      boolean sosteniendo = false;

      for (BaseXI baxi : basesxi) {
        if (ma.x > baxi.x && ma.x < baxi.x+baxi.ancho && ma.y < baxi.y && ma.y > baxi.y-30) {
          ma.y = baxi.y-28 ;
          sosteniendo = true;
        }
      }
      if (sosteniendo) {
        ma.cayendo = false;
      } else {
        ma.cayendo = true;
      }
    }
    //int segundos=second();
    ////float num = 1;
    //int temp=360;
    fill(0);
    //segundos=temp-segundos;
    textSize(40);
    text("Score: " +puntos, 50, 50);
    //text("Time:"+" "+segundos, 50, 90);
  }

  if (estado==2)
  {
    mario.resize(800, 600);
    image(mario, 0, 0);

    text("Presiona Enter para continuar...", 10, 25);
    text("0.- Volver", 650, 25);
  }
  if (estado==3)
  {
    instrucciones.resize(800, 600);
    image(instrucciones, 0, 0);
    text("0.- Volver", 650, 25);
  }
  if (estado==4)
  {
    fin.resize(800, 600);
    image(fin, 0, 0);
    if (keyCode==75) // opcion 1
    {
      krilin.resize(800, 600);
      image(krilin, 0, 0);
    }
    if (keyCode==77 ) // opcion 2
    {
      mario_retorna.resize(800, 600);
      image(mario_retorna, 0, 0);
    }
  }
  if (estado==5)
  {
    gameover.resize(800, 600);
    image(gameover, 0, 0);
    if (keyCode==82)
    {

      estado=1;
    }
  }
}


void keyPressed() {

  if (key == 'a' || key == 'A') keyup = true; 
  if (key == 's' || key == 'S') keyfast = true; 
  if (key == CODED) 
  {
    if (keyCode == UP) keyuplook = true; 
    if (keyCode == DOWN) keydown = true; 
    if (keyCode == LEFT) keyleft = true; 
    if (keyCode == RIGHT) keyright = true;
  }
  if (keyCode==49) // opcion 1
  {
    pi.dibujar();
    estado=2;
  }
  if (keyCode==10)
  {
    estado=1;
  }
  if (keyCode==32)
  {
    estado=1;
  }
  if (keyCode==50) // opcion 2
  {
    estado=3;
  }
  if (keyCode==48 || keyCode==96) // opcion 2
  {
    estado=0;
  }

  if (keyCode== 99 || keyCode ==51  ) // opcion 3
  {
    exit();
  }
}


void keyReleased() {

  if (key == 'a'||key == 'A') keyup = false;
  if (key == 's'||key == 'S') keyfast = false;
  if (key == CODED) 
  {
    if (keyCode == UP) keyuplook = false; 
    if (keyCode == DOWN) keydown = false; 
    if (keyCode == LEFT) keyleft = false; 
    if (keyCode == RIGHT) keyright = false;
  }
}


void comersemillas()
{
  ArrayList<Mario> marioElim = new ArrayList<Mario>();
  ArrayList<Semilla> semillaElim = new ArrayList<Semilla>();
  for (Mario ma : marios)
  {
    for (Semilla se : semillas)
    {
      float dist=sqrt(pow(se.x-ma.x, 2)+ pow(se.y-ma.y, 2));
      if (dist<25)
      {
        marioElim.add(ma);
        semillaElim.add(se);
        puntos=puntos + int(random(1, 5));
      }
    }
  }
  semillas.removeAll(semillaElim);// el de mario seria de
}


void comeresferas()
{
  ArrayList<Esfera> esferasElim = new ArrayList<Esfera>();
  for (Mario ma : marios)
  {
    for (Esfera es1 : esferas)
    {
      float dista=sqrt(pow(es1.x-ma.x, 2)+ pow(es1.y-ma.y, 2));
      if (dista<25)
      {
        estado=4;
      }
    }
  }
  semillas.removeAll(esferasElim);// el de mario seria de
}


void gameover()
{
  ArrayList<Mario> marioElim = new ArrayList<Mario>();
  for (Mario ma : marios)
  {
    for (Enemigo en : enemigos)
    {
      float dista=sqrt(pow(en.x-ma.x, 2)+ pow(en.y-ma.y, 2));
      if (dista<25)
      {
        estado=5;
      }
    }
  }
  enemigos.removeAll(marioElim);// el de mario seria de
}
void gameover1()
{
  ArrayList<Mario> marioElim = new ArrayList<Mario>();
  for (Mario ma : marios)
  {
    for (Enemigo1 en1 : enemigos1)
    {
      float dista=sqrt(pow(en1.x-ma.x, 2)+ pow(en1.y-ma.y, 2));
      if (dista<25)
      {
        estado=5;
      }
    }
  }
  enemigos1.removeAll(marioElim);// el de mario seria de
}
