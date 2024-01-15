color gray = #DEDEDE; 
PImage pauseB, forward, previous;
void pain() {
  troll();
  //
  //
  if ( mouseX > PBX && mouseX < PBX + BPW && mouseY > BPY && mouseY < BPY + BPH) {
    fill (blue);
    noStroke ();
    ellipse (PBX, BPY, BPW, BPH);
  } else {
    noFill ();
    noStroke ();
    ellipse (PBX, BPY, BPW, BPH);
  }
  //
  //
  if ( mouseX > FBX && mouseX < FBX + BPW && mouseY > BPY && mouseY < BPY + BPH) {
    fill (blue);
    noStroke ();
    ellipse (FBX, BPY, BPW, BPH);
  } else {
    noFill ();
    noStroke ();
    ellipse (FBX, BPY, BPW, BPH);
  }
  //
  //
  previous = loadImage("../button function/previous.png");
  forward = loadImage("../button function/forward.png");
  pauseB = loadImage ("../button function/button.png");
  image (previous, PBX-(PBW/2), PBY-(PBH/2), PBW, PBH);
  image (forward, FBX-(FBW/2), FBY-(FBH/2), FBW, FBH);
  image (pauseB, BPX-(BPW/2), BPY-(BPH/2), BPW, BPH);
}//END pain
