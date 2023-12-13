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
Minim minim; //creates object to access all function
int numberOfSongs = 8;
int numberOfSoundEffects = 4;
AudioPlayer[] song = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffect = new AudioPlayer[ numberOfSoundEffects ];
AudioMetaData[] songMetaData = new AudioMetaData[ numberOfSongs ];
int aW, aH;
float BXT,BYT,BWT,BHT;
PFont generalFont;
Boolean trollB = false;
PImage josh;
//
println (path);
//
void setup () {
  //sizew() or fullScreen()
  //Display algorithm
  //system background image
  //
  minim = new Minim (this);
  String pathway = "music system/mydownloadmusic/";
  String songyouwant = "whistletroll";
  String extension = ".mp3";
  String path = sketchPath (path + songyouwant + extension);
  println (path);
  song[0] = minim.loadFile( path );
  songMetaData[0] = song[0].getMetaData();
  generalFont = createFont ("Agency FB Bold",48);
  //
  aW = displayWidth;
  aH = displayHeight;
  //
  fullScreen ();
  //
  BXT = aW*1/4;
  BYT = aH*0;
  BWT = aW/2;
  BHT = aH*3/10;
  //
  //repeat:  println("?", songMetaData1.?());
  println("File Name", songMetaData[0].fileName() ); //Data correct verify
  //
 properties ();
}//End setup
void draw () {
  /*
  if (key=='P' || key=='p' ) {
    //image (josh, BX, BY, BW, BH);
    //josh = loadImage (path + image );
  }
  */
  //Note: logical operators could be nested IFs
  if ( song[0].isLooping() && song[0].loopCount()!=-1 ) println("there are", song[0].loopCount(), "loop left.");//
  if ( song[0].isLooping() && song[0].loopCount()==-1 ) println("looping lot.");
  if ( song[0].isPlaying() && song[0].isLooping() ) println("play -e^ipi");
  //
  //debug
  println ( "Song position", songMetaData[0].position(), "Song length", songMetaData[0].length() );
  //
  //
  fill(255);
  rect(BXT, BYT, BWT, BHT);
  textAlign (CENTER, CENTER);
  int size = 30;
  fill(0);
  textFont (generalFont, size);
  text(songMetaData[0].title(), BXT, BYT, BWT, BHT);
  fill(255);
  //
  //
}//End draw
void keyPressed () {
  if (key=='P' || key=='p' ) {
    song[0].play();
    //song1.loop(-1);
    //trollB=true;
  }
  
  if (key>='1' || key<='9' ) { //LoopButton
    String keystr = String.valueOf(key);
    println(keystr);
    int loopNum = int(keystr);
  if (key=='L' || key=='l' ) song[0].loop(loopNum-1);
  if (key=='M' || key=='m' ) {
    if ( song[0].isMuted() ) {
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
 //
 //Simple Pause behaviour: .pause() & hold .position(), then Play
 if (key=='Y' || key=='y') {
   if ( song[0].isPlaying()==true ) {
     song[0].pause();
   } else {
     song[0].play();
   }
 }
}//End key

void mousePressed () {
}//End maus
//
//End main program
