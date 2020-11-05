Flower myFlower1;
Flower myFlower2;
int[]x=new int[50];
int[]y=new int[50];

void setup() {
  size(1000, 800);

  int _r1= 100;
  int _r2 = 100;
  float _x=width/2;
  float _y=height/2;
  int offset = 350;
  boolean _mouseControlled=true;
 

  myFlower1 = new Flower(_r1, _x, _y, 2); 
  myFlower2 = new Flower(_r2, _x+random(-500, 500), _y+offset, 5, _mouseControlled);
     for (int i=0; i < x.length; i++){
    x[i]=0;
    y[i]=0;
 }
}
void draw() {
  background(150);

  myFlower1.display();
  myFlower1.move();  
  myFlower2.display();
  myFlower2.move();
  myFlower1.colliding(myFlower2);
  
  for (int i=0; i < x.length-1; i++){
    x[i]=x[i+1];
    y[i]=y[i+1];
  }
x[x.length-1]=mouseX;
y[y.length-1]=mouseY;

for (int i=0; i < x.length; i++){
  noStroke();
  fill(255-i*5,255-i*5);
  ellipse(x[i],y[i],i,i);
}
}
