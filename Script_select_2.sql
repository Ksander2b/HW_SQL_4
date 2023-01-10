SELECT g.name, COUNT(singer_id) AS singers FROM genre_singer gs 
JOIN genre g ON gs.genre_id = g.id 
GROUP BY g.name
ORDER BY COUNT(singer_id) DESC;

SELECT Count(t.name) FROM tracks t
JOIN albums a 
ON t.album_id = a.id
WHERE a.YEAR BETWEEN 2019 AND 2020;

SELECT a.name AS album_name, AVG(t.duration) AS av_track_length FROM tracks t
JOIN albums a 
ON t.album_id = a.id
GROUP BY a.name;

SELECT s.name AS singer_name, a.YEAR AS album_year FROM singer s 
JOIN singer_album sa 
ON s.id = sa.singer_id 
JOIN albums a 
ON sa.singer_id = a.id 
WHERE a.YEAR NOT IN ('2020');

SELECT DISTINCT c.name FROM collections c 
JOIN collection_track ct ON c.id = ct.collection_id
JOIN tracks t ON ct.track_id = t.id 
JOIN albums a ON t.album_id = a.id 
JOIN singer_album sa ON a.id = sa.album_id 
JOIN singer s ON sa.singer_id = s.id 
WHERE s.name = 'Thirty seconds to mars';

SELECT a.name FROM albums a
JOIN singer_album sa ON a.id = sa.album_id 
JOIN singer s ON sa.singer_id = s.id 
JOIN genre_singer gs ON s.id = gs.singer_id
GROUP BY a.name
HAVING COUNT(gs.genre_id) > 1;

SELECT t.name FROM tracks t 
LEFT JOIN collection_track ct ON t.id = ct.track_id
WHERE ct.collection_id IS NULL;

SELECT s.name FROM singer s 
JOIN singer_album sa ON s.id = sa.singer_id
JOIN albums a ON sa.album_id = a.id
JOIN tracks t ON a.id = t.album_id 
WHERE t.duration = (SELECT MIN(t2.duration) FROM tracks t2);

SELECT a.name FROM albums a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.name 
ORDER BY COUNT(t.name)
LIMIT 1;











