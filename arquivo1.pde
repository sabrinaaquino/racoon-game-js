//var sons = new Array();
//sons[0] = new Audio('pain1.ogg');
//<embed name="pain1" src="som/pain1.ogg" loop="true" hidden="true" autostart="true">

PImage backg;
PImage idle1;
PImage idle2;
int x=10;
int y = 260;
int xm = parseInt(random(10, 600));
float ym = -30;
int xc = parseInt(random(10, 600));
float yc = -400;
int xu = parseInt(random(10, 600));            
float yu = -200;
int xv = parseInt(random(10, 600));
float yv = -2000;
int xmal = parseInt(random(70, 600));
float ymal = -1000;
int xmal2 = parseInt(random(70, 600));
float ymal2 = -1500;
int right=1;
int left=0;
int vidas=3;
int j=0;
PImage walk0001;
PImage walk0002;
PImage walk0003;
PImage walk0004;
PImage walk0005;
PImage walk0006;
PImage walk0007;
PImage walk0008;
PImage walk0009;
PImage walk00010;
PImage walk00011;
PImage walk1001;
PImage walk1002;
PImage walk1003;
PImage walk1004;
PImage walk1005;
PImage walk1006;
PImage walk1007;
PImage walk1008;
PImage walk1009;
PImage walk10010;
PImage walk10011;
PImage start1;
PImage over;
PImage won;
PImage maca;
int total = 100;
int[] macas = new int[total];
PImage vida;
PImage cereja;
PImage uva;
PImage mal;
float points;
int fruits = 0;
float nivel=1;
int game=0;
int i;

void setup() {
  size( 750, 450 );
  points=0;
  backg = loadImage("imagens/backg.png");
  idle1 = loadImage("imagens/idle1.png");
  idle2 = loadImage("imagens/idle2.png");
  maca = loadImage("imagens/maca.png");
  mal = loadImage("imagens/mal.png");
  vida = loadImage("imagens/vida.png");
  cereja = loadImage("imagens/cereja.png");
  uva = loadImage("imagens/uva.png");
  walk0001 = loadImage("imagens/walk0001.png");
  walk0002 = loadImage("imagens/walk0002.png");
  walk0003 = loadImage("imagens/walk0003.png");
  walk0004 = loadImage("imagens/walk0004.png");
  walk0005 = loadImage("imagens/walk0005.png");
  walk0006 = loadImage("imagens/walk0006.png");
  walk0007 = loadImage("imagens/walk0007.png");
  walk0008 = loadImage("imagens/walk0008.png");
  walk0009 = loadImage("imagens/walk0009.png");
  walk00010 = loadImage("imagens/walk00010.png");
  walk00011 = loadImage("imagens/walk00011.png");
  walk1001 = loadImage("imagens/walk1001.png");
  walk1002 = loadImage("imagens/walk1002.png");
  walk1003 = loadImage("imagens/walk1003.png");
  walk1004 = loadImage("imagens/walk1004.png");
  walk1005 = loadImage("imagens/walk1005.png");
  walk1006 = loadImage("imagens/walk1006.png");
  walk1007 = loadImage("imagens/walk1007.png");
  walk1008 = loadImage("imagens/walk1008.png");
  walk1009 = loadImage("imagens/walk1009.png");
  walk10010 = loadImage("imagens/walk10010.png");
  walk10011 = loadImage("imagens/walk10011.png");
  over = loadImage("imagens/over.png");
  won = loadImage("imagens/won.jpg");
  start1 = loadImage("imagens/start.jpg");
  start1.resize(750, 450);
  image(start1, 0, 0);
  textSize(60);
  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  text("RACOO"+'N', 375, 335);
}

void drawBackg() {
  backg.resize(750, 450);
  image(backg, 0, 0);
}

void drawIdle() {

  if (right==1) {
    idle1.resize(170, 170);
    image(idle1, x, y);
  } else if (right==2) {
    walk0001.resize(170, 170);
    image(walk0001, x, y);
  } else if (right==3) {
    walk0003.resize(170, 170);
    image(walk0003, x, y);
  } else if (right==4) {
    walk0006.resize(170, 170);
    image(walk0006, x, y);
  } else if (right==5) {
    walk0008.resize(170, 170);
    image(walk0008, x, y);
  } else if (right==6) {
    walk00010.resize(170, 170);
    image(walk00010, x, y);
  } else if (left==1) {
    idle2.resize(170, 170);
    image(idle2, x+20, y);
  } else if (left==2) {
    walk1001.resize(170, 170);
    image(walk1001, x+20, y);
  } else if (left==3) {
    walk1003.resize(170, 170);
    image(walk1003, x+20, y);
  } else if (left==4) {
    walk1006.resize(170, 170);
    image(walk1006, x+20, y);
  } else if (left==5) {
    walk1008.resize(170, 170);
    image(walk1008, x+20, y);
  } else if (left==6) {
    walk10010.resize(170, 170);
    image(walk10010, x+20, y);
  }
}

void drawDrops() {
  /*maca.resize(40, 40);
  image(maca, xmn[0], ymn[0]);
  for(i=0; i<10; i++){
  
  }
  
  for(j=0; j<10;j++){
    if ( (y-ymn[0]) < 0 ) {
      if (xmn[0]>=x && xmn[0]<=x+150) {
        ymn[0]=parseInt(random(-100,-200));
        xmn[0]=parseInt(random(30, 600));
        points = points + 10;
        fruits++;
      }
    }
  }
  ymn[0]=parseInt(ymn[0]+1+(nivel/3));*/
  maca.resize(40, 40);
  image(maca, xm, ym);
  ym=ym+1+(nivel/3);
  if (ym>360) {
    ym=-100;
    xm=parseInt(random(30, 600));
    fruits++;
    points = points - 10*nivel;
  }
  cereja.resize(40, 40);
  image(cereja, xc, yc);
  yc=yc+1+(nivel/3);
  if (yc>360) {
    yc=-200;
    xc=parseInt(random(30, 600));
    fruits++;
    points = points - 10*nivel;
  }
  uva.resize(40, 40);
  image(uva, xu, yu);
  yu=yu+1+(nivel/3);
  if (yu>360) {
    yu=-150;
    xu=parseInt(random(30, 600));
    fruits++;
    points = points - 10*nivel;
  }
  mal.resize(40, 40);
  image(mal, xmal, ymal);
  ymal=ymal+1+(nivel/3);
  if (ymal>360) {
    ymal=-1200+nivel*100;
    xmal=parseInt(random(70, 600));
  }
  mal.resize(40, 40);
  image(mal, xmal2, ymal2);
  ymal2=ymal2+1+(nivel/3);
  if (ymal2>360) {
    ymal2=-1200+nivel*100;
    xmal2=parseInt(random(70, 600));
  }
  vida.resize(40, 40);
  image(vida, xv, yv);
  yv=yv+1+(nivel/3);
  if (yv>360) {
    yv=-1800-nivel*100;
    xv=parseInt(random(40, 600));
  }
}

void drawPoints() {
  if ( (y-ym) < 0 ) {
    if (xm>=x && xm<=x+150) {
      ym=-100;
      xm=parseInt(random(30, 600));
      points = points + 10;
      fruits++;
    }
  }
  if ( (y-yc) < 0 ) {
    if (xc>=x && xc<=x+150) {
      yc=-200;
      xc=parseInt(random(30, 600));
      points = points + 10;
      fruits++;
    }
  }
  if ( (y-yu) < 0 ) {
    if (xu>=x && xu<=x+150) {
      yu=-150;
      xu=parseInt(random(30, 600));
      points = points + 10; 
      fruits++;
    }
  }
  if ( (y-ymal) < 0 ) {
    if (xmal>=x && xmal<=x+150) {
      ymal=-1000;
      xmal=parseInt(random(70, 600));
      vidas--;
    }
  }
  if ( (y-ymal2) < 0 ) {
    if (xmal2>=x && xmal2<=x+150) {
      ymal2=-700;
      xmal2=parseInt(random(70, 600));
      vidas--;
    }
  }
  if ( (y-yv) < 0 ) {
    if (xv>=x && xv<=x+150) {
      yv=-2000;
      xv=parseInt(random(40, 600));
      vidas++;
    }
  }
  textSize(15);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("PONTUAÇÃO: "+parseInt(points), 665, 30);
  textSize(15);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("VIDAS: "+vidas, 665, 60);
  textSize(15);
  fill(0, 0, 0);
  textAlign(CENTER, CENTER);
  text("NÍVEL: "+parseInt(nivel), 40, 80);
}

void draw() {

  if (mousePressed) {
    game++;
  }

  if (game>0) {

    drawBackg();
    drawIdle();
    drawDrops();
    drawPoints();

    if (vidas<0 || points<0) {
      background(0);
      over.resize(750, 450);
      image(over, 0, 0);
      game=0;
    }
    if (fruits>10) {
      nivel++;
      fruits=0;
    }
    if (nivel>7) {
      background(0);
      won.resize(750, 450);
      image(won, 0, 0);
      game=0;
    }
  }
}
void keyPressed() {
  if (key == CODED) {

    if (keyCode==RIGHT) {
      right++;
      left=0;
      if (right>6) {
        right=2;
      }
      if (x==550) {
        x=550;
      } else {
        x=x+10;
      }
    }
    if (keyCode==LEFT) {
      right=0;
      left++;
      if (left>6) {
        left=2;
      }
      if (x==0) {
        x=0;
      } else {
        x=x-10;
      }
    }
  }
}
