DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE albums (
  id SERIAL4 primary key,
  title VARCHAR(255),
  genre VARCHAR(255),
  cost_price INT4,
  retail_price INT4,
  stock_level INT4,
  artist_id INT4 REFERENCES artists(id)
);
