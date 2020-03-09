//creates fish from other subclasses
class Fish{
  float x, y, h, w;
  PVector speed;
  float overlap;
  Fins fins;
  Tail tail1;
  float a;
  float b;
  float t;

//initialize fish to input 
Fish (float x, float y, float h, float w, PVector speed, float b){
  this.x = x;
  this.y = y;
  this.h = h;
  this.w = w;
  this.speed = speed;
  this.b = b;

}

  //displays the fish, tail and fins according to input 
  void display(){
    fill(240, 100, 50);
    pushMatrix();
    translate(x, y);
    
    //allows fish to flip along y axis
    scale(b, 1);
  
    // top fin, body, eyes and mouth
    fill(200, 50, 50);
    triangle(-35, -30, 0, -50, 35, -30);
    
    fill(240, 100, 50);
    ellipse(0, 0, h, w); 
    
    fill(255);
    ellipse(20, -10, 25, 20);
    fill(0);
    ellipse(25, -10, 15, 10);
    
    noFill();
    stroke(168, 53, 3);
    arc(45, 0, 30, 30, 1.5, 2.5);
  
    //fins and rotation angle
    fins = new Fins(0, 0, h, w, speed, a, b);
    fins.display();

    if (a>=0){
      a -= 2;
    }else if (a<= -50){
      a += 2;
    } else {
      a += 50;
    }
    
  
    //tail and rotation angle  
    tail1 = new Tail(0, 0, h, w, speed, t, b);
    tail1.display();
    if (t>0){
      t -= .2;
    }else if (t < 0){
      t += 5;
    } else {
      t += 5;
    }
    
    popMatrix();
  }  
 
   //moves the fish and stops it from going past the edges
   void moveEdges() {
    x += speed.x;
    y += speed.y;
    
    display();
    
    if (x + w/2 > width+5) {
      x = width - w/2+5; 
      speed.x *= -0.9; 
      b = -1;
    }
     if (x - w/2 <-5) {
      x = w/2-5;
      speed.x *= -.9;
      b = 1;
    }
     if (y + w/2 > height-150) {
      y = height - w/2-150;
      speed.y *= -.9; 
    }
     if (y - w/2 <-5) {
      y = w/2-5;
      speed.y *= -.9;
    }
    
  }
  
  
}
