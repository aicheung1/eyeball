PImage thankyou;
PImage crop;
PImage heart;
PImage house;
PFont font;
boolean x = false;
boolean q = true;
boolean w = false;
boolean e = false;
boolean r = false;
boolean t = false;
int x1 = 0;
int x2 = 400;
int x3 = 580;
int x4 = 0;


void setup(){
  size(600,400);
  /* @pjs preload="house.jpg" */
  house = addImage("house.jpg");
  image(house,0,0); 
}

void draw(){
  if(q==true){
    noStroke();
    fill(0,random(100,150),0);
    rect(x1,370,30,30);
    x1=x1+10;
    if(x1==580){
      q = false;
      w = true;
    }
  }
  if(w==true){
    fill(0,random(100,150),0);
    rect(570,x2,30,30);
    x2=x2-10;
    if(x2==20){
      w = false;
      e = true;
    }
  }
  if(e==true){
    fill(0,random(100,150),0);
    rect(x3,0,30,30);
    x3=x3-10;
    if(x3==20){
      e = false;
      r = true;
    }
  }
  if(r==true){
    fill(0,random(100,150),0);
    rect(0,x4,30,30);
    x4=x4+10;
    if(x4==370){
      r = false;
      t = true;
    }
  }
  if(t==true){
    noStroke();
    fill(#4FAA56);
    ellipse(300,200,100,100);
    fill(255);
    triangle(285,180,285,220,325,200);
   if(mousePressed){
    x = true;
   }
  }
  if(x==true){
    background(255);
    // @pjs preload="thank you.jpg"
    thankyou = addImage("thank you.jpg");
    image(thankyou,150,-60);
    // @pjs preload="crop.jpg" 
    crop = addImage("crop.jpg");
    image(crop,70,175,width/1.3,height/2);
    fill(0);
    font = loadFont("VladimirScript-48.vlw");
    textFont(font);
    textSize(25);
    text("for everything you do",210,370);
    stroke(4);
    fill(255,230,0);
    ellipse(70,80,100,100);
    noFill();
    strokeWeight(4);
    arc(50, 75, 20, 20, radians(-180), radians(0));
    arc(95, 75, 20, 20, radians(-180), radians(0));
    arc(70, 90, 50, 50, radians(0), radians(180));
    fill(234,185,78); 
    beginShape(); 
    vertex(490,120); 
    vertex(510,110); 
    vertex(500,130); 
    vertex(510,150); 
    vertex(490,140); 
    vertex(470,150); 
    vertex(480,130);  
    vertex(470,110);
    vertex(490,120);  
    endShape();  
    beginShape(); 
    vertex(490,100); 
    vertex(480,120);  
    vertex(460,130);  
    vertex(480,140);  
    vertex(490,160); 
    vertex(500,140); 
    vertex(520,130);  
    vertex(500,120); 
    vertex(490,100); 
    endShape(); 
    fill(250); 
    beginShape();  
    vertex(490,106); 
    vertex(485,126); 
    vertex(470,131);  
    vertex(485,136);  
    vertex(490,151);  
    vertex(495,136); 
    vertex(510,131);  
    vertex(495,126); 
    vertex(490,106); 
    endShape(); 
    // @pjs preload="heart.png"
    heart = addImage("heart.png");
    image(heart,mouseX-50,mouseY-40,width/7,height/7);
  }
}
