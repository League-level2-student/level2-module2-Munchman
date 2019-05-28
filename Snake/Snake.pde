//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {
int snakex;
int snakey;

//Add x and y member variables. They will hold the corner location of each segment of the snake.


// Add a constructor with parameters to initialize each variable.
Segment(int snakex,int snakey){
  this.snakex = snakex;
  
  this.snakey = snakey;
}




}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
Segment head;
int foodx;
int foody;
int direction=UP;
int score=1;

//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500,500);
head=new Segment(250,250);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
foodx = ((int)random(50)*10);
foody = ((int)random(50)*10);

}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(0,0,0);
  drawFood();
  drawSnake();
}

void drawFood() {
  //Draw the food
  fill(100,10,200);
  rect(foodx,foody,10,10);
  
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
 fill(10,200,50);
  rect(head.snakex,head.snakey,10,10);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
if(key==CODED){
  if(keyCode == UP){
    direction=UP;
  }else if(keyCode==DOWN){
    direction=DOWN;
  }else if(keyCode==LEFT){
    direction=LEFT;
  }else if(keyCode==RIGHT){
    direction=RIGHT;
  }
}
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    // move head up here 
    head.snakey=head.snakey-10;
    break;
  case DOWN:
  head.snakey=head.snakey+10;
    break;
  case LEFT:
   // figure it out 
     head.snakex=head.snakex+10;
    break;
  case RIGHT:
   head.snakex=head.snakex-10;
    break;
  }

}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if(head.snakex>500){
   head.snakex=0;
 }
 if(head.snakex<0){
   head.snakex=500;
 }
 if(head.snakey<0){
   head.snakey=500;
 }
 if(head.snakey>500){
   head.snakey=0;
 }
 
 
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
if(head.snakex==foodx&&head.snakey==foody){
 score+=1;
 }
 
 
} 
