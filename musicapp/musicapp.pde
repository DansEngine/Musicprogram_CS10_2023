import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Library / import library / minim
//
//Global variables
Minim minim; //creates object to access all function
AudioPlayer song1; //create "play list" variableholding extensions WAV, AIFF, AU
int aW, aH;
float BX,BY,BW,BH;
Boolean trollB=false;
PImage josh;
String path = "../whyImage/land/" ;
String image = ".jpg";
//
void setup () {
  //sizew() or fullScreen()
  //Display algorithm
  //system background image
  aW = displayWidth;
  aH = displayHeight;
  //
  fullScreen ();
  //
  BX = aW*0;
  BY = aH*0;
  BW = aW-1;
  BH = aH-1;
  //
  minim = new Minim (this);
  String pathway = "../music system/mydownloadmusic/";
  String songyouwant = "whistletroll";
  String extension = ".mp3";
  song1 = minim.loadFile (pathway + songyouwant + extension);
}//End setup
void draw () {
  if (trollB=true) {
    troll ();
  }
  //Note: logical operators could be nested IFs
  if ( song1.isLooping() && song1.loopCount()!=-1 ) println("there are", song1.loopCount(), "loop left.");//
  if ( song1.isLooping() && song1.loopCount()==-1 ) println("looping lot.");
  if ( song1.isPlaying() && song1.isLooping() ) println("play -e^ipi");
  //
  //debug
  println ( "Song position", song1.position(), "Song length", song1.length() );
}//End draw
void keyPressed () {
  if (key=='P' || key=='p' ) {
    song1.play();
    //song1.loop(-1);
    //trollB=true;
  }
  
  if (key>='1' || key<='9' ) { //LoopButton
    String keystr = String.valueOf(key);
    println(keystr);
    int loopNum = int(keystr);
  if (key=='L' || key=='l' ) song1.loop(loopNum-1);
  if (key=='M' || key=='m' ) {
    if ( song1.isMuted() ) {
      //ERROR: song might not be playing
      //ask if it (.isPlaying()) playing or (!.isPlaying())playin't
      song1.unmute();
    } else {
      //possible error: might rewind the song
      song1.mute();
   }//End mute
  }// stop the speaker
 }
 //song1.loop(0);
 //
 //
 if ( key=='F' || key=='f' ) song1.skip(song1.length()); //SKIP forward 1 second (1000) milisecond
 if ( key=='R' || key=='r' ) song1.skip(song1.length()*-1); // SKIP backward 1 second (-1000) milisecond
}//End key

void mousePressed () {
}//End maus
//
//End main program
