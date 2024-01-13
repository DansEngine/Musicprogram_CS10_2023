//Library / import library / minim
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global variables
//
File musicFolder;
File effectFolder;
Minim minim; //creates object to access all function
int numberOfSongs = 4, numberOfSoundEffects = 1, currentSong=0, currentEffect= 0;
AudioPlayer[] songList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
AudioMetaData[] songListMetaData = new AudioMetaData[numberOfSongs]; //same as above
AudioMetaData[] soundEffectMetaData = new AudioMetaData [numberOfSoundEffects];
AudioPlayer[] soundEffect = new AudioPlayer[ numberOfSoundEffects ];
int aW, aH;
float BXT,BYT,BWT,BHT;
float BX, BY, BW, BH;
float BPX, BPY, BPW, BPH;
PFont generalFont;
color blue=#00DBFF;
Boolean trollB = false;
PImage img, josh, wave, wego;
String image;
String imaging;
int radius, radius2;
float ratio, ratio2;
float ADW ,ADH;
Boolean changeState=false, stopBoolean=false, pauseBoolean=false, startB=false, pause=false;
//
void setup () {
  //sizew() or fullScreen()
  fullScreen ();
  //Display algorithm
  ADW = +displayWidth;
  ADH = +displayHeight;
  /*
  if (ADW => ADH) {
    ratio = ADH/ADW;
  }
  */
  //radius = ratio;
  aW = displayWidth;
  aH = displayHeight;
  //system background image
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //Music File Load
  String Effect = "soundEffect/freebruh/";
  String pathway = "music system/mydownloadmusic/";
  String extension = ".mp3";
  String pathsong = sketchPath (pathway);
  String pathEffect = sketchPath (Effect);
  musicFolder = new File(pathsong);
  int musicFileCount = musicFolder.list().length;
  File[] musicFiles = musicFolder.listFiles(); //String of Full Directies
  String[] songFilePathway = new String[musicFileCount];
  for ( int i = 0; i < musicFiles.length; i++ ) {
    songFilePathway[i] = ( musicFiles[i].toString() );
  }
  //Re-execute songList Population, similar to DIV Population
  numberOfSongs = musicFileCount; //Placeholder Only, reexecute lines after fileCount Known
  songList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
  printArray(songList);
  songListMetaData = new AudioMetaData[numberOfSongs]; //same as above
  for ( int i=0; i<musicFileCount; i++ ) {
    printArray(songList);
    songList[i]= minim.loadFile( songFilePathway[i] );
    songListMetaData[i] = songList[i].getMetaData();
  } //End Music Load
  // sound effect
  /*
  effectFolder = new File(pathEffect);
  int effectAmount = effectFolder.list().length;
  File[] effectFiles = effectFolder.listFiles();
  String[] effectForward = new String[effectAmount];
  for (int i = 0;  i < effectFiles.length; i++ ) {
    effectForward[i] = (effectFiles[i].toString() );
  }
  numberOfSoundEffects = effectAmount;
  soundEffect = new AudioPlayer[numberOfSoundEffects];
  printArray(soundEffect);
  soundEffectMetaData = new AudioMetaData [numberOfSoundEffects];
  for ( int i=0; i<musicFileCount; i++ ) {
  soundEffect[i]=minim.loadFile(effectForward[i]);
  }
  */
  //
  properties();
  //
  generalFont = createFont ("Agency FB Bold",48);
  //
  //system background divs
  String path = "../trollimage/imageUsed/" ;
    image = "Tomahawk_Block_IV_cruise_missile_-crop.jpg";
    String joshI = "testing.jpg";
    String simps="maxresdefault.jpg";
    String ways = "0653b5152ef6475caab86f0cf76b448f_464_464.jpg";
    /*
  } else if ( songList[currentSong].isPlaying()) {
    image= "testing.jpg";
  }
  */
  imaging = image;
  BX = aW*0;
  BH = aH*0;
  BW = aW-1;
  BH = aH-1;
  String waydown = sketchPath ( path + ways);
  String pathimage = sketchPath (path + imaging);
  String joshimage = sketchPath (path + joshI);
  String wavesimp = sketchPath (path + simps);
  println("identify",pathimage);
  wego = loadImage (waydown);
  wave = loadImage (wavesimp);
  img = loadImage (pathimage ) ;
  josh = loadImage (joshimage);
  //
  BXT = aW*1/4;
  BYT = aH*0;
  BWT = aW/2;
  BHT = aH*3/10;
  //
  BPX = aW*1/2-(BPW/2);
  BPY = aH*7/10;
  BPW = aW*1/15 * aH/aW;
  BPH = aH*1/15;
  //
  //repeat:  println("?", songMetaData1.?());
  //println("File Name", songListMetaData[0].fileName() ); //Data correct verify
  //
 //songList[currentSong].play();
}//End setup
void draw () {
  /*
  if (key=='P' || key=='p' ) {
    //image (josh, BX, BY, BW, BH);
    //josh = loadImage (path + image );
  }
  */
  //Note: logical operators could be nested IFs
  if ( songList[currentSong].isLooping() && songList[currentSong].loopCount()!=-1 ) println("there are", songList[currentSong].loopCount(), "loop left.");//
  if ( songList[currentSong].isLooping() && songList[currentSong].loopCount()==-1 ) println("looping lot.");
  if ( songList[currentSong].isPlaying() && songList[currentSong].isLooping() ) println("play -e^ipi");
  //
  //debug
  println ( "Song position", songList[currentSong].position(), "Song length", songListMetaData[currentSong].length() );
  //
  //
  fill(255);
  //rect(BXT, BYT, BWT, BHT);
  textAlign (CENTER, CENTER);
  int size = 30;
  fill(0);
  textFont (generalFont, size);
  //text(songListMetaData[0].title(), BXT, BYT, BWT, BHT);
  fill(255);
  pain();
  //autoplay
  if ( songList[currentSong].isPlaying()==true ) {
    if ( stopBoolean==true || pauseBoolean==true ) {
      songList[currentSong].pause();
    }
   if ( stopBoolean==true || pauseBoolean==true ) songList[currentSong].rewind();
  } else {
    if ( changeState==false ) {
      songList[currentSong].rewind();
      if (currentSong==numberOfSongs-1) {
        currentSong=0;
      } else {
        currentSong = currentSong + 1; //currentSong--; currentSong-=1}
      }
      songList[currentSong].play(songList[currentSong].position());
    }
      songList[currentSong].play();
    if ( stopBoolean==false && pauseBoolean==false && changeState==true ) {
      songList[currentSong].play();
      changeState=false;
      //println("hereD5", songList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
    }
    if ( pauseBoolean==false && stopBoolean==false  && changeState==true) {
      songList[currentSong].play();
      changeState=false;
    }
  }  //
  //
  /*
  if (songList[currentSong].isPlaying () ) {
    //Empty IF, TRUE
  } else {
    //currentSong at end of FILE
    songList[currentSong].rewind();
    //currentSong = currentSong+1;
    songList[currentSong].play();
  }
  */
  //
  //
}//End draw
void keyPressed () {
  //broken for now but fix variable should fixed
  if ( key=='P' || key=='p' ) {
    changeState=true;
    if ( pauseBoolean==false ) {
      pauseBoolean=true;
      println("herek2", pauseBoolean);
    } else {
      pauseBoolean=false;
      println("herek3", pauseBoolean);
      //playList[currentSong].play();
    }
    if (  stopBoolean==true ) {
      stopBoolean=false;
    }
    println ( "herek4", songList[currentSong].isPlaying(), pauseBoolean, stopBoolean, changeState );
  }
  //
  if ( key=='S' | key=='s' ) {
    changeState=true;
    if ( stopBoolean == false ) {
      stopBoolean = true;
      //playList[currentSong].pause(); //auto .rewind()
    } else {
      stopBoolean = false;
      //playList[currentSong].rewind(); //Not Necessary
    }
  }
  /*
  if (key>='1' || key<='9' ) { //LoopButton
    String keystr = String.valueOf(key);
    println(keystr);
    int loopNum = int(keystr);
  if (key=='L' || key=='l' ) song[0].loop(loopNum-1);
  if (key=='M' || key=='m' ) {
    if ( songList[0].isMuted() ) {
      //ERROR: song might not be playing
      //ask if it (.isPlaying()) playing or (!.isPlaying())playin't
      song[0].unmute();
    } else {
      //possible error: might rewind the song
      song[0].mute();
   }//End mute
  }// stop the speaker
 }
 //song1.loop(0);
 //
 //
 if ( key=='F' || key=='f' ) song[0].skip(songMetaData[0].length()); //SKIP forward 1 second (1000) milisecond
 if ( key=='R' || key=='r' ) song[0].skip(songMetaData[0].length()*-1); // SKIP backward 1 second (-1000) milisecond
 //
 //Simple Stop behaviour: ask if .playing() & .pause() & .rewind(), or .rewind()
 if ( key=='S' || key=='s' ) {
   if ( song[0].isPlaying() ) {
     song[0].pause();
   } else {
     song[0].rewind();
   }
 }
 */
 //
 //Simple Pause behaviour: .pause() & hold .position(), then Play
  if ( key==CODED && keyCode==RIGHT ) { //Previous
    if ( songList[currentSong].isPlaying() ) {
      songList[currentSong].pause();
      songList[currentSong].skip(songListMetaData[currentSong].length()-songList[currentSong].position());
      if (currentSong==0) {
        currentSong=numberOfSongs - 1;
      } else {
        if (currentSong<(numberOfSongs-1)) {
        currentSong = currentSong + 1; //currentSong--; currentSong-=1}
      } else if (currentSong>(numberOfSongs-1))
        currentSong = 0;
        songList[currentSong].play();
      }
    }
  }
    //
  if ( key==CODED && keyCode==LEFT ) { //Previous
    if ( songList[currentSong].isPlaying() ) {
      songList[currentSong].pause();
      songList[currentSong].rewind();
      if (currentSong==0) {
        currentSong=numberOfSongs-1;
      } else {
        currentSong = currentSong - 1; //currentSong--; currentSong-=1}
      }
    }
    println(currentSong);
    songList[currentSong].play();
  } //End Previous
    //
 if (key=='Y' || key=='y') {
   if ( songList[currentSong].isPlaying()==true ) {
     songList[currentSong].pause();
   } else {
     songList[currentSong].play();
   }
 }
}//End key
void mousePressed () {
  /*
  if ( mouseX > BPX && mouseX < BPX + BPW && mouseY > BPY && mouseY < BPY + BPH) {
  pause=true;
  }
  if (pause=true) {
    changeState=true;
    if ( pauseBoolean==false ) {
      pauseBoolean=true;
      println("herek2", pauseBoolean);
    } else {
      pauseBoolean=false;
      println("herek3", pauseBoolean);
      //songList[currentSong].play();
    }
    if (  stopBoolean==true ) {
      stopBoolean=false;
    }
    println ( "this one", songList[currentSong].isPlaying(), pauseBoolean, stopBoolean, changeState );
  }
  */
}//End maus
//
//End main program
