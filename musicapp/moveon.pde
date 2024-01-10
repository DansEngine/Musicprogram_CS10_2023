 void state () {
    if ( songList[currentSong].isPlaying() ) {
    if ( stopBoolean==true || pauseBoolean==true ) {
      songList[currentSong].pause();
    }
    if ( stopBoolean==true ) songList[currentSong].rewind();
  } else {
    if ( changeState==false ) {
      songList[currentSong].rewind();
      if (currentSong==numberOfSongs-1) {
        currentSong=0;
      } else {
        currentSong = currentSong + 1; //currentSong--; currentSong-=1}
      }
      songList[currentSong].play();
    }
    if ( stopBoolean==false && pauseBoolean==false && changeState==true ) {
      songList[currentSong].rewind();
      songList[currentSong].play();
      changeState=false;
    }
    if ( pauseBoolean==false && stopBoolean==false  && changeState==true) {
      songList[currentSong].play();
      changeState=false;
    }
  }
  }
