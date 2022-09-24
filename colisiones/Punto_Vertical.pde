float d;
float e=0.3;
float v1y=10;//definir velocidades
float v2y=4;
float m1=8;//definir masas
float m2=4;
float x=100;//deinir posiciones
float y=50;
float y1=200;
float x1=100;

void setup() {
size(640, 360);
 noStroke();
  fill(127, 255, 0);
}

void draw() {
background(0);

ellipse(x, y, 40,40);
ellipse(x1, y1, 40,40);
  y += v1y;
  y1+=-v2y;

  if(dist(x,y,x,y1)<=40){
    v1y=-((m1-e*m2)*v1y/(m1+m2))+((1+e)*m2*(-v2y)/(m1+m2));
    v2y=(1+e)*m1*v1y/(m1+m2)+(m2-e*m1)*v2y/(m1+m2);
  }
  //colision vertical
  if (y < 0 || y > height) {
    v1y *= -1;
  }
  if (y1 < 0 || y1 > height) {
    v2y *= -1;
  }
  
}
