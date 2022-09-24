float d;
float e=0.3;
float v1x=10;
float v1y=0;
float m1=8;
float m2=4;
float v2x=6;
float v2y=0;
float x=100;
float y=150;
float x1=300;
void setup() {
size(640,360);
 noStroke();
  fill(127, 255, 0);
}

void draw() {
background(0);
ellipse(x, y, 40, 40);
ellipse(x1, y, 40, 40);
  x += v1x;
  x1+=-v2x;

  if(dist(x1,150,x,150)<=40){
    v1x=-((m1-e*m2)*v1x/(m1+m2))+((1+e)*m2*(-v2x)/(m1+m2));
    v2x=(1+e)*m1*v1x/(m1+m2)+(m2-e*m1)*v2x/(m1+m2);
  }
  //colision horizontal
  if (x < 0 || x > width) {
    v1x *= -1;
  }
  if (x1 < 0 || x1 > width) {
    v2x *= -1;
  }
  
}
