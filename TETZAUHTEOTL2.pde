PFont font1, font2, font3;
int x,y;
int a=0;
int j1,j2;
Poderes tezcal, quetzal, huitzil, xipetotec, kik;
int turno=1;
float vida1, vida2;
float ataque1, ataque2;
int ganador;
float plus1, plus2;


class Poderes{
 String nombre;
 int ataque;
 int defensa;
 int x, y;   
 int dios;
 
 Poderes(String nombre_, int ataque_, int x_, int y_, int defensa_, int dios_){
 nombre = nombre_;
 ataque = ataque_;
 defensa = defensa_;
 dios = dios_;
x= x_;
y=y_;

}
}
 
 
void setup(){
size (900, 750);
tezcal = new Poderes("tezcal", 100, 450,450, 100, 1);
quetzal = new Poderes("quetzal", 100, 200, 200, 100, 2);
huitzil = new Poderes("huitzil", 100, 700,700, 100, 3);
xipetotec = new Poderes("xipetotec", 100, 900, 900, 100, 4);
kik = new Poderes("kik", 100, 600, 600, 100, 5);


}

void draw(){

background(255);



if (a==0)
{
  println (a);
   pantallaUno();
   if ((mousePressed) && (mouseX > 390) && (mouseX<390+120) && (mouseY>370) && (mouseY<370+50)){
   a=1;
   println (a);
}
}
if (a==1)
{
  pantallaPersonajes();
mouseClicked();
 tezcal(450,450);
    quetzal(200,200);
    huitzil(700,700);
    xipetotec(900,900);
   kik(600,600);
if ((j1!=0 && j2!=0) &&(j1!=j2)){
  a=2;
}
}

if(a==2){
 pantallaPelea();
 if (vida1<=0 || vida2<=0){
 a=3;
 }
}
 
if (a==3){
  pantallaFin();
 
  if (vida1<=0){
  ganador= j2;
  }
  else if (vida2<=0){
  ganador= j1;
  }
  
     if (ganador==j1){
       if(j1==1){
   quetzal(510,500);
   fill(255);

   text("QUETZALCOATL, GRAN SERPIENTE EMPLUMADA, REGIDOR DEL OESTE!", 20,650);
   }
   else if(j1==2){
   huitzil (475,675);
     fill(255);
   text("HUITZILOPOCHTLI, AVE IZQUIERDA, DIOS DE LA GUERRA!", 20,650);
   }
   else if(j1==3){
   tezcal (550,425);
     fill(255);
      text("TEZCATLIPOCA, SEÑOR DEL CIELO Y DE LA TIERRA, DUEÑO DE LAS BATALLAS!", 20,650);
   }
   else if (j1==4){
   xipetotec (850,1200);
     fill(255);
         text("XIPETOTEC, RENOVACIÓN, ENCARGADO DEL ESTE, POR DONDE SALE EL SOL.", 20,650);
   }
   else if (j1==5){  
   kik (225,900);
     fill(255);
            text("KILIKONETL, NUEVO Y VIEJO, HAMBRE DE PODER.", 15,650);
   }
 }
  else if (ganador==j2){
       if(j2==1){
   quetzal(510,500);
     fill(255);
   text("QUETZALCOATL, GRAN SERPIENTE EMPLUMADA, REGIDOR DEL OESTE!", 20,650);
   }
   else if(j2==2){
   huitzil (475,675);
     fill(255);
      text("HUITZILOPOCHTLI, AVE IZQUIERDA, DIOS DE LA GUERRA!", 20,650);
   }
   else if(j2==3){
   tezcal (575,425);
     fill(255);
         text("TEZCATLIPOCA, SEÑOR DEL CIELO Y DE LA TIERRA, DUEÑO DE LAS BATALLAS!", 15,650);
   }
   else if (j2==4){
   xipetotec (850, 1200);
     fill(255);
            text("XIPETOTEC, RENOVACIÓN, ENCARGADO DEL ESTE, POR DONDE SALE EL SOL.", 20,650);;
   }
   else if (j2==5){
   kik (225,900);
     fill(255);
            text("KILIKONETL, NUEVO Y VIEJO, HAMBRE DE PODER.", 15,650);

   }
 }
if (keyPressed && (key=='n')){
a=0;
j1=0;
j2=0;
}
}
}



