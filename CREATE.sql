CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year_of_manufacture INTEGER not NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES albums(id),
	name VARCHAR(100) NOT NULL,
	track_duration INTEGER not NULL
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year_of_manufacture INTEGER not NULL
);

CREATE TABLE IF NOT EXISTS List_Genres_Performers (
	performer_id INTEGER REFERENCES Performers(id),
	genre_id INTEGER REFERENCES Genres(id),
	CONSTRAINT id_lgp PRIMARY KEY (performer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS List_Albums_Performers (
	performer_id INTEGER REFERENCES Performers(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT id_lap PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS List_Tracks_Collections (
	collectoin_id INTEGER REFERENCES Collections(id),
	track_id INTEGER REFERENCES Tracks(id),
	CONSTRAINT id_ltc PRIMARY KEY (collectoin_id, track_id)
);
