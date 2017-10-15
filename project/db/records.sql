DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL4 primary key,
  artist_name VARCHAR(255)
);

CREATE TABLE albums (
  id SERIAL4 primary key,
  album_name VARCHAR(255),
  quantity INT4,
  artist_id INT4 references artists(id),
  buy_price INT4,
  sell_price INT4
);
