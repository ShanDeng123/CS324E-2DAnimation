class Fins extends Fish{
  float a;
  
  Fins (float x, float y, float h, float w, PVector speed, float a, float b){
    super(x, y, h, w, speed, b);
    this.a = a;
  }
  
  void display(){
    fill(200, 50, 50);
    pushMatrix();
    translate(x, y);
    rotate(radians(a));
    triangle(-15, -5, -5, 15, 10, 10);
    popMatrix();

  }
  
  
}
