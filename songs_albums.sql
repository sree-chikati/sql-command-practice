CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    song_name VARCHAR(70) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    album_name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);


INSERT INTO Songs
    (song_name, album_id)
VALUES
    ('Any Colour You Like', 1),
    ('Here Comes The Sun', 2),
    ('Hotel California', 3),
    ('Born in the U.S.A', 4)
;
 
INSERT INTO Albums
    (album_name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;


/* Queries */
SELECT * FROM Songs;
SELECT * FROM Albums;


SELECT Songs.song_name, Albums.album_name FROM Songs
JOIN Albums ON Albums.id = Songs.album_id;


SELECT * FROM Albums
WHERE year_published <= 1980
    AND year_published >= 1970 


SELECT Songs.song_name, Albums.year_published FROM Songs
JOIN Albums ON Albums.id = Songs.album_id
WHERE Albums.year_published <= 1980
  AND Albums.year_published >= 1970;
 

SELECT album_name FROM Albums
WHERE album_name LIKE '%California%'