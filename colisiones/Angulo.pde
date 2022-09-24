float d;
float e=0.3;
float v1x=3;
float v1y=2.5;
float v2x=3.5;
float v2y=2.5;
float x=380;
float y=280;
float y1=20;
float x1=20;
float m1=12;
float m2=12;
float v1n=0;
float v2n=0;
float v3n=0;
float v4n=0;
float vp=0;
float vp1=0;
float vp2=0;
float vp3=0;

void setup() {
size(400,300);
 noStroke();
  fill(127, 255, 0);
}

void draw() {
background(0);
ellipse(x, y, 40,40);
ellipse(x1, y1, 40,40);
  x += v1x;
  x1+=-v2x;
  y+=v1y;
  y1+=-v2y;
  if(dist(x1,y1,x,y)<=40){
   vp=v1x*cos(45)+v1y*sin(45);
   v1n=v1x*sin(45)+v1y*cos(45);
   vp2=v2x*cos(45)+v2y*sin(45);
   v3n=v2x*sin(45)+v2y*cos(45);
   vp3=(1+e)*m1*vp/(m1+m2)+(m2-e*m1)*vp2/(m1+m2);
   vp1=(m1-e*m2)*vp/(m1+m2)+(1+e)*m2*vp2/(m1+m2);
   v2n=v2x*sin(45)+v2y*cos(45);
   v1x=vp1*cos(45)-v2n*sin(45);
   v1y=vp1*sin(45)+v2n*cos(45);
   v2y=vp3*sin(45)+v3n*cos(45);
   v2x=vp3*cos(45)+v3n*sin(45);
   v1x=-v1x;
   v1y=-v1y;
   v2x=-v2x;
   v2y=-v2y;
  }
  if (x < 0 || x > width) {
    v1x *= -1;
  }
  if (x1 < 0 || x1 > width) {
    v2x *= -1;
  }
    if (y < 0 || y > height) {
    v1y *= -1;
  }
  if (y1 < 0 || y1 > height) {
    v2y *= -1;
  } 
}
