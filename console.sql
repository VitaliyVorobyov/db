CREATE TABLE IF NOT EXISTS genres (
  genre_id SERIAL PRIMARY KEY,
  genre_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS artists (
  artist_id SERIAL PRIMARY KEY,
  artist_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS artists_genres (
  artist_id INT,
  genre_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
  album_id SERIAL PRIMARY KEY,
  album_name VARCHAR(255),
  release_year INT
);

CREATE TABLE IF NOT EXISTS tracks (
  track_id SERIAL PRIMARY KEY,
  track_name VARCHAR(255),
  duration INT,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS compilations (
  compilation_id SERIAL PRIMARY KEY,
  compilation_name VARCHAR(255),
  release_year INT
);

CREATE TABLE IF NOT EXISTS compilations_tracks (
  compilation_id INT,
  track_id INT,
  FOREIGN KEY (compilation_id) REFERENCES compilations(compilation_id),
  FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);

CREATE TABLE IF NOT EXISTS artists_albums (
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);