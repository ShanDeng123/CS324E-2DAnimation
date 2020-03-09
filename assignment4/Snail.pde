class Snail{
  
// Variables for shell spiral control
float x;
float y;
int r = 100;
int cx;
int cy;
float a = 0.0265;

// PShape objects, to add organization to shape hierarchy, and simplify usage in animation
PShape snail;
PShape snail_shell;
PShape shell_spiral;
PShape shell_circle;
PShape shell_base;
PShape snail_body;
PShape body_ellipse1;
PShape snail_head;

// Animation and position variables
float speed;
float xPos;
float yPos;

// Color Variables
color shell_color;
color shell_stroke_color;
color snail_body_color;
  
  //Default Snail constructor; initializes a snail with speed of .5 and default orange shell color with brown stroke
  Snail(){
    speed = .25;
    xPos = -150;
    yPos = height - 200;
    //xPos = width / 2;
    //yPos = height / 2;
    
    //Initialize the color variables
    shell_color = color(204, 131, 65);
    shell_stroke_color = color(64, 48, 19);
    snail_body_color = color(153, 129, 107);
    
    //Initialize the main PShape group snail
    snail = createShape(GROUP);
    
    //Initialize the PShape group snail_shell
    snail_shell = createShape(GROUP);
    
    //Initialize the PShape group snail_body
    snail_body = createShape(GROUP);
    
    // Create and add the necessary shapes to snail_body
    fill(snail_body_color);
    //stroke(shell_stroke_color);
    //strokeWeight(3);
    noStroke();
    body_ellipse1 = createShape(ELLIPSE, 40, 60, 250, 45);
    snail_body.addChild(body_ellipse1);
    snail_head = createShape(ARC, 128, 60, 75, 200, PI, PI * 2, OPEN);
    snail_body.addChild(snail_head);
    
    //Add the PShape group snail_body to the snail PShape group
    snail.addChild(snail_body);
    
    //Create and add the shell base (arc shape) to the snail_shell PShape group
    fill(204, 131, 65);
    strokeWeight(5);
    stroke(shell_stroke_color);
    shell_base = createShape(ARC, 0, 0, 125, 125, PI * .75, PI * 2.25, CHORD);
    snail_shell.addChild(shell_base);
    
    //Create and add the shell_spiral (PShape group of many smaller PShape ellipses) to the snail_shell PShape group
    shell_spiral = createShape(GROUP);
    noStroke();
    fill(shell_stroke_color);
    cx = 0;
    cy = 0;
    for (int i = 0; i < 1137; i++) {
          float t = radians(i);
          x = cx + a * t * r * cos(t);
          y = cy + a * t * r * sin(t);
          shell_circle = createShape(ELLIPSE, x, y, 5, 5);
          shell_spiral.addChild(shell_circle);
          //snail_shell.addChild(shell_circle);
      }
    snail_shell.addChild(shell_spiral);
    snail.addChild(snail_shell);
    
    // Initialize the snail_body and add it to the snail PShape group
    
    }
  
  //Customizeable Snail constructor; initializes a snail with a given xPos, yPos, speed, shell color, and shell stroke
  Snail(float xPos, float yPos, float speed, color shell_color, color shell_stroke){
    this.xPos = xPos;
    this.yPos = yPos;
    this.speed = speed;
    this.shell_color = shell_color;
    this.shell_stroke_color = shell_stroke;
    
    //Initialize the main PShape group snail
    snail = createShape(GROUP);
    
    //Initialize the PShape group snail_shell
    snail_shell = createShape(GROUP);
    
    //Initialize the PShape group snail_body
    snail_body = createShape(GROUP);
    
    // Create and add the necessary shapes to snail_body
    body_ellipse1 = createShape(ELLIPSE, 50, 0, 300, 75);
    snail_body.addChild(body_ellipse1);
    
    //Add the PShape group snail_body to the snail PShape group
    snail.addChild(snail_body);
    
    //Create and add the shell base (arc shape) to the snail_shell PShape group
    shell_spiral = createShape(GROUP);
    fill(204, 131, 65);
    strokeWeight(5);
    stroke(shell_stroke_color);
    shell_base = createShape(ARC, 0, 0, 125, 125, PI * .75, PI * 2.25, CHORD);
    snail_shell.addChild(shell_base);
    
    //Create and add the shell_spiral (PShape group of many smaller PShape ellipses) to the snail_shell PShape group
    noStroke();
    fill(shell_stroke_color);
    cx = 0;
    cy = 0;
    for (int i = 0; i < 1137; i++) {
          float t = radians(i);
          x = cx + a * t * r * cos(t);
          y = cy + a * t * r * sin(t);
          shell_circle = createShape(ELLIPSE, x, y, 5, 5);
          shell_spiral.addChild(shell_circle);
          //snail_shell.addChild(shell_circle);
      }
    snail_shell.addChild(shell_spiral);
    snail.addChild(snail_shell);
  }
  
  void display(){
    shape(snail, xPos, yPos);
  }
  
  void move(){
    if(xPos > width + 100){
      xPos = -150;
    }
    this.xPos += speed;
  }
  
}
