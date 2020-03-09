//Define the GlareBubble Subclass
class GlareBubble extends Bubble{
  
  //Initialize a variable to track the angle of rotation for the bubble's glare
  float r;
  
  //Create a boolean to allow for oscellation
  boolean inc = true;
  
  //Glarebubble Contstructor - Same as parent Bubble; 
  //Sets starting angle or rotation at 0 radians
  GlareBubble(){
    super();
    r = 0;
  }


  //Draw the GlareBubble
  
  void display(){
    
    //GlareBubbles are Bubbles
    super.display();
    
    //Set color parameters to make a white glare
    stroke(255);
    fill(255);
    
    //Push a Matrix to allow for rotations
    pushMatrix();
      //Ensure that rotation axis match those of the bubble
      translate(x,y);
      
      //Set the angle of the glare at radian "r"
      rotate(radians(r));
      
      //Draw the glare
      ellipse(-20, -25, diameter/7, diameter/14);
      ellipse(-25, -18, diameter/14, diameter/28);
      
    //Reset the Matrix
    popMatrix();
    
    //Keep track of the angle that the glare is at;
    //Oscellate the angle between (-10,10) radians
      if (inc){
        r+=.5;
      }
      else {
        r-=.5;
      }
      
      if (r == 10){
      inc = false;
      }
      else if (r == -10) {
      inc = true;
      }
  }
  
}
