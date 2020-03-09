class Tail extends Fish{
  float t;
  
  Tail (float x, float y, float h, float w, PVector speed, float t, float b){
    super(x, y, h, w, speed, b);
    this.t = t;
  }
  
  void display(){
    fill(200, 50, 50);
    pushMatrix();
    translate(x, y);
    rotate(radians(t));
    triangle(-80, -10, -45, 2 , -60, -15);
    triangle(-80, 10, -45, - 2, -60, 15);
    popMatrix();

  }
  
}
