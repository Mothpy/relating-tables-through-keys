CREATE TABLE songs 
(
  song_id INTEGER PRIMARY KEY generated by default AS identity,
  song_name VARCHAR(100) DEFAULT 'no song title',
  album_name VARCHAR(100) DEFAULT 'no album title',
  artist INTEGER NOT NULL,
  CONSTRAINT fk_artist FOREIGN KEY (artist) REFERENCES artists(artist_id) ON DELETE CASCADE
  );