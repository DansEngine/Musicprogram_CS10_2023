
void properties () {
  println("File Name", songListMetaData[0].fileName() ); //Data Correct, Verified in Console
  //Must use pure Java at OS Level to list fileName before loading Playlist
  println("Song Length (in milliseconds)", songListMetaData[0].length() );
  println("Song Length (in seconds)", songListMetaData[0].length()/1000 ); 
  println("Song Length (in minutes & seconds)", songListMetaData[0].length()/1000/60, "minutes", ( songListMetaData[0].length()/1000 - ( songListMetaData[0].length()/1000/60)*60 ), "seconds" ); //Gets Formula
  println("Song Title", songListMetaData[0].title() );
  println("Author", songListMetaData[0].author() );
  println("Composer", songListMetaData[0].composer() );
  println("Orchestra", songListMetaData[0].orchestra() );
  println("Album", songListMetaData[0].album() );
  println("Disk", songListMetaData[0].disc() );
  println("Publisher", songListMetaData[0].publisher() );
  println("Date Released", songListMetaData[0].date() );
  println("Copyright", songListMetaData[0].copyright() );
  println("Comments", songListMetaData[0].comment() );
  println("Lyrics", songListMetaData[0].lyrics() ); //OPTIONAL: Music App Sing Along
  println("Track", songListMetaData[0].track() );
  println("Genre", songListMetaData[0].genre() );
  println("Encoded", songListMetaData[0].encoded() );
}
