void properties () {
  //println("effect Path", soundEffectMetaData[currentEffect].fileName() );
  println("File Name", songListMetaData[currentSong].fileName() ); //Data Correct, Verified in Console
  //Must use pure Java at OS Level to list fileName before loading Playlist
  println("Song Length (in milliseconds)", songListMetaData[currentSong].length() );
  println("Song Length (in seconds)", songListMetaData[currentSong].length()/1000 ); 
  println("Song Length (in minutes & seconds)", songListMetaData[currentSong].length()/1000/60, "minutes", ( songListMetaData[currentSong].length()/1000 - ( songListMetaData[currentSong].length()/1000/60)*60 ), "seconds" ); //Gets Formula
  println("Song Title", songListMetaData[currentSong].title() );
  println("Author", songListMetaData[currentSong].author() );
  println("Composer", songListMetaData[currentSong].composer() );
  println("Orchestra", songListMetaData[currentSong].orchestra() );
  println("Album", songListMetaData[currentSong].album() );
  println("Disk", songListMetaData[currentSong].disc() );
  println("Publisher", songListMetaData[currentSong].publisher() );
  println("Date Released", songListMetaData[currentSong].date() );
  println("Copyright", songListMetaData[currentSong].copyright() );
  println("Comments", songListMetaData[currentSong].comment() );
  println("Lyrics", songListMetaData[currentSong].lyrics() ); //OPTIONAL: Music App Sing Along
  println("Track", songListMetaData[currentSong].track() );
  println("Genre", songListMetaData[currentSong].genre() );
  println("Encoded", songListMetaData[currentSong].encoded() );
}
