TRUNCATE TABLE artists RESTART IDENTITY;
TRUNCATE TABLE albums RESTART IDENTITY;

INSERT INTO artists (name, genre) VALUES ('The JBs', 'Funk');
INSERT INTO artists (name, genre) VALUES ('Bob Dylan', 'Singer-Songwriter');


INSERT INTO albums (title, release_year, artist_id) VALUES ('Food For Thought', '1972', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ('Groove Machine', '1979', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ('Tangled Up In Blue', '1975', '2');
INSERT INTO albums (title, release_year, artist_id) VALUES ('The Times They Are A-Changin', '1964', '2');