//Define the Bubble SuperClass
class Bubble {
  
  //Initialize Relative Bubble Coordinates
  float x = 0;
  float y = 0;
  
  //Define Generic Bubble Size
  float diameter = 90;
  
  //Empty Constructor
  Bubble(){
  }
  
  //Drawing the Background Bubble
  void display(){

    stroke(100,150,200);
    fill(150,200,255);
    ellipse(x,y, diameter, diameter);
    
  }
  
  //Allow the bubble to float
  void ascend(){
    
    //The bubble will move up, as well as wobble randomly.
    translate(x+random(-2,2),y--);

  }
  
  //Check to see if Bubble is at/near the top of the screen; 
  //Reset position back to the bottom
  void top(){
    
    if (y < -500)
    {
      y = 50;
    }
    
  }
  
}
