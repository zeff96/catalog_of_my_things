CREATE DATABASE catalog_of_things;

CREATE TABLE Author(
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name  VARCHAR(255)
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) 
);

CREATE TABLE Game(
  id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id INT,
  archived BOOLEAN,
  multiplayer VARCHAR(3),
  last_played_at  DATE,
  PRIMARY KEY(id),
  CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES Genre(id)
  CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES Author(id)
  CONSTRAINT fk_source_id FOREIGN KEY(source_id) REFERENCES Source(id)
  CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES Label(id)
);

CREATE TABLE music_albums (
  id SERIAL PRIMARY KEY,
  publish_date DATE,
  genre_id INT,
  author_id INT,
  label_id INT,
  on_spotify BOOLEAN,
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (label_id) REFERENCES labels(id)
);