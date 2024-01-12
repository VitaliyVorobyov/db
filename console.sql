CREATE TABLE genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(255)
);

CREATE TABLE artists (
  artist_id INT PRIMARY KEY,
  artist_name VARCHAR(255)
);

CREATE TABLE artists_genres (
  artist_id INT,
  genre_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE albums (
  album_id INT PRIMARY KEY,
  album_name VARCHAR(255),
  release_year INT
);

CREATE TABLE tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(255),
  duration INT,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE compilations (
  compilation_id INT PRIMARY KEY,
  compilation_name VARCHAR(255),
  release_year INT
);

CREATE TABLE compilations_tracks (
  compilation_id INT,
  track_id INT,
  FOREIGN KEY (compilation_id) REFERENCES compilations(compilation_id),
  FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);

CREATE TABLE artists_albums (
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);