CREATE TABLE IF NOT EXISTS Genre(
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer(
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_singer(
genre_id INTEGER REFERENCES Genre(id),
singer_id INTEGER REFERENCES Singer(id),
CONSTRAINT gs PRIMARY KEY(genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Albums(
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_album(
singer_id INTEGER REFERENCES Singer(id),
album_id INTEGER REFERENCES Albums(id),
CONSTRAINT sa PRIMARY KEY(singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks(
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
duration TIME NOT NULL,
album_id INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections(
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection_track(
track_id INTEGER REFERENCES Tracks(id),
collection_id INTEGER REFERENCES Collections(id),
CONSTRAINT ct PRIMARY KEY(track_id, collection_id)
);






