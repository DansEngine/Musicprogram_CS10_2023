void troll() {
  if (songList[0].isPlaying()) {
    image (img, BX, BY, BW, BH);
  } else if (songList[1].isPlaying()) {
    image (josh, BX, BY, BW, BH);
  } else if (songList[2].isPlaying()) {
    image (wego, BX, BY, BW, BH);
  } else if (songList[3].isPlaying()) {
    image (wave, BX, BY, BW, BH);
  }
  println ("the waveis ",wave);
}//END troll
