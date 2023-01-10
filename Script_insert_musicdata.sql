INSERT INTO singer (name)
VALUES 
('Eminem'),
('50 cent'),
('Nina Kraviz'),
('Ben Böhmer'),
('Red Hot Chili Peppers'),
('The Killers'),
('Thirty seconds to mars'),
('Placebo');

INSERT INTO genre (name)
VALUES 
('rap'),
('hip-hop'),
('rock'),
('techno'),
('deep house'),
('alternative rock');

INSERT INTO albums (name, year)
VALUES
('Breathing', '2020'),
('locus error', '2018'),
('Curtain Call: The Hits', '2005'),
('Curtis', '2007'),
('Californication', '1999'),
('Hot Fuss', '2004'),
('A Beautiful Lie', '2005'),
('Black Market Music', '2000');

INSERT INTO tracks (name, duration, album_id)
VALUES
('Passive Aggressive', '00:05:24', '8'),
('Days Before You Came', '00:04:15', '8'),
('A Beautiful Lie', '00:04:05', '7'),
('The Kill', '00:03:52', '7'),
('ATTACK', '00:03:08', '7'),
('Mr. Brightside', '00:03:42', '6'),
('Somebody Told Me', '00:03:20', '6'),
('Scar Tissue', '00:03:35', '5'),
('Californication', '00:05:29', '5'),
('Ayo Technology', '00:04:09', '4'),
('I Get Money', '00:03:43', '4'),
('Lose Yourself', '00:05:20', '3'),
('The Real Slim Shady', '00:04:44', '3'),
('DANCE', '00:03:00', '2'),
('Wall Of Strings', '00:04:14', '1'),
('Lost In My Mind', '00:03:30', '1');

INSERT INTO collections (name, release_year)
VALUES
('Rock your body', '2012'),
('Rap is your destiny', '2008'),
('Electro music needs your charge', '2022'),
('Hits of 2000s', '2010'),
('Alternative is your second name', '2007'),
('Take your techno pill', '2021'),
('Dont confuse Indie with India', '2010'),
('Memories', '2022');


INSERT INTO genre_singer (genre_id, singer_id)
VALUES
('1', '1'),
('1', '2'),
('2', '1'),
('2', '2'),
('3', '5'),
('3', '6'),
('3', '7'),
('3', '8'),
('4', '3'),
('5', '4'),
('6', '5'),
('6', '6'),
('6', '7'),
('6', '8');

INSERT INTO singer_album (singer_id, album_id)
VALUES
('1', '3'),
('2', '4'),
('3', '2'),
('4', '1'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

INSERT INTO collection_track (track_id, collection_id)
VALUES 
('1', '1'),
('2', '1'),
('3', '1'),
('4', '1'),
('5', '1'),
('6', '1'),
('7', '1'),
('8', '1'),
('10', '2'),
('11', '2'),
('12', '2'),
('13', '2'),
('14', '3'),
('15', '3'),
('4', '4'),
('7', '4'),
('9', '4'),
('10', '4'),
('12', '4'),
('1', '5'),
('3', '5'),
('6', '5'),
('8', '5'),
('9', '5'),
('14', '6'),
('15', '6'),
('1', '7'),
('2', '7'),
('6', '7'),
('7', '7'),
('3', '8'),
('5', '8'),
('9', '8'),
('11', '8'),
('12', '8');














