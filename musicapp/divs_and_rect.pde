color gray = #DEDEDE; 
PImage pauseB;
void pain() {
  troll();
  if ( mouseX > BPX && mouseX < BPX + BPW && mouseY > BPY && mouseY < BPY + BPH) {
    fill (blue);
    noStroke ();
    ellipse (BPX, BPY, BPW, BPH);
  } else {
    noFill ();
    noStroke ();
    ellipse (BPX, BPY, BPW, BPH);
  }
  pauseB = loadImage ("../button function/button.png");
  image (pauseB, BPX-(BPW/2), BPY-(BPH/2), BPW, BPH);
}//END pain
