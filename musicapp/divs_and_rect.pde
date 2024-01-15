color gray = #DEDEDE; 
PImage pauseB, forward, previous;
void pain() {
  troll();
  //
  //
  if ( mouseX > (PBX-PBH/2) && mouseX < (PBX-PBH/2) + BPW && mouseY > (PBY-PBH/2) && mouseY < (PBY-PBH/2) + BPH) {
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
  if ( mouseX > (FBX-FBW/2) && mouseX < (FBX-FBW/2) + FBW && mouseY > (FBY-FBH/2) && mouseY < (FBY-FBH/2) + FBH) {
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
