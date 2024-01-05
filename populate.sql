INSERT INTO Game (game_link, game_name, age_rating, platform_name)
VALUES ('/game/game-boy-advance/final-fantasy-tactics-advance', 'Final Fantasy Tactics Advance', 'E', 'GBA')
RETURNING game_id;
    
INSERT INTO Game (game_link, game_name, age_rating, platform_name)
VALUES ('/game/ds/sparkle-snapshots', 'Sparkle Snapshots', '', 'DS')
RETURNING game_id;
    
INSERT INTO Game (game_link, game_name, age_rating, platform_name)
VALUES ('/game/3ds/new-super-mario-bros-2-coin-challenge-pack-b', 'New Super Mario Bros. 2: Coin Challenge Pack B', 'E', '3DS')
RETURNING game_id;
    
INSERT INTO Genre (genre_name) VALUES ('Turn-Based') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (1, 1);
    
INSERT INTO Genre (genre_name) VALUES ('Strategy') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (1, 2);
    
INSERT INTO Genre (genre_name) VALUES ('Fantasy') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (1, 3);
    
INSERT INTO Genre (genre_name) VALUES ('Edutainment') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (2, 4);
    
INSERT INTO Genre (genre_name) VALUES ('Miscellaneous') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (2, 5);
    
INSERT INTO Genre (genre_name) VALUES ('Platformer') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (3, 6);
    
INSERT INTO Genre (genre_name) VALUES ('2D') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (3, 7);
    
INSERT INTO Genre (genre_name) VALUES ('Action') RETURNING genre_id;
    
INSERT INTO Game_genre(game_id, genre_id) VALUES (3, 8);
    
INSERT INTO Developer (dev_name) VALUES ('Square Enix') RETURNING dev_id;
    
INSERT INTO Game_developer(game_id, dev_id) VALUES (1, 1);
    
INSERT INTO Developer (dev_name) VALUES ('Nintendo') RETURNING dev_id;
    
INSERT INTO Game_developer(game_id, dev_id) VALUES (2, 2);
    
INSERT INTO Game_developer(game_id, dev_id) VALUES (3, 2);
    
INSERT INTO Meta_rating(game_id, meta_score, user_score) VALUES (1, '87.0', '9.1');
    
INSERT INTO Meta_rating(game_id, meta_score, user_score) VALUES (2, '-1', '-1');
    
INSERT INTO Meta_rating(game_id, meta_score, user_score) VALUES (3, '-1', '7.1');
    
INSERT INTO Date(game_id, date) VALUES (1, 'Sep 8, 2003');
    
INSERT INTO Date(game_id, date) VALUES (2, 'Nov 2, 2009');
    
INSERT INTO Date(game_id, date) VALUES (3, 'Oct 25, 2012');