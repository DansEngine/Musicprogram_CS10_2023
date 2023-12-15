void properties () {
  println("File Name", songMetaData[0].fileName() ); //Data Correct, Verified in Console
  //Must use pure Java at OS Level to list fileName before loading Playlist
  println("Song Length (in milliseconds)", songMetaData[0].length() );
  println("Song Length (in seconds)", songMetaData[0].length()/1000 ); 
  println("Song Length (in minutes & seconds)", songMetaData[0].length()/1000/60, "minutes", ( songMetaData[0].length()/1000 - ( songMetaData[0].length()/1000/60)*60 ), "seconds" ); //Gets Formula
  println("Song Title", songMetaData[0].title() );
  println("Author", songMetaData[0].author() );
  println("Composer", songMetaData[0].composer() );
  println("Orchestra", songMetaData[0].orchestra() );
  println("Album", songMetaData[0].album() );
  println("Disk", songMetaData[0].disc() );
  println("Publisher", songMetaData[0].publisher() );
  println("Date Released", songMetaData[0].date() );
  println("Copyright", songMetaData[0].copyright() );
  println("Comments", songMetaData[0].comment() );
  println("Lyrics", songMetaData[0].lyrics() ); //OPTIONAL: Music App Sing Along
  println("Track", songMetaData[0].track() );
  println("Genre", songMetaData[0].genre() );
  println("Encoded", songMetaData[0].encoded() );
}