void pantallaUno(){
  if ((a==0)&&(j1==0)&&(j2==0)){
      background (189);

  fill(126);
rect(165, 180, 600, 120, 10);
  fill(255,245,149);
rect(240, 200, 450, 80, 7);
noStroke();
 fill(123);
 rect(387, 370, 120, 50); //AQUI ESTÁAAAAAAAAAAAAAAAAAAAA
 noStroke();
   fill(150);
rect(245, 600, 400, 30);
   fill(123);//
rect(272, 570, 350, 30);
  fill(150);
rect(293, 540, 300, 30);
  fill(123);
rect(322, 510, 250, 30);
  fill(150);
rect(348, 480, 200, 30);
  fill(123);
rect(372, 450, 150, 30);
fill(150);
rect(397, 420, 100, 30);
fill(150);
rect(840, -100, 100, 900);
fill(150);
rect(-30, -100, 100, 900);
fill(100);
rect(420, 420, 50, 209);
  }
font1 = loadFont("tetza.vlw");
textFont (font1);
fill(0);
text("TETZAUHTEOTL",265, 265);
textSize(20);
text("OBTEN EL PODER DE LOS DIOSES AZTECAS!", 235, 330);
font2 = loadFont("JUGAR.vlw");
textFont (font2);
fill(0);
textSize(40);
text("JUGAR",395, 415);

}

void pantallaPersonajes(){
  
background(227,246,255);
fill(32,198,255);
rect(450, 15, 900, 40);
fill(255,161,135);
rect(50,525,185,100);
fill(255,161,135);
rect(850,525,185,100);


textSize(15);
fill(0);
text("NO PUEDEN ESCOGER",10,500);
text("EL MISMO",10,530);
text("DIOS.",10,560);
text("ESCOJAN SABIAMENTE...  ",765,520);
textSize(25);
fill(0);
text("                                                   SELECCIÓN DE PERSONAJES", 50, 30);
text("              J1 elige a tu DIOS con las letras!*           J2 Elige a tu DIOS con los numeros*", 50, 60);

textSize(20);

text(" QUEZTALCOATL   Q - 1",40,340);
text("XIPETOTEC   X - 4",390,340);
text("KILIKONETL   K - 5",715, 340);
text("TEZCATLIPOCA   T - 3", 210, 670);
text("HUITZILIPOTCHTLI   H - 2", 530, 670);


}

void tezcal(int xi, int yi){
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-180,0,100,100, 20);
  rectMode(CENTER);
  noStroke();
  popMatrix();  
  
  pushMatrix();
  translate(xi,yi);
  fill(77,0,181);
  rect(-230,0,20,100);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(77,0,181);
  rect(-130,0,20,100);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(77,0,181);
  rect(-180,-55,90,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  rect(-180,-50,40,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
pushMatrix();
  translate(xi,yi);
  fill(105,0,83);
  rect(-180,-70,40,30);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   
   pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  rect(-180,-70,20,60);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-210,-65,20,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
    pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-150,-65,20,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(77,0,181);
  rect(-150,40,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(77,0,181);
  rect(-210,40,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(255);
  rect(-180,25,30,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(140);
  rect(-180,5,30,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(-180,-15,20,50);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-235,-5,30,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-125,-5,30,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-235,15,20,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  ellipse(-125,15,20,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(0
  );
  rect(-180,90,80,80);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   
   pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  rect(-210,85,20,70);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(147, 74, 255);
  rect(-150,85,20,70);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(147, 0,0);
  rect(-205,-16,19,8);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(147, 0,0);
  rect(-155,-16,19,8);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(147, 0,0);
  rect(-155,-16,19,8);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(123, 0, 0);
  rect(-210,129,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(80, 0, 0);
  rect(-190,129,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(123, 0, 0);
  rect(-170,129,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(80, 0, 0);
  rect(-150,129,20,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-200,145,30,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-160,145,30,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-220,75,20,50);
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-140,75,20,50);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
   pushMatrix();
  translate(xi,yi);
  fill(200,200,0);
  ellipse(-180,75,30,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(244,244,0);
  ellipse(-180,75,10,10);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
    pushMatrix();
  translate(xi,yi);
  fill(120,0,90);
  rect(-180,50,10,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(120,0,90);
  rect(-165,50,10,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(120,0,90);
  rect(-195,50,10,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(120,0,90);
  rect(-180,110,30,20);
  rectMode(CENTER);
  noStroke();
  popMatrix(); 
}

void quetzal(int xi, int yi){
 
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-80,120,80);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0,204,0);
  ellipse(-50,-105,50,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();  pushMatrix();
  translate(xi,yi);
  fill(0,204,0);
  ellipse(-150,-105,50,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0,204,0);
  ellipse(-100,-125,20,50);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
  
  pushMatrix();
  translate(xi,yi);
  fill(38,179,0);
  rect(-100,-75,100,100, 20);
  rectMode(CENTER);
  noStroke();
  popMatrix(); 
   pushMatrix();
  translate(xi,yi);
  fill(0,138,32);
  rect(-100,-110,100,30);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-120,100,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-90,100,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-60,15,40);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-55,25,10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255);
  rect(-100,-40,35,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(255,0,0);
  rect(-125,-75,8,11);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(255,0,0);
  rect(-75,-75,8,11);
  rectMode(CENTER);
  noStroke();
  popMatrix();
       pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-80,70,5);
  rectMode(CENTER);
  noStroke();
  popMatrix();
       pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-75,-70,15,5);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-125,-70,15,5);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-135,-35,30,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-65,-35,30,20);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-50,-80,8,8);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();

  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-50,-70,13,13);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-50,-60,10,10);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-150,-80,8,8);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-150,-70,13,13);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-150,-60,10,10);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-100,-105,30,30);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  ellipse(-100,-105,20,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(38,179,0);
  rect(-100, 20,80,90);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,70,25,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-120,70,25,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-145,10,15,65);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-55,10,15,65);
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(180,38,0);
  rect(-100,40,80,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(180,38,0);
  rect(-100,10,80,15);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0,154,4);
  rect(-125,5,30,55);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0,154,4);
  rect(-75,5,30,55);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-125,10,20,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-75,10,20,20);
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
 pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-100,-20,100,5, 10);
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  
}

