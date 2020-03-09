class Snail_Eyes extends Snail{
  PShape snail_eyes;
  PShape eye_stalk_left;
  PShape eye_stalk_right;
  PShape eye_left;
  PShape eye_right;
  PShape eye_left_pupil;
  PShape eye_right_pupil;
  float angle = 0;
  
  Snail_Eyes(){
    // Call constructor of the superclass to gain its initialized fields
    super();
    
    // Initialize the PShape group snail_eyes
    snail_eyes = createShape(GROUP);
    
    //Initialize the necessary PShapes that make up the snail eyes, and add them to the PShape group snail_eyes
    fill(snail_body_color);
    eye_stalk_left = createShape(RECT, 108, 0, 10, 50);
    snail_eyes.addChild(eye_stalk_left);
    
    eye_stalk_right = createShape(RECT, 133, 0, 10, 50);
    snail_eyes.addChild(eye_stalk_right);
    
    fill(255, 255, 255);
    stroke(shell_stroke_color);
    eye_left = createShape(ELLIPSE, 113, 0, 20, 20);
    snail_eyes.addChild(eye_left);
    eye_right = createShape(ELLIPSE, 138, 0, 20, 20);
    snail_eyes.addChild(eye_right);
    
    fill(0, 0, 0);
    noStroke();
    eye_left_pupil = createShape(ELLIPSE, 113, 0, 5, 5);
    snail_eyes.addChild(eye_left_pupil);
    eye_right_pupil = createShape(ELLIPSE, 138, 0, 5, 5);
    snail_eyes.addChild(eye_right_pupil);
    
  }
  
  void display(){
    shape(snail_eyes, xPos + 3, yPos - 75);  
  }
  
  void move(){
    if(xPos > width + 100){
      xPos = -150;
    }
    this.xPos += speed;
    this.yPos += (sin(angle) * .2);
    
    angle += 0.02;
  }
}
