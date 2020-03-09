//Initialize Subclass Objects

GlareBubble gb1;
GlareBubble gb2;
GlareBubble gb3;

Fish fish1;
int totFrames = 1950;
int counter = 0;
float percent;

// Snail Object
Snail snail;
Snail_Eyes snail_eyes;

//Create the Background and Initialize the GlareBubble Objects 
void setup(){
  size(800,600);
  background(100, 150, 200);
  gb1 = new GlareBubble();
  gb2 = new GlareBubble();
  gb3 = new GlareBubble();
  
  //creates speed and fish object  
  PVector p = new PVector (3, 1);
  fish1 = new Fish(100, 200, 100, 80, p, 1);

  // Initialize the Snail object
  snail = new Snail();
  snail_eyes = new Snail_Eyes();
  
  
}

//Draw the Animation..
void draw(){
  //Set a watery-blue background
  background(100, 150, 200);
  
  fill(232, 204, 135);
  rect(0,420, 800, 300);
  
  //Push a Matrix to Reset Each Bubble onto a different Starting Location
  pushMatrix();
    //Translate sets the bubble's start location
    translate(200,600);
    
    //Scale sets the bubble's size
    scale(1.3);
    
    //Make the bubble rise
    gb1.ascend();
    
    //Animate the Bubble's movement
    gb1.display();
    
    //Loop the Bubble Animation after it reaches the top
    gb1.top();
  popMatrix();
  
  //Again, Create a New Bubble at a New start Location
  pushMatrix();
    translate(400,600);
    scale(.6);
    gb2.ascend();
    gb2.display();
    gb2.top();
  popMatrix();
  
  //Again, Create a New Bubble at a New start Location
  pushMatrix();
    translate(600,600);
    gb3.ascend();
    gb3.display();
    gb3.top();
  popMatrix();
  
  
  //makes fish move
  noStroke();
  strokeWeight(2);
  fish1.moveEdges();

  // makes fish loop once hits certain number of frames 
  counter++;
  if (counter == totFrames){
    counter = 0;
    render();
  } 
  
  snail.display();
  snail.move();
  snail_eyes.display();
  snail_eyes.move(); 

}

// makes fish loop
void render(){
  background(100, 150, 200);
  fill(232, 204, 135);
  rect(0,420, 800, 300);
  PVector p = new PVector (3, 1);
  
  fish1 = new Fish(100, 200, 100, 80, p, 1);
  fish1.moveEdges();
}
