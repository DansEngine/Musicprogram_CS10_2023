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
int numberOfSongs = 1;
int numberOfSoundEffects = 4;
AudioPlayer[] song = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffect = new AudioPlayer[ numberOfSoundEffects ];
AudioMetaData[] songMetaData = new AudioMetaData[ numberOfSongs ];
int aW, aH;
float BXT,BYT,BWT,BHT;
float BX, BY, BW, BH;
float BPX, BPY, BPW, BPH;
PFont generalFont;
Boolean trollB = false;
PImage josh;
int radius, radius2;
float ratio, ratio2;
float ADW ,ADH;
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
  minim = new Minim (this);
  String pathway = "music system/mydownloadmusic/";
  String songyouwant = "whistletroll.mp3";
  String extension = ".mp3";
  String pathsong = sketchPath (pathway + songyouwant);
  println (pathsong);
  song[0] = minim.loadFile( pathsong );
  songMetaData[0] = song[0].getMetaData();
  generalFont = createFont ("Agency FB Bold",48);
  //
  //system background divs
  String path = "../trollimage/imageUsed/" ;
  String image = "testing.jpg";
  BX = aW*0;
  BH = aH*0;
  BW = aW-1;
  BH = aH-1;
  String pathimage = sketchPath (path + image);
  josh = loadImage (pathimage ) ;
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
  println ( "Song position", song[0].position(), "Song length", songMetaData[0].length() );
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
  if ( trollB==true ) {
    pain();
  }
  //
  //
}//End draw
void keyPressed () {
  if (key=='P' || key=='p' ) {
    song[0].play();
    //song1.loop(-1);
    trollB=true;
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