void huitzil(int xi, int yi){
  pushMatrix();
  translate(xi,yi);
  fill(62,255,211);
  rect(-80,-250,100,100, 20);//ROSTRO
  rectMode(CENTER);
  noStroke();
  popMatrix();  
   pushMatrix();
  translate(xi,yi);
  fill(62,255,211);
  rect(-80,-158,75,85);//TORZO
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(62);
  rect(-100,-105,25,25);//PIES
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(62);
  rect(-60,-105,25,25);//PIES
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-125,-250,15,100);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-35,-250,15,100);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-210,100,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(255);
  rect(-80,-225,30,15);//BOCA
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-285,120,20);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-295,100,20);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-305,80,20);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-115,-300,10,50);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-45,-300,10,50);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
     
     pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-300,20,10);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-265,15,55);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-105,-255,10,10);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-105,-245,8,8);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-55,-255,10,10);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-55,-245,8,8);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
       pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-105,-260,15,5);//CEJAS
  rectMode(CENTER);
  noStroke();
  popMatrix();
      pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-55,-260,15,5);//CEJAS
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-247,20,10);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-80,-290,15,15);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-80,-305,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-80,-315,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-80,-325,7,7);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-40,-170,15,55);//BRAZOS
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-120,-170,15,55);//BRAZOS
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-130,-260,23,23);//aretes ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-30,-260,23,23);//aretes ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-80,-180,80,30);//torzo negro
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-160,30,5);//triangulo amarillo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-150,40,5);//triangulo amarillo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-140,50,5);//triangulo amarillo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-130,60,5);//triangulo amarillo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-80,-120,70,5);//triangulo amarillo
  rectMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-100,-180,15,15);//chichis ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(70,255,163);
  ellipse(-60,-180,15,15);//chichis ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-130,-193,20,10);//torzo negro
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  rect(-30,-193,20,10);//torzo negro
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
}
void xipetotec(int xi, int yi){
  pushMatrix();
  translate(xi,yi);
  fill(255,0,0);
  rect(-450,-775,100,100, 20);
  rectMode(CENTER);
  noStroke();
  popMatrix();  
  pushMatrix();
  translate(xi,yi);
  fill(255,0,0);
  rect(-450,-685,85,85);//TORZO
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-405,-780,20,90,5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-495,-780,20,90,5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
       pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-480,-745,20,20, 5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-420,-745,20,20, 5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255);
  rect(-450,-735,30,10);//BOCA
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-450,-810,100,40,5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(190,20,0);
  rect(-450,-767,15,45);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
    pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-450,-755,15,15,3);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(206,255,60);
  rect(-450,-800,60,15,3);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(206,255,60);
  rect(-450,-820,100,15,5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-790,80,5,3);//cascotriangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-795,60,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-800,40,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-805,25,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-810,15,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(206,0,0);
  rect(-450,-815,5,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-470,-775,10,10);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(255,204,32);
  ellipse(-430,-775,10,10);//OJOS
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  ellipse(-450,-805,20,20);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-400,-700,15,55);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-500,-700,15,55);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-475,-635,23,20);//pies
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-425,-635,23,20);//pies
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-655,50,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-660,40,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-665,30,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-670,20,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-675,10,5,3);//casco triangulo
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255,211,0);
  rect(-450,-705,70,40,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-715,40,20,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-725,90,5,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-645,90,5,3);//falda
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-450,-690,90,5,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-505,-780,10,45,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(-395,-780,10,45,3);//pecho
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(206,255,60);
  ellipse(-450,-805,5,5);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
}

void kik(int xi, int yi){
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(120,-465,15,95);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(230,-465,15,95);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(175,-470,100,100, 20);//CARA
  rectMode(CENTER);
  noStroke();
  popMatrix();  
  pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(175,-375,80,90,5);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(190,20,0);
  rect(175,-470,15,30);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(190,20,0);
  rect(185,-460,8,8);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(190,20,0);
  rect(165,-460,8,8);//nariz
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(140);
  rect(175,-500,105,40);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(140);
  rect(175,-430,105,25);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  ellipse(120,-455,25,25);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  ellipse(120,-475,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  ellipse(230,-475,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  
  pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  ellipse(230,-455,25,25);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(252,0,0);
  ellipse(150,-470,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(252,0,0);
  ellipse(200,-470,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(150,-480,35,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(200,-480,35,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(175,-490,70,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(175,-500,50,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  rect(175,-510,30,15);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(150,-515,15,40);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(175,-515,15,40);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
   pushMatrix();
  translate(xi,yi);
  fill(123);
  rect(200,-515,15,40);//casco
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(135,-385,15,55);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(215,-385,15,55);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(175,-375,5,80,5);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(160,-375,5,80,5);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(190,-375,5,80,5);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
    pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(175,-355,65,40,5);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(123);
  ellipse(200,-345,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(123);
  ellipse(150,-345,10,10);//casco ciculos
  ellipseMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(255);
  rect(175,-440,30,8);//BOCA
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(155,-325,30,15);//pies
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(0);
  rect(195,-325,30,15);//pies
  rectMode(CENTER);
  noStroke();
  popMatrix();
     pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  rect(135,-365,15,15);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();
  pushMatrix();
  translate(xi,yi);
  fill(252,174,0);
  rect(215,-365,15,15);//brazos
  rectMode(CENTER);
  noStroke();
  popMatrix();

}

void keyPressed(){
  if(a==1){
  switch(key){
  case 'q':
  j1= 1;
  plus1= random (30,40);
  vida1=100;
  ataque1= random (10,20);

  break;
  case 'h':
  j1= 2;
    plus1= random (30,40);
    vida1=100;
ataque1= random (10,20);
  break;
  case 't':
  j1= 3;
    plus1= random (30,40);
    vida1=100;
ataque1= random (10,20);
  break;
  case 'x':
  j1= 4;
    plus1= random (30,40);
    vida1=100;
ataque1= random (10,20);
  break;
  case 'k':
  j1= 5;
    plus2= random (30,40);
    vida1=100;
ataque1= random (10,20);
  break;
  case '1':
  j2= 1;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break;
   case '2':
  j2=2;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break; 
  case '3':
  j2=3;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break; 
  case '4':
  j2=4;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break;
  case '5':
  j2=5;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break;
  }
}

    
  if (turno==1 && a==2){
  if (key=='m'|| key== 'M'){
    vida2= vida2- ataque1; println(vida2);
    turno=2;}
    else if((vida1>39)&&(vida1<51)){
    if (key=='L' || key=='l'){
    vida1=vida1+plus1;
    turno=2;
    }
  }
    }

  if (turno==2 && a==2){
    if(key=='z' || key== 'Z'){
      vida1= vida1 - ataque2; println(vida1);
      turno=1;
    }else if((vida2>39)&&(vida2<51)){
    if (key=='A' || key=='a'){
    vida2=vida2+plus2;
    turno=1;
    }
  }
  
}
}

void pantallaPelea(){  
background(219,255,209);
fill(200,200,0);
rect(450,100,900,250);
fill(200,150,0);
rect(450,270,900,100);
font3 = loadFont("vidas.vlw");
textFont (font3);
fill(70,255,109);
text(vida1 ,30, 180);
font3 = loadFont("vidas.vlw");
textFont (font3);
fill(255,0,0);
text(vida2 ,725, 180);
fill(247,252,61);
ellipse(450,0,200,200);

font2 = loadFont("tetza.vlw");
textFont (font2);
textSize (25);
fill(0);
text("J1" , 5, 180);
font2 = loadFont("tetza.vlw");
textFont (font2);
textSize (25);
fill(0);
text("J2" , 865, 180);

  font2 = loadFont("JUGAR.vlw");
textFont (font2);
fill(0);
textSize(20);
text("ATACAR: M", 30,40);
text("ATACAR: Z", 750,40);
text("PLUS AZTECA: L", 30, 60);
text("PLUS AZTECA: A", 750, 60);
text("Pueden usar el plus azteca solamente cuando su vida esté entre 40 y 50 puntos.", 140,20);

pushMatrix();

if(turno==2){
  textSize(35);
   fill(255,141,10);
text("TURNO JUGADOR: 2", 320, 150);
} 
else if(turno==1){
  textSize(35);
  fill(255,141,10);
text("TURNO JUGADOR: 1", 320,150);
}


if(j1==1){
  
  quetzal(350,500);
  textSize(25);
  fill(0);
  text("QUETZALCOATL", 10,215);
  
}
else if (j1==2){
  huitzil(330,685);
  textSize(25);
  fill(0);
    text("HUITZILOPOCHTLI", 10,215);
}
else if(j1==3){
  tezcal(400,425);
  textSize(25);
  fill(0);
    text("TEZCALTIPOCA NEGRO", 10,215);
}
else if(j1==4){
 xipetotec(700,1200);
 textSize(25);
 fill(0);
   text("XIPETOTEC", 10,215);
 }
else if(j1==5){
  kik(70,900);
  textSize(25);
  fill(0);
    text("KILIKONETL", 10,215);
}

popMatrix();

pushMatrix();
  
if(j2==1){
  quetzal(750,500);
  textSize(25);
  fill(0);
   text("QUETZALCOATL", 725,210);
  
}
else if(j2==2){
  huitzil(760,680);
  textSize(25);
  fill(0);
   text("HUITZILOPOCHTLI", 700,210);
}
else if(j2==3){
  tezcal(850,430);
  textSize(25);
  fill(0);
  text("TEZCALTIPOCA NEGRO", 655,215);
}
else if(j2==4){
 xipetotec(1100,1200);
 textSize(25);
 fill(0);
 text("XIPETOTEC", 775,215);
}
else if(j2==5){
  kik(520,900);
  textSize(25);
  fill(0);
   text("KILIKONETL", 770,215);
}

popMatrix();
}

void pantallaFin(){
  background(189);
 
 fill(255,245,149);
 rect(200,200,650,100,10);
 noStroke();
  fill(255,193,130);
 rect(833,45,80,45, 10);
 noStroke();
  fill(255,193,130);
 rect(410,45,35,45,10);
 noStroke();
 fill(255);
 ellipse(400,470,300,300);
 fill(255,193,130);
 rect(730,360,350,100,10);
  //fill(255);
 //ellipse(500,470,300,300);
 
font1 = loadFont("tetza.vlw");
textFont (font1);
fill(0);
textSize(55);
text("EL GANADOR ES:", 25,225);

textSize(20);
text("OPRIME LA LETRA 'N' PARA VOLVER A LA PANTALLA DE INICIO.", 200,50);
if(ganador==j1){
   font2 = loadFont("JUGAR.vlw");
textFont (font2);
fill(0);
textSize(30);
text("JUGADOR 1:", 630,350);
text("TU DIOS ES EL MÁS FUERTE!", 570,400);

}
else if(ganador==j2){
  font2 = loadFont("JUGAR.vlw");
textFont (font2);
fill(0);
textSize(30);
text("JUGADOR 2:", 630,350);
text("TU DIOS ES EL MAS FUERTE!", 570,400);


}
}