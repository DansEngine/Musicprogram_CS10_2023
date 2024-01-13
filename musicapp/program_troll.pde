float IAX, IAY, IAW, IAH;
void troll() {
  IAX = aW*3/8;
  IAY = aH*3/8;
  IAW = aW*1/4;
  IAH = aH*1/4;
  tint(122);
  if (songList[0].isPlaying()) {
    image (img, BX, BY, BW, BH);
    noTint();
    image (img, IAX, IAY, IAW, IAH);
  } else if (songList[1].isPlaying()) {
    image (josh, BX, BY, BW, BH);
    noTint();
    image (josh, IAX, IAY, IAW, IAH);
  } else if (songList[2].isPlaying()) {
    image (wego, BX, BY, BW, BH);
    noTint();
    image (wego, IAX, IAY, IAW, IAH);
  } else if (songList[3].isPlaying()) {
    image (wave, BX, BY, BW, BH);
    noTint();
    image (wave, IAX, IAY, IAW, IAH);
  }
}//END troll
