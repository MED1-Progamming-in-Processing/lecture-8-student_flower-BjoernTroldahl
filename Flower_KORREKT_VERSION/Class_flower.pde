class Flower {

  // Variables
  float Xspeed; //Der blev lavet en speed variable så man kunne flytte på blomsten og sætte den til forskellig hastighed
  float Yspeed;
  
  float r;
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  
  boolean collision;
  boolean mouseControlled;

  Flower(float temp_r, float temp_x, float temp_y, float temp_speed) {
    r=temp_r;
    x=temp_x;
    y=temp_y;
    Xspeed = temp_speed;
    Yspeed =temp_speed/2;
   
     
  }
  Flower(float temp_r, float temp_x, float temp_y, float temp_speed, boolean temp_mouseControlled) {
    r=temp_r;
    x=temp_x;
    y=temp_y;
    Xspeed = temp_speed;
    Yspeed = temp_speed/2;
    mouseControlled=temp_mouseControlled;
  }

  void display () {
    if (!mouseControlled) {
      fill(255);
      ellipse(x, y, r, r);
    } else {
      fill(0);

      if (mouseX >= 0+r/2 && mouseY >= 0+r/2 && mouseX <= width-r/2 && mouseY <= height-r/2){
        x = mouseX;
        y = mouseY;
      }
      ellipse(x, y, r, r);
    }
  if (mousePressed){
  fill(0,255,0);
  ellipse(x, y, r*1.2, r*1.2);
 }
  }
  void move(/*float speed*/) {

    x = x + Xspeed;
    // Checks if it hits the upper and lower barriers
    if (x >= width-r/2 || x <= 0+r/2) {
      Xspeed = Xspeed *= (-1);
    }

    // Y speed
    y = y + Yspeed;
    // Checks if it hits the upper and lower barriers
    if (y >= height-r/2 || y <= 0+r/2) {
      Yspeed = Yspeed *= (-1);
   
}
  }
void colliding (Flower other){
  float d=dist(x,y,other.x,other.y);
  if (d<r/2+other.r/2 && collision==false){
  Xspeed=Xspeed*(-1);
  Yspeed=Yspeed*(-1);
  collision=true;
  }else{
   collision=false;
}
}
}
