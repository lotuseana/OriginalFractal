public void setup(){
  size (500,500);
  noStroke();
}
public void draw(){
  background(127, 164, 186);
  myFractal(250,120,200);
}
public void myFractal(float x, float y, float siz){
  fill (250, 135, 156, 80);
  if (siz<50){
    ellipse(250,250,40,40);
  } else{
  translate (x, y);
  for (int i =0; i<6; i++){
    ellipse(0, 0+siz/8, siz/2, siz);
    rotate(PI/3);
    translate ((float)(140*Math.cos(x/2)), (float)(202*Math.sin(y/2)));
  }
  translate(-x,-y);
  myFractal(x,y,siz/1.2);}
}
