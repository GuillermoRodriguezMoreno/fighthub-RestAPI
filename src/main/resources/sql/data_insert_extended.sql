
USE fighthub_sql;

-- CATEGORY
INSERT INTO category (name) VALUES
                                ('Professional'),
                                ('Amateur'),
                                ('Semi-Professional'),
                                ('Junior');

-- STYLE
INSERT INTO style (name) VALUES
                             ('Boxing'),
                             ('Muay Thai'),
                             ('Brazilian Jiu-Jitsu'),
                             ('Kickboxing'),
                             ('K1'),
                             ('MMA');

-- ROLE
INSERT INTO role (role) VALUES
                            ('ADMIN'),
                            ('FIGHTER'),
                            ('CLUB_ADMIN');

-- FIGHTER
INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1986-01-07', 'kalegria@example.com', '&69GvXhf', '2024-03-17', 'ealberdi',
        NULL, True, 'Laudantium saepe occaecati illo. Facilis at odio.',
        7, 'Female', 248.79, 21, 36.415056, -4.040584, 6,
        'Berta Mayol', 42, 109.44, 29, 15, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1977-11-14', 'lolacasals@example.net', 'O&DS8Voh', '2024-05-14', 'jose-antonio55',
        NULL, True, 'Cupiditate ut asperiores alias. Iste inventore quo ab.',
        10, 'Female', 139.29, 10, 38.297678, -3.925472, 1,
        'Pastora Gisbert Huerta', 31, 120.26, 20, 0, 4);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1993-02-24', 'rogelio65@example.net', '@4njC+iI', '2024-02-07', 'marcelo82',
        NULL, True, 'Aliquam magnam adipisci. Nam modi sint quae velit minima officia illo.',
        1, 'Male', 141.42, 19, 37.107304, -3.257564, 5,
        'Florencio Sastre Cisneros', 30, 31.05, 24, 20, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1992-10-21', 'campillolilia@example.com', '_B4Ocwi4', '2024-02-12', 'mmorata',
        NULL, True, 'Aliquam voluptas quisquam saepe. Itaque incidunt modi est animi officiis.',
        8, 'Female', 228.44, 2, 38.225865, -5.720003, 5,
        'Emperatriz Boix Solana', 19, 130.87, 6, 6, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1981-07-20', 'dvilaplana@example.org', '^220C3rf', '2024-02-05', 'enunez',
        NULL, True, 'Tempore nisi distinctio alias asperiores debitis. Nihil pariatur hic.',
        8, 'Male', 196.21, 0, 38.674503, -3.153368, 4,
        'Hernán Exposito', 25, 94.77, 13, 13, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('2010-03-09', 'delia29@example.org', 'Z#j1D^sw', '2024-05-11', 'yolandaarregui',
        NULL, True, 'Distinctio beatae omnis voluptatum inventore veritatis qui.
Qui sapiente in magni rerum minus.',
        9, 'Female', 214.38, 0, 37.858472, -3.403632, 8,
        'Cristina Iborra-Ariza', 25, 103.05, 8, 6, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1986-08-06', 'roman20@example.com', '!h21Vx&Z', '2024-02-18', 'lobatobibiana',
        NULL, True, 'Reprehenderit ipsum iste quaerat quas. Esse eos qui sed natus voluptas mollitia earum.',
        10, 'Male', 209.58, 3, 38.278223, -2.544678, 10,
        'Olegario Larrañaga', 23, 126.11, 3, 3, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('2007-04-27', 'hidalgomaria@example.com', '8K@2CqOI', '2024-02-03', 'rubioconsuela',
        NULL, True, 'Iusto dolorem hic.',
        7, 'Female', 142.96, 2, 37.344591, -6.998189, 10,
        'Melisa Duque-Caparrós', 21, 133.91, 4, 1, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('2003-07-01', 'hector53@example.org', 'V%3LuPy+', '2024-05-16', 'eveliapozo',
        NULL, True, 'Expedita mollitia aspernatur possimus ipsam.',
        6, 'Female', 146.87, 0, 38.220135, -4.308746, 4,
        'Graciana Felipa Casas Serrano', 13, 35.45, 3, 3, 4);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('2001-02-05', 'estefania58@example.com', '(c!7n$Qj', '2024-03-22', 'herminio28',
        NULL, True, 'Minus illo voluptas sint.
Magni sapiente voluptatibus. Ducimus iure mollitia cum odio quasi.',
        6, 'Male', 248.96, 2, 37.967161, -4.272435, 5,
        'Quique Vidal Bueno', 36, 59.34, 25, 22, 4);

-- FIGHTER_ROLE
INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (1, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (2, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (3, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (4, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (5, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (6, 3);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (7, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (8, 3);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (9, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (10, 1);

-- FIGHTER_STYLE
INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (2, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (2, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (2, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (2, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (2, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 1);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (3, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 1);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 6);

-- CLUB
INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Invictus Gym', 'Sevilla', 'Spain', '37807', 'Sevilla', 'Ronda de Rosa Arrieta 88 Piso 0 ', '+34 983 82 66 00', 'maria-angeles78@example.net',
        '2024-01-14', 'Possimus dolores distinctio officiis. Dicta laborum accusantium ea aliquid ipsam.', False, 7);

UPDATE fighter SET club_administered_id = 1 WHERE id = 7;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Predator Gym', 'El Ejido', 'Spain', '23486', 'Almería', 'Urbanización de Pilar Cervantes 5', '+34 987 26 22 86', 'nrocamora@example.net',
        '2024-03-15', 'Sint tempore ducimus hic nisi eum. Consectetur suscipit tempora autem. Sint odio labore reiciendis rerum accusamus nihil.', False, 9);

UPDATE fighter SET club_administered_id = 2 WHERE id = 9;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Supreme Combat', 'Huelva', 'Spain', '23625', 'Huelva', 'Alameda Aurelio Peinado 79', '+34 842 97 66 29', 'leopoldofonseca@example.org',
        '2024-02-05', 'Reprehenderit corporis aliquam odio.', False, 4);

UPDATE fighter SET club_administered_id = 3 WHERE id = 4;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Supreme Combat', 'Jerez de la Frontera', 'Spain', '02918', 'Cádiz', 'Urbanización de Felipa Martí 95 Apt. 33 ', '+34976 813 680', 'victorinodonaire@example.net',
        '2024-04-16', 'Quas id excepturi vitae alias natus aperiam porro. Fugiat dolorum veniam maiores.
Ea velit id tempore nihil beatae perspiciatis.', False, 5);

UPDATE fighter SET club_administered_id = 4 WHERE id = 5;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Invictus Gym', 'Huelva', 'Spain', '44102', 'Huelva', 'C. Jeremías Fuente 8 Piso 9 ', '+34901961878', 'deliareyes@example.net',
        '2024-02-03', 'Assumenda laboriosam vero nobis blanditiis. Culpa reprehenderit debitis non unde quidem.', False, 3);

UPDATE fighter SET club_administered_id = 5 WHERE id = 3;

-- FIGHTER_CLUB
UPDATE fighter SET club_id = 2 WHERE id = 1;

UPDATE fighter SET club_id = 3 WHERE id = 2;

UPDATE fighter SET club_id = 5 WHERE id = 3;

UPDATE fighter SET club_id = 2 WHERE id = 4;

UPDATE fighter SET club_id = 1 WHERE id = 5;

UPDATE fighter SET club_id = 5 WHERE id = 6;

UPDATE fighter SET club_id = 4 WHERE id = 7;

UPDATE fighter SET club_id = 2 WHERE id = 8;

UPDATE fighter SET club_id = 1 WHERE id = 9;

UPDATE fighter SET club_id = 4 WHERE id = 10;

-- FIGHTER PROFILE PHOTO
INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-17 02:11', './assets/img/fighter/fighter23.jpg', 1);

UPDATE fighter SET profile_photo_id = 1 WHERE id = 1;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-25 14:38', './assets/img/fighter/fighter11.jpg', 2);

UPDATE fighter SET profile_photo_id = 2 WHERE id = 2;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-03 18:41', './assets/img/fighter/fighter4.jpg', 3);

UPDATE fighter SET profile_photo_id = 3 WHERE id = 3;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-01-19 10:17', './assets/img/fighter/fighter18.jpg', 4);

UPDATE fighter SET profile_photo_id = 4 WHERE id = 4;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-03-04 10:53', './assets/img/fighter/fighter19.jpg', 5);

UPDATE fighter SET profile_photo_id = 5 WHERE id = 5;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-04-26 17:41', './assets/img/fighter/fighter1.jpg', 6);

UPDATE fighter SET profile_photo_id = 6 WHERE id = 6;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-04-18 02:37', './assets/img/fighter/fighter18.jpg', 7);

UPDATE fighter SET profile_photo_id = 7 WHERE id = 7;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-03-05 21:02', './assets/img/fighter/fighter14.jpg', 8);

UPDATE fighter SET profile_photo_id = 8 WHERE id = 8;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-04 09:14', './assets/img/fighter/fighter20.jpg', 9);

UPDATE fighter SET profile_photo_id = 9 WHERE id = 9;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-01-18 13:15', './assets/img/fighter/fighter3.jpg', 10);

UPDATE fighter SET profile_photo_id = 10 WHERE id = 10;

-- CLUB PROFILE PHOTO
INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-02-17 22:00', './assets/img/club/club1.jpg', 1);

UPDATE club SET profile_photo_id = 1 WHERE id = 1;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-04-04 05:01', './assets/img/club/club6.jpg', 2);

UPDATE club SET profile_photo_id = 2 WHERE id = 2;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-03-22 16:54', './assets/img/club/club3.jpg', 3);

UPDATE club SET profile_photo_id = 3 WHERE id = 3;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-02-02 08:04', './assets/img/club/club11.jpg', 4);

UPDATE club SET profile_photo_id = 4 WHERE id = 4;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-01-04 22:33', './assets/img/club/club11.jpg', 5);

UPDATE club SET profile_photo_id = 5 WHERE id = 5;

-- FOLLOW
INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-02-25 19:05', 1, 9);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-24 11:53', 2, 5);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-15 17:20', 3, 10);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-30 03:56', 4, 10);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-01-27 01:45', 5, 6);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-28 10:17', 7, 2);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-22 14:08', 8, 6);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-11 10:40', 9, 7);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-20 17:10', 10, 7);

-- FIGHTER_FOLLOW_REQUEST
INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 3, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 4, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 5, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 6, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 7, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 8, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 9, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-27 09:24', '2024-05-21 20:48', 'APPROVED', 10, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 3, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 4, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 5, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 6, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 7, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 8, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 9, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-09 17:09', '2024-05-15 11:24', 'REJECTED', 10, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 4, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 5, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 6, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 7, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 8, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 9, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-20 19:06', '2024-05-28 17:58', 'PENDING', 10, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-23 02:24', '2024-03-30 06:50', 'REJECTED', 8, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-23 02:24', '2024-03-30 06:50', 'REJECTED', 9, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-23 02:24', '2024-03-30 06:50', 'REJECTED', 10, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 2, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 3, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 4, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 6, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 7, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 8, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 9, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-13 11:02', '2024-05-09 03:10', 'PENDING', 10, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-06 04:56', '2024-04-09 17:36', 'PENDING', 10, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-30 08:40', '2024-04-18 02:38', 'APPROVED', 10, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 2, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 3, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 4, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 5, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 6, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 7, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 9, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-10 23:54', '2024-05-25 04:09', 'APPROVED', 10, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-18 17:31', '2024-04-04 06:10', 'APPROVED', 10, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 1, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 2, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 3, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 4, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 5, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 6, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 7, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 8, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-26 02:34', '2024-05-25 12:53', 'REJECTED', 9, 10);

-- EVENT
INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Linares', 'Spain', '11490', 'Jaén', 'Plaza de Lupe Catalá 3 Piso 4 ', 'Animi maiores iste sint neque veniam.
Dolorem commodi facere quasi. Consectetur minima eligendi beatae accusamus cum occaecati consectetur.', '2025-03-07 11:42:10.197431',
            'Knockout Kings', '2025-03-07 06:42', '2025-03-07 07:42:10.197431', 3);

INSERT INTO event_club (club_id, event_id) VALUES (3, 1);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Marbella', 'Spain', '44931', 'Málaga', 'C. de Salomé Estevez 1', 'Sit tempora at ab ad laudantium consectetur. Tenetur beatae voluptatem ipsa. Architecto suscipit expedita illo nulla ab.', '2024-08-20 02:30:54.254803',
            'Ultimate Warrior', '2024-08-19 21:30', '2024-08-19 22:30:54.254803', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 2);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Algeciras', 'Spain', '26934', 'Cádiz', 'Vial Aura Tejero 20', 'Officiis corrupti nisi molestiae tempora sed deleniti.', '2025-04-22 02:52:19.660011',
            'Fight Fest', '2025-04-21 21:52', '2025-04-21 22:52:19.660011', 5);

INSERT INTO event_club (club_id, event_id) VALUES (5, 3);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Almería', 'Spain', '08429', 'Almería', 'Camino Francisco Javier Benavent 84', 'Repellendus voluptates incidunt non delectus voluptates occaecati.', '2024-12-29 16:59:08.395277',
            'Ultimate Fighter', '2024-12-29 11:59', '2024-12-29 12:59:08.395277', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 4);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Almonte', 'Spain', '47063', 'Huelva', 'Avenida de Gisela Camacho 53 Puerta 4 ', 'Delectus pariatur delectus asperiores officia. Similique quisquam dolores quis ratione voluptate.
Tempora repellendus rerum perferendis.', '2024-09-06 06:37:21.457334',
            'Warriors Arena', '2024-09-06 01:37', '2024-09-06 02:37:21.457334', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 5);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Huelva', 'Spain', '44597', 'Huelva', 'Paseo de Olalla Ibáñez 78', 'Debitis vitae hic minima laudantium. Necessitatibus provident rerum itaque corporis esse placeat saepe.', '2024-07-15 18:29:22.320042',
            'The Combat Challenge', '2024-07-15 13:29', '2024-07-15 14:29:22.320042', 2);

INSERT INTO event_club (club_id, event_id) VALUES (2, 6);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Marbella', 'Spain', '04391', 'Málaga', 'Alameda de Maxi Yáñez 22 Piso 8 ', 'Veniam maxime magni. Minima eveniet similique distinctio inventore occaecati. Esse quos quas occaecati minus eaque saepe.', '2024-12-19 06:32:37.696385',
            'Cage Warriors', '2024-12-19 01:32', '2024-12-19 02:32:37.696385', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 7);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Granada', 'Spain', '07330', 'Granada', 'Via de Buenaventura Acero 72', 'Nemo dolores aut tempora aut blanditiis incidunt. Dolores debitis distinctio quo alias voluptatem voluptatem.', '2024-06-28 07:21:54.202266',
            'Warriors Arena', '2024-06-28 02:21', '2024-06-28 03:21:54.202266', 2);

INSERT INTO event_club (club_id, event_id) VALUES (2, 8);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Linares', 'Spain', '09397', 'Jaén', 'Cuesta Ezequiel Mayol 3', 'Maiores omnis explicabo quae animi dolorum iusto. Tempore impedit minus omnis inventore numquam.', '2024-08-26 05:16:12.384781',
            'Warriors Path', '2024-08-26 00:16', '2024-08-26 01:16:12.384781', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 9);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Algeciras', 'Spain', '23394', 'Cádiz', 'Paseo de Eva María Gálvez 446 Apt. 76 ', 'Perferendis natus voluptatum a dolore ea animi. Numquam non voluptas at.', '2024-07-11 20:09:52.249091',
            'Rage of the Gladiators', '2024-07-11 15:09', '2024-07-11 16:09:52.249091', 1);

INSERT INTO event_club (club_id, event_id) VALUES (1, 10);

-- CLUB_MEMBERSHIP_REQUEST
INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-16 08:47', '2024-05-19 11:58', 'APPROVED', 4, 1);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-04-10 17:52', '2024-04-28 14:26', 'PENDING', 5, 2);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-04-01 05:20', '2024-05-04 09:14', 'PENDING', 1, 3);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-05-20 12:54', '2024-05-26 19:32', 'PENDING', 1, 4);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-01-03 23:49', '2024-03-06 17:55', 'PENDING', 5, 5);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-04-11 14:43', '2024-05-19 16:53', 'REJECTED', 5, 6);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-01-29 11:57', '2024-04-15 18:40', 'APPROVED', 2, 7);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-05-14 22:39', '2024-05-24 18:31', 'APPROVED', 4, 8);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-23 16:50', '2024-05-13 09:49', 'REJECTED', 4, 9);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-10 18:32', '2024-05-21 13:47', 'APPROVED', 2, 10);

-- CLUB_REVIEW

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Neque illum quod numquam. Dignissimos voluptatibus laudantium tenetur. Assumenda adipisci ut culpa fuga laborum.', 2, '2024-03-01 16:16', 2, 1);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Facilis explicabo consequuntur amet veniam. Quidem at laudantium.', 4, '2024-04-30 00:33', 3, 1);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Ut quisquam inventore inventore. Occaecati praesentium illo maxime nostrum.
Fugit tempora voluptatibus.', 3, '2024-04-01 14:06', 4, 1);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Sit voluptas at odio eum consequatur. Quia autem tempora voluptate voluptatem distinctio.
Quidem numquam illum facere animi sint.', 3, '2024-03-18 07:36', 2, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Iure illum repellendus eum quibusdam quas corporis. Eaque odit laborum laudantium consectetur. Sed qui debitis ea.', 5, '2024-05-22 19:36', 3, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Modi quasi mollitia aliquam.', 1, '2024-05-30 06:50', 4, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Nam laboriosam delectus vitae illo eligendi at. Qui est asperiores.', 4, '2024-05-28 11:22', 5, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Vitae iusto veritatis nulla sit quae. Laudantium ab perspiciatis nihil blanditiis veritatis pariatur. Reiciendis temporibus tempore nemo harum porro.', 1, '2024-02-09 05:34', 2, 3);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Nulla iste cupiditate ullam nihil tempora. Ut odit qui quia eveniet architecto ex mollitia.', 5, '2024-03-24 01:12', 3, 3);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Error sit facilis quaerat aperiam voluptatum possimus. Mollitia voluptatibus quos quia debitis repudiandae sapiente. Est praesentium consequuntur.', 5, '2024-03-13 00:01', 4, 3);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Labore incidunt neque maiores.
Voluptate architecto consequuntur quia neque excepturi. Consequatur dolorum nulla. At laudantium laboriosam.', 4, '2024-04-28 19:58', 1, 4);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Alias ea animi quo.', 5, '2024-03-28 22:33', 2, 4);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Voluptate modi consequatur quam libero. Sequi est consectetur aliquid earum cupiditate. Quia expedita magni quod occaecati pariatur.', 3, '2024-03-28 18:50', 4, 4);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Veniam modi error fugiat adipisci fugit enim nemo. Voluptates deserunt quisquam occaecati sit tempora.', 1, '2024-03-06 19:04', 2, 5);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Unde aspernatur cupiditate ab illum incidunt. Fugiat totam autem autem libero minus.', 4, '2024-05-17 05:30', 3, 5);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Voluptatum corporis alias nobis quod. Quasi sequi voluptates nam quidem expedita eligendi fugiat. Quae veritatis aperiam quisquam numquam.', 1, '2024-05-22 19:55', 4, 5);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Dignissimos quae aperiam reiciendis quibusdam quae. Harum vero quas sed aliquam alias quidem.', 3, '2024-02-08 12:39', 1, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Voluptatem deserunt aspernatur iste ipsam. Totam quia hic nisi sunt debitis. Quidem molestiae cum ex veniam dicta occaecati blanditiis.', 5, '2024-03-05 03:30', 2, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Vitae quisquam aliquam ipsum. Consequuntur necessitatibus accusantium sint. Repellendus explicabo dolore inventore qui laboriosam.', 5, '2024-02-22 22:26', 4, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Blanditiis quisquam quos optio dolor illum non placeat. Optio voluptatibus deleniti ex.', 1, '2024-04-03 23:24', 2, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Labore maxime quae est libero. Commodi repellendus hic amet vitae facere.', 1, '2024-04-19 10:25', 3, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Ratione esse tenetur et voluptatibus vero repudiandae. Impedit eos doloremque veritatis. Blanditiis illum sint alias aliquam mollitia consequatur.', 4, '2024-01-10 00:29', 4, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Quasi sint nostrum rem. Perferendis necessitatibus maiores rem suscipit. Maxime aliquam atque iusto culpa minima.', 1, '2024-01-18 07:44', 5, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Sunt unde fuga dolorum nihil facere aliquam. Atque ex voluptates. Ad occaecati dignissimos deleniti.', 2, '2024-03-07 00:04', 3, 8);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Pariatur dolorem nulla quibusdam. Inventore ea placeat occaecati iure laudantium molestias. A distinctio non suscipit delectus.', 5, '2024-03-03 15:23', 4, 8);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Facilis ullam soluta. Eos autem cupiditate corporis ex. Illum aut numquam odit commodi.', 3, '2024-03-22 18:15', 2, 9);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Dolorum quos placeat. Molestiae dolorem odit praesentium.
Cum nemo odio ipsum necessitatibus sequi explicabo. In delectus maiores debitis iste.', 3, '2024-03-28 16:19', 3, 9);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Pariatur placeat adipisci nihil quos eos at. Laboriosam sunt quo ab. Ex nemo architecto esse fuga sequi.', 3, '2024-04-24 08:45', 1, 10);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Ullam sed possimus aut ipsum. Placeat ipsum soluta delectus doloribus dignissimos veniam esse.', 4, '2024-04-09 06:33', 2, 10);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Dolores minus ipsa ratione quasi porro ipsa iure. Natus quibusdam iure. Id aliquam cupiditate reiciendis accusamus odio illum.', 3, '2024-03-17 14:53', 4, 10);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Voluptatibus ipsum repellat cupiditate illum nihil. Molestias numquam aliquam quidem tenetur necessitatibus. Unde tenetur voluptas non.', 1, '2024-04-30 15:23', 5, 10);

-- EVENT_REVIEW
INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Perferendis distinctio fugit id. Perspiciatis cupiditate aspernatur ducimus dolores asperiores officiis.', 1, '2024-04-09 05:15', 1, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Maiores tenetur recusandae rem aperiam nihil. Libero labore saepe ducimus laborum. Natus modi nam esse quasi.', 3, '2024-03-13 06:30', 3, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Incidunt assumenda omnis vero laborum. Natus nesciunt iure libero asperiores tempore.', 1, '2024-03-27 01:48', 5, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Temporibus assumenda expedita veritatis.', 4, '2024-03-06 04:58', 9, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Eveniet ipsum veritatis ea debitis nam cumque. Voluptas inventore ratione accusamus officiis delectus.', 2, '2024-01-29 05:52', 10, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Porro consectetur ipsum nesciunt. Ducimus consequatur reprehenderit magnam dignissimos.', 5, '2024-05-01 06:53', 2, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Possimus rem eveniet aut earum velit. Ipsam ipsam et quia quibusdam hic maiores provident. Commodi modi velit neque.', 5, '2024-04-21 02:04', 4, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Expedita odio alias fugit aliquid voluptas repellat animi. Molestias iusto eius ut accusantium. Veniam nihil adipisci.', 1, '2024-05-26 18:01', 5, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Saepe quaerat nobis modi dolorum dolorem consequuntur.', 4, '2024-02-18 01:33', 10, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Reprehenderit asperiores et neque. Perferendis exercitationem laborum doloribus modi.', 4, '2024-04-14 18:43', 1, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Minima explicabo necessitatibus molestias minima. Culpa suscipit vitae molestiae eaque voluptate. Ducimus labore quidem rem.', 1, '2024-01-31 08:08', 4, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Soluta minus dicta itaque commodi similique officiis nesciunt. Nostrum molestias quo nisi earum tenetur. Laudantium quae perferendis dicta atque.', 5, '2024-03-19 17:15', 6, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quam voluptatum magnam eos facilis libero.
Dolorem veritatis occaecati eveniet exercitationem repudiandae.', 5, '2024-05-30 07:32', 8, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quod ad sunt nemo adipisci iusto vel. Nemo ad eveniet aperiam suscipit eaque modi. Qui distinctio rerum dolorem.', 2, '2024-02-28 06:29', 9, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Harum quia eveniet asperiores ad inventore possimus dolorum. Autem iusto cum commodi ea mollitia illum.', 3, '2024-02-22 18:10', 10, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Fugiat porro mollitia laudantium quibusdam non adipisci.', 3, '2024-02-25 13:25', 1, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Reiciendis atque in dolores atque iusto voluptatem.', 3, '2024-03-07 15:28', 2, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolore dicta ipsam enim ea officia soluta. Rerum soluta natus itaque. Quidem vitae nihil sint architecto quod.', 2, '2024-04-15 04:13', 4, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Voluptas dolore cupiditate eius. Deleniti rerum odit officiis incidunt harum totam.', 3, '2024-05-02 04:47', 5, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Provident accusantium natus. Aperiam assumenda expedita alias adipisci fugiat velit. Ullam iure blanditiis voluptate illo.', 3, '2024-05-24 21:47', 9, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolores cupiditate consequatur quibusdam impedit dolorem quaerat inventore. Nobis repellendus molestiae molestiae doloremque saepe.', 5, '2024-01-19 13:50', 10, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Vel error placeat veritatis commodi.
Nulla sequi modi. Delectus incidunt aliquam ratione.', 5, '2024-01-20 13:38', 2, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Occaecati magnam laudantium impedit sint illo corrupti. Labore quo eos aperiam.', 4, '2024-02-19 23:34', 3, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Natus laboriosam sit iusto numquam commodi. Vero ullam eos cum aliquid perferendis. Dicta similique vel asperiores fugit exercitationem non.', 4, '2024-04-27 08:20', 7, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quam totam voluptatem sed corporis. Amet similique minus amet illo eos. Molestias illum aliquam nam et.', 3, '2024-04-09 18:56', 8, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolore libero praesentium laboriosam. Quam ipsam doloribus magni similique laborum minima. Reiciendis ex commodi odit.', 5, '2024-02-16 09:49', 1, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Unde natus iure quidem ratione eligendi. Nulla nisi aliquid labore nisi rem animi. Voluptates magni dolore ullam fugiat.', 5, '2024-01-30 08:52', 2, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Et assumenda nihil veniam voluptate possimus architecto. Modi quae incidunt eum earum eveniet. Quibusdam expedita laborum sunt.', 4, '2024-01-27 12:44', 6, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Illum maxime nemo voluptatibus molestias aliquid. Totam voluptas maiores repellat vitae pariatur deleniti. Adipisci blanditiis quisquam iusto.', 2, '2024-03-20 19:10', 7, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Magnam iusto eligendi non labore eligendi esse eum. Sit similique eius fuga sapiente.', 2, '2024-05-21 22:50', 2, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ipsam adipisci consequuntur aperiam vitae cupiditate iste. Occaecati omnis iste a doloremque harum aperiam corporis. Sint ipsa minus modi quis.', 5, '2024-03-30 17:13', 4, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Magni fuga impedit aliquam doloribus officia accusantium quisquam. Quibusdam magnam et ratione voluptas ipsa.', 5, '2024-02-24 08:18', 6, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Illo fugiat ipsum quibusdam quibusdam. Qui est atque rerum.', 2, '2024-04-19 18:57', 7, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Tenetur ratione dolor quaerat assumenda eligendi reprehenderit. Numquam deleniti rerum odio soluta.', 1, '2024-02-17 18:48', 1, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Mollitia asperiores voluptatum. Porro optio facilis similique reiciendis.', 1, '2024-04-20 08:52', 2, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Excepturi reiciendis ad nam.', 4, '2024-02-03 13:35', 5, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quam omnis atque vel. Vitae in magnam porro saepe adipisci. Nostrum exercitationem tenetur neque quod.
Ex tempore incidunt aut.', 1, '2024-01-31 21:06', 6, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Consequatur quas ex. Eaque quos exercitationem tenetur corrupti repudiandae assumenda eveniet. Quibusdam porro facere officiis soluta.', 3, '2024-04-03 08:44', 7, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolores sint aliquid a modi ab rem. Esse inventore eaque reprehenderit possimus deleniti impedit.', 1, '2024-03-01 14:12', 8, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Harum vitae numquam vitae eius. Molestias facilis officia maxime eligendi temporibus.
Quia aperiam esse. Vitae occaecati cum.', 1, '2024-04-27 05:39', 9, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Eum minima quaerat quibusdam laborum rem nam. Accusamus sapiente ullam. Molestiae eos ipsum ipsa.', 1, '2024-03-22 05:32', 2, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Assumenda beatae tenetur totam accusantium rerum.
Odit expedita doloribus. Dolore sapiente quidem corrupti. Eum officiis fugit maxime.', 5, '2024-05-15 07:46', 3, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quisquam occaecati quisquam saepe. Tempore iure dolorem eligendi quaerat quae quam fugit.', 4, '2024-03-30 20:03', 4, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Facere provident atque cupiditate pariatur. Nemo facere beatae amet. Laboriosam fugit possimus eaque.
Labore soluta itaque quod.', 3, '2024-03-12 23:26', 5, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ad provident velit sapiente. Perferendis exercitationem nemo debitis.', 3, '2024-04-26 02:29', 6, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Maxime nostrum animi repellat. Qui voluptates a.
Hic quod non maiores magni deserunt. Porro magnam tempore consectetur.', 1, '2024-02-24 19:51', 10, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Amet eius est. Laborum saepe nihil nobis sint. Recusandae saepe assumenda sapiente hic.', 2, '2024-02-01 02:53', 4, 10);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Nostrum illum consequatur qui. Et pariatur incidunt commodi iusto aspernatur quibusdam. Neque expedita dolor.', 1, '2024-04-15 02:49', 6, 10);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ut tempora explicabo. Dolore qui perferendis est non deserunt.
Dolorum illo temporibus. Esse odit molestias libero. Perspiciatis fugiat asperiores.', 2, '2024-05-13 02:11', 9, 10);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Velit dolores mollitia dolores. Rem cumque ea ratione libero ea.', 1, '2024-02-24 02:03', 10, 10);

-- FIGHT
INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-05-24 05:33', 37.71, False,
        3, 2, 1, 10, 6,
        '3');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 3);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 2, '2024-01-02 14:00', 132.68, True,
        4, 3, 1, 2, 5,
        '2');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 4);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 2);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 2, '2024-05-22 04:58', 95.75, True,
        10, 2, 1, 3, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-01-31 03:03', 49.65, False,
        4, 2, 1, 5, 1,
        '5');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 5);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 2, 2, '2024-04-08 15:38', 44.17, True,
        6, 2, 1, 1, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 6);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, True, 2, 3, '2024-04-22 21:06', 46.60, False,
        2, 1, 1, 7, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 7);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, True, 3, 2, '2024-04-20 19:40', 110.85, True,
        6, 4, 1, 3, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 3, 3, '2024-04-20 03:05', 69.38, True,
        9, 4, 1, 4, 4,
        '4');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (1, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, False, 2, 2, '2024-04-15 15:26', 62.30, True,
        4, 3, 1, 9, 6,
        '4');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 3, 2, '2024-03-01 01:16', 109.34, True,
        3, 2, 2, 5, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 3);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 5);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 2, '2024-03-31 19:19', 79.27, False,
        4, 4, 2, 9, 5,
        '9');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 4);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 3, '2024-05-06 13:46', 49.83, True,
        3, 1, 2, 10, 4,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 2, 2, '2024-02-19 02:43', 73.47, False,
        1, 3, 2, 9, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (2, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 2, 2, '2024-03-08 21:11', 82.08, False,
        6, 3, 3, 3, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 6);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 3);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 3, 2, '2024-01-12 06:54', 96.04, True,
        2, 3, 3, 9, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 2);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 2, '2024-02-28 15:49', 98.72, False,
        6, 3, 3, 7, 3,
        '7');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 7);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 2, 2, '2024-05-21 02:17', 135.72, False,
        10, 1, 3, 2, 1,
        '2');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 3, 3, '2024-01-08 10:42', 81.82, True,
        10, 4, 3, 4, 2,
        '10');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 4);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, True, 3, 2, '2024-01-13 14:40', 60.13, True,
        6, 3, 3, 3, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 2, 2, '2024-04-19 00:37', 35.82, True,
        8, 4, 3, 3, 3,
        '3');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (3, 8);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 2, 3, '2024-04-21 01:55', 45.87, True,
        1, 1, 4, 10, 4,
        '1');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 1);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-01-11 07:40', 69.58, True,
        9, 2, 4, 4, 5,
        '4');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 9);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 4);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 2, '2024-04-13 23:41', 62.67, False,
        6, 3, 4, 2, 5,
        '2');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 6);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 2);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-05-07 15:58', 116.17, True,
        7, 4, 4, 2, 4,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (4, 7);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 2, 2, '2024-03-02 01:08', 134.94, False,
        3, 3, 5, 9, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 3);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-01-02 10:28', 126.88, True,
        9, 4, 5, 10, 5,
        '10');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 3, '2024-03-28 02:17', 74.34, False,
        8, 4, 5, 5, 2,
        '5');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 8);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 5);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 3, 2, '2024-04-19 15:11', 114.15, False,
        7, 4, 5, 6, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 7);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 6);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 3, 3, '2024-01-26 07:59', 63.05, True,
        3, 1, 5, 1, 3,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (5, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 2, 3, '2024-01-16 02:22', 124.37, True,
        9, 4, 5, 1, 4,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 3, 3, '2024-03-21 21:04', 80.20, True,
        6, 1, 5, 1, 6,
        '1');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 3, 3, '2024-05-04 13:43', 132.81, False,
        1, 3, 5, 9, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 3, '2024-05-04 18:14', 89.50, True,
        2, 3, 6, 9, 5,
        '2');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 2);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 3, 3, '2024-01-17 03:37', 99.71, True,
        6, 4, 6, 8, 2,
        '8');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 6);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 8);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 2, 2, '2024-03-31 09:54', 106.57, True,
        2, 4, 6, 4, 5,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 4);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-03-05 10:12', 49.75, True,
        10, 2, 6, 9, 3,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 3, 2, '2024-02-24 12:44', 104.30, False,
        1, 4, 6, 10, 3,
        '1');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (6, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 3, '2024-01-03 09:59', 95.96, True,
        9, 1, 6, 9, 1,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 3, 2, '2024-04-28 14:22', 54.74, False,
        3, 3, 7, 6, 3,
        '3');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 3);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 6);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-03-11 15:42', 30.42, True,
        4, 4, 7, 5, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 4);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 5);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 2, '2024-01-13 13:48', 121.24, False,
        5, 2, 7, 10, 2,
        '10');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-03-25 06:52', 64.68, True,
        1, 1, 7, 5, 2,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 3, 3, '2024-03-24 21:45', 103.62, True,
        1, 1, 7, 10, 1,
        '10');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 2, '2024-03-19 17:00', 107.57, True,
        5, 4, 7, 3, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, True, 3, 2, '2024-05-09 18:05', 148.91, True,
        10, 3, 7, 6, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 3, 3, '2024-03-12 16:39', 90.46, False,
        2, 2, 7, 9, 3,
        '9');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 2);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, False, 3, 2, '2024-03-10 12:21', 41.04, True,
        10, 4, 7, 4, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (10, True, 2, 2, '2024-05-08 12:56', 141.95, False,
        4, 4, 7, 8, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (7, 8);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-01-16 02:09', 60.63, True,
        5, 1, 8, 10, 6,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (8, 5);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (8, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-04-11 22:06', 124.46, True,
        7, 3, 8, 2, 4,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (8, 7);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (8, 2);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 2, 3, '2024-02-15 14:35', 113.99, False,
        2, 2, 8, 9, 1,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (8, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 2, '2024-01-09 18:10', 70.53, False,
        5, 4, 8, 10, 2,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 2, 2, '2024-05-09 12:10', 140.04, False,
        1, 1, 9, 4, 5,
        '1');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 1);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 4);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 2, 3, '2024-04-20 15:13', 143.98, True,
        7, 3, 9, 10, 1,
        '7');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 7);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 10);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 2, 2, '2024-03-06 05:56', 74.64, True,
        6, 4, 9, 7, 3,
        '6');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 6);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-03-24 00:18', 147.13, False,
        1, 2, 9, 5, 6,
        '5');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 5);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 3, 3, '2024-05-02 14:16', 72.75, True,
        5, 1, 9, 7, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 2, 3, '2024-01-16 06:59', 126.62, True,
        4, 2, 9, 9, 3,
        '4');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (9, 9);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 2, 3, '2024-02-14 06:37', 99.25, True,
        6, 3, 10, 1, 2,
        '1');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (10, 6);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (10, 1);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-03-20 23:03', 35.29, False,
        2, 2, 10, 7, 2,
        NULL);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (10, 2);

INSERT INTO event_fighter (event_id, fighter_id) VALUES (10, 7);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 2, '2024-01-22 09:11', 84.38, False,
        1, 3, 10, 6, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-03-02 00:27', 48.38, True,
        3, 3, 10, 2, 5,
        '2');

INSERT INTO event_fighter (event_id, fighter_id) VALUES (10, 3);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 3, 2, '2024-01-07 13:17', 43.83, True,
        7, 3, 10, 6, 4,
        '7');

-- FIGHT_INSCRIPTION_REQUEST
INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis dolorum animi dolorum at.', '2024-03-14 08:33', 'Perspiciatis error nam beatae distinctio saepe. Incidunt itaque laudantium aliquid vero non.',
        '2024-03-20 12:34', 'REJECTED', '1',
        '1', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas quibusdam nostrum doloremque. Harum nam quasi. Culpa eum voluptatibus esse voluptatibus.', '2024-05-03 06:20', 'Sit pariatur omnis asperiores.',
        '2024-05-27 04:01', 'APPROVED', '1',
        '2', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum soluta id quibusdam. A itaque minus rem sequi.', '2024-05-24 21:14', 'Non laborum nihil atque. Debitis consequatur necessitatibus molestias rem officia expedita.',
        '2024-05-26 08:06', 'REJECTED', '1',
        '3', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio atque ullam aliquid.', '2024-01-06 12:11', 'Culpa eius odio officiis quas. Distinctio officiis illum ipsa.',
        '2024-01-29 23:10', 'REJECTED', '1',
        '4', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam eum iste assumenda et officiis.', '2024-04-23 05:38', NULL,
        NULL, 'PENDING', '1',
        '5', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magni expedita quis porro sequi atque. Rem minus illum neque esse.', '2024-04-12 00:45', NULL,
        NULL, 'PENDING', '1',
        '1', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque doloremque ad. Similique soluta quo repellat tenetur.', '2024-03-15 05:33', 'Mollitia voluptates dicta esse deserunt debitis.',
        '2024-05-08 16:28', 'REJECTED', '1',
        '2', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Unde tenetur occaecati. Ratione aperiam tenetur mollitia aperiam tenetur aut atque.', '2024-02-03 16:05', 'Magnam totam aliquam laudantium reiciendis repudiandae. Beatae mollitia nostrum.',
        '2024-04-11 19:28', 'APPROVED', '1',
        '3', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit ex iusto quidem impedit quis.', '2024-02-20 16:16', 'Ipsum unde necessitatibus. Voluptas id eos. Pariatur fugit corporis.',
        '2024-03-29 03:45', 'APPROVED', '1',
        '4', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis soluta dicta. Vero ab id odit.
Sapiente eos praesentium. Consectetur ex ullam.', '2024-02-18 18:42', NULL,
        NULL, 'PENDING', '1',
        '5', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum nihil libero inventore. Non pariatur expedita.', '2024-05-13 01:03', 'Enim harum laboriosam voluptate tempore. Facilis vel qui maiores suscipit.',
        '2024-05-14 16:58', 'APPROVED', '1',
        '1', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id velit quisquam totam architecto.', '2024-05-10 17:37', NULL,
        NULL, 'PENDING', '1',
        '2', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In ex placeat cumque eligendi nobis possimus. Recusandae eveniet eum.', '2024-04-10 18:31', 'Eveniet similique inventore ullam doloribus. Debitis debitis natus quidem maiores architecto.',
        '2024-04-15 04:44', 'REJECTED', '1',
        '3', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam veniam aut quaerat laborum. Sed enim soluta non adipisci qui. Eos optio modi maxime.', '2024-04-26 07:42', NULL,
        NULL, 'PENDING', '1',
        '4', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores expedita ipsam vel dolores totam quas. Eligendi architecto rerum maxime sint placeat eius.', '2024-05-05 08:54', 'Incidunt explicabo eligendi esse dolore. Deleniti modi aliquam sapiente maiores a nihil soluta.',
        '2024-05-29 07:20', 'APPROVED', '1',
        '5', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Assumenda laborum eaque ipsum.
Nobis quae quasi eum recusandae dolores beatae.', '2024-03-01 10:09', NULL,
        NULL, 'PENDING', '1',
        '1', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veritatis odit minima. Dolores error corrupti.', '2024-04-13 09:26', NULL,
        NULL, 'PENDING', '1',
        '2', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente quibusdam porro aliquam voluptatem est ipsum. Molestias eum vero atque.', '2024-02-03 06:51', 'Enim aperiam dignissimos id. Excepturi ducimus animi earum corporis ad.',
        '2024-04-01 19:47', 'APPROVED', '1',
        '3', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maiores cupiditate harum doloribus sapiente. Facilis at enim explicabo quia.', '2024-02-10 23:59', 'Unde facere eos dignissimos incidunt. Vero amet voluptate.',
        '2024-05-20 17:46', 'REJECTED', '1',
        '4', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Architecto molestiae quidem tenetur.
Odit perspiciatis dolore quia molestiae eaque quas.', '2024-03-13 02:15', NULL,
        NULL, 'PENDING', '1',
        '5', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa ipsum dolorem rem eos aliquid. Culpa dicta accusantium magnam dignissimos.', '2024-03-01 12:30', NULL,
        NULL, 'PENDING', '1',
        '1', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestiae hic voluptate nobis odit maiores laboriosam.', '2024-01-22 07:12', NULL,
        NULL, 'PENDING', '1',
        '2', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In iste quis et fugiat quidem. Consequatur ex quae saepe ad exercitationem.', '2024-02-16 11:40', 'Odit maxime reiciendis iusto libero nam neque. Dolore enim tempore autem earum assumenda odit modi.',
        '2024-05-26 10:50', 'REJECTED', '1',
        '3', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nisi dolorum voluptatibus. Ipsa sit nam expedita.', '2024-01-24 14:37', NULL,
        NULL, 'PENDING', '1',
        '4', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Animi hic non. Facere repudiandae eum.', '2024-03-16 23:38', 'Corporis cupiditate ad qui laudantium veritatis porro. Dolore accusantium assumenda blanditiis.',
        '2024-04-29 10:39', 'REJECTED', '1',
        '5', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe facilis repellat. Iste ut ex neque animi aliquam. Harum hic cupiditate occaecati et.', '2024-02-27 05:57', 'Quos reiciendis tempore. Hic iste magni iusto iste illo.',
        '2024-05-08 13:25', 'APPROVED', '1',
        '1', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam nulla neque perferendis. Quos porro quod expedita laudantium consequuntur culpa.', '2024-05-26 05:19', NULL,
        NULL, 'PENDING', '1',
        '2', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Est placeat esse minima. At saepe ipsum ad maiores nostrum nulla.', '2024-01-06 06:08', 'Cupiditate consectetur dignissimos tempora.',
        '2024-04-21 07:22', 'REJECTED', '1',
        '3', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nam eligendi deserunt maxime. Officiis dolorem expedita nisi quaerat distinctio quidem.', '2024-05-15 08:43', 'Deleniti consequatur reiciendis illum ea voluptatibus. Iste ad veniam cumque cupiditate.',
        '2024-05-29 23:36', 'REJECTED', '1',
        '4', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rerum soluta nisi rerum quaerat iure cumque.', '2024-01-23 01:41', 'Voluptate nisi quae dolor odio aperiam ut. Reprehenderit iste enim autem porro ipsam.',
        '2024-04-18 03:28', 'REJECTED', '1',
        '5', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem suscipit aliquid vel maxime et alias error. Corporis illo et officia vitae.', '2024-04-25 03:01', 'Exercitationem eaque odit repudiandae quos explicabo cumque. Consectetur ratione iure.',
        '2024-05-27 04:19', 'REJECTED', '1',
        '1', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil nihil deserunt porro hic saepe. Veritatis nihil assumenda iusto.', '2024-04-25 07:33', 'Praesentium ullam aut.
Ducimus quae doloribus cumque excepturi quaerat.',
        '2024-05-05 03:01', 'REJECTED', '1',
        '2', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab nobis beatae dignissimos distinctio quo. Fugiat illo accusantium voluptatem earum minus.', '2024-01-31 08:27', 'Adipisci aliquid repellendus cum perferendis dolorem fugiat. Doloribus dolorem recusandae eius.',
        '2024-03-20 17:42', 'REJECTED', '1',
        '3', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore sequi rerum est nesciunt magni aut. Laborum explicabo id vitae asperiores numquam quia.', '2024-02-11 03:43', NULL,
        NULL, 'PENDING', '1',
        '4', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates vel tempore. Libero voluptatum sapiente odio.', '2024-01-09 13:07', 'Fuga velit autem. Cum fugiat doloremque id quam. Consequuntur cumque explicabo quo.',
        '2024-01-12 23:29', 'APPROVED', '1',
        '5', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Error deleniti nesciunt possimus porro. Quae autem reprehenderit accusantium. Atque unde eum.', '2024-02-12 19:24', NULL,
        NULL, 'PENDING', '1',
        '1', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iste at illum dignissimos quas fuga. Quo repudiandae pariatur nam nemo exercitationem.', '2024-03-22 18:44', 'In omnis recusandae debitis nam exercitationem.',
        '2024-05-08 13:22', 'REJECTED', '1',
        '2', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea est iste minima tempore amet excepturi. Voluptas eum saepe maxime nemo totam modi.', '2024-03-14 04:45', 'Nulla totam cum quis cum fuga. Debitis id commodi pariatur expedita quia perspiciatis.',
        '2024-05-28 23:30', 'REJECTED', '1',
        '3', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequuntur autem id sequi. In possimus facere dolores quibusdam sequi voluptate consequuntur.', '2024-03-08 07:47', 'Deleniti quod dolores officiis delectus cumque. Molestias harum reprehenderit.',
        '2024-05-08 09:45', 'REJECTED', '1',
        '4', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi excepturi quasi voluptatem neque. Perspiciatis reiciendis minima soluta quam corrupti.', '2024-05-06 16:20', 'Maiores placeat culpa id. Enim dicta error. Dolores eaque placeat sed consequuntur.',
        '2024-05-20 02:10', 'REJECTED', '1',
        '5', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam porro enim consequuntur perferendis nam enim. Quibusdam numquam iusto laudantium.', '2024-02-29 12:01', 'Porro facere reiciendis maiores. Maxime ipsa exercitationem corporis voluptatibus culpa quam.',
        '2024-05-07 21:49', 'REJECTED', '1',
        '1', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Est ab ullam pariatur. Amet sit eius architecto quasi.', '2024-03-18 07:10', 'Hic cupiditate non repellendus quaerat impedit assumenda. Explicabo delectus perferendis.',
        '2024-05-15 23:25', 'APPROVED', '1',
        '2', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab ex at fugiat qui ab.', '2024-03-27 20:16', 'Itaque sunt corrupti culpa culpa.',
        '2024-05-15 18:50', 'APPROVED', '1',
        '3', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolor fugiat nulla ducimus error distinctio. Eligendi velit illo nulla quis officiis modi.', '2024-05-07 13:32', 'Enim laboriosam odit culpa minima. Sint omnis itaque. Iusto earum quidem necessitatibus vel hic.',
        '2024-05-14 19:03', 'REJECTED', '1',
        '4', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Velit voluptas numquam ipsum. Quidem alias id a saepe.', '2024-02-02 21:27', 'Quis saepe consequatur voluptate assumenda. Ratione quaerat enim officiis sed ut.',
        '2024-02-29 12:13', 'APPROVED', '1',
        '5', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi soluta sunt dignissimos corrupti doloremque nulla.
Vel recusandae commodi dignissimos minima.', '2024-04-18 04:42', 'Pariatur quibusdam eius a rem. Fugiat quos suscipit saepe nesciunt iste eveniet iure.',
        '2024-05-13 19:30', 'REJECTED', '1',
        '1', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam maiores inventore repellendus earum repellendus cupiditate. Eligendi mollitia placeat.', '2024-03-23 20:48', 'Odio quidem maxime assumenda. Repudiandae nihil consequuntur modi.',
        '2024-03-29 00:31', 'APPROVED', '1',
        '2', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quisquam consequatur neque laboriosam tempora nemo fugit. Soluta quos quaerat fugiat.', '2024-04-21 02:57', NULL,
        NULL, 'PENDING', '1',
        '3', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi exercitationem dolorum ratione ipsa magni. Qui adipisci esse necessitatibus repellendus quo.', '2024-05-08 23:13', 'Nulla quos necessitatibus error.',
        '2024-05-16 22:32', 'REJECTED', '1',
        '4', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat doloribus optio sit dolores recusandae error fuga. Minus perferendis quasi veniam eveniet.', '2024-04-15 18:16', NULL,
        NULL, 'PENDING', '1',
        '5', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta odit necessitatibus alias totam. Modi error illo libero veritatis magni magni placeat.', '2024-01-30 02:24', NULL,
        NULL, 'PENDING', '1',
        '1', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima minus ratione beatae. Soluta quaerat dicta officia.', '2024-04-10 04:44', 'Ea at necessitatibus nulla fuga quia magni. Officiis sequi reiciendis.',
        '2024-05-18 20:37', 'APPROVED', '1',
        '2', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis perferendis quam amet illo nisi quas. Repellat repellendus quasi impedit placeat quo.', '2024-02-19 10:02', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus accusamus dicta velit quasi omnis. Necessitatibus esse atque alias.', '2024-05-23 14:27', 'Cupiditate repellendus commodi iste cumque quod.',
        '2024-05-29 13:36', 'REJECTED', '1',
        '4', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Error magnam numquam a. Laboriosam consequatur nisi culpa. Harum esse eligendi.', '2024-05-27 06:33', NULL,
        NULL, 'PENDING', '1',
        '5', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio repellat expedita temporibus illum. Impedit labore nemo minus corporis magni.', '2024-04-25 11:45', 'Temporibus alias harum commodi.
Ut recusandae quo cum magni. Blanditiis nihil accusamus.',
        '2024-05-23 10:20', 'REJECTED', '1',
        '1', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab repellat repudiandae exercitationem qui fugiat sint unde. Dolores quod alias velit esse tempore.', '2024-02-22 00:01', 'Omnis nam quos nihil at quas vero.',
        '2024-05-27 23:57', 'APPROVED', '1',
        '2', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deleniti repellat labore. Sit earum fuga eos doloribus nobis.', '2024-05-27 11:34', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vel minima sunt necessitatibus neque molestiae. Illo eveniet dolorem laborum.', '2024-05-28 15:31', 'Labore distinctio sunt consectetur maxime consequuntur. Tenetur sequi aliquid.',
        '2024-05-29 21:41', 'APPROVED', '1',
        '4', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa rerum magni earum. Id sunt porro officia. Voluptates est architecto ratione non.', '2024-03-08 14:49', 'Eos labore natus nisi. Voluptates veniam accusantium odio expedita in nostrum eos.',
        '2024-05-23 10:30', 'APPROVED', '1',
        '5', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('A a a. Occaecati ea dolorum quasi.', '2024-02-14 15:05', 'Earum voluptates ipsum dolorem. Corporis libero minus illo harum. Cumque vitae quam optio.',
        '2024-04-30 16:09', 'APPROVED', '1',
        '1', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugit autem nihil. Id ad nisi non delectus. Eligendi quaerat ducimus ipsa eaque labore deserunt.', '2024-02-25 07:46', NULL,
        NULL, 'PENDING', '1',
        '2', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae eaque ea praesentium. Natus molestias architecto odit quaerat iusto perspiciatis.', '2024-01-15 00:44', 'Ratione velit quod ratione est placeat beatae.',
        '2024-03-15 23:28', 'REJECTED', '1',
        '3', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laudantium ex exercitationem accusantium nemo. Quibusdam nulla debitis quam.', '2024-01-26 15:00', NULL,
        NULL, 'PENDING', '1',
        '4', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem earum sunt pariatur quas.', '2024-03-31 09:04', 'Enim porro occaecati cumque veniam iure. Blanditiis natus perferendis maiores quisquam a minus.',
        '2024-05-19 09:52', 'APPROVED', '1',
        '5', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates eum expedita illum excepturi totam mollitia. Consequuntur ullam inventore excepturi.', '2024-04-29 22:02', 'Corporis ex quo vitae consequuntur. Fuga quos voluptates magnam.',
        '2024-05-27 10:07', 'APPROVED', '1',
        '1', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa possimus beatae commodi autem suscipit. Eaque enim asperiores libero.', '2024-03-02 19:33', NULL,
        NULL, 'PENDING', '1',
        '2', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Mollitia eveniet minus quos optio. Placeat maxime praesentium sapiente deleniti sit rem ducimus.', '2024-02-14 01:24', 'Impedit exercitationem ex sapiente in eius consectetur maxime.',
        '2024-03-10 02:13', 'APPROVED', '1',
        '3', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae adipisci odio labore. Consectetur facere inventore suscipit consequuntur.', '2024-01-10 13:55', 'Architecto placeat sint eos. Odit tempore dolorem fuga cum libero.',
        '2024-05-14 18:37', 'REJECTED', '1',
        '4', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Commodi modi temporibus omnis. Libero ut quisquam maiores. Dolorem deserunt autem quam dicta harum.', '2024-05-30 00:19', 'Amet ratione a et. Necessitatibus quo vel quos at esse fugiat. Est quidem illum unde.',
        '2024-05-30 08:52', 'REJECTED', '1',
        '5', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil laboriosam sint ad.', '2024-02-07 07:21', 'Beatae repudiandae nobis. Cumque inventore autem dolore.',
        '2024-05-23 18:27', 'REJECTED', '1',
        '1', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima sequi eius exercitationem laborum culpa deleniti. Occaecati non harum.', '2024-04-15 15:36', 'Perspiciatis fugiat nam cupiditate est sint doloribus vel. Iure nam quidem fuga maiores.',
        '2024-05-26 17:50', 'REJECTED', '1',
        '2', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae explicabo vero minus aliquam dolorem.', '2024-03-08 00:19', 'Aperiam possimus quod dolorem natus quas. Est impedit cum at quis at.',
        '2024-03-09 17:08', 'REJECTED', '1',
        '3', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae adipisci aut cum. Officiis unde iusto esse sequi repellat. Corporis necessitatibus ipsum.', '2024-03-03 06:12', NULL,
        NULL, 'PENDING', '1',
        '4', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facilis temporibus ex vero debitis.', '2024-03-29 21:37', 'Architecto accusamus exercitationem accusamus perspiciatis. Cumque tempora modi.',
        '2024-04-29 12:42', 'APPROVED', '1',
        '5', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ex voluptates eaque id voluptatibus. Aperiam aspernatur in maxime id reiciendis illo.', '2024-04-07 07:38', 'Nobis a blanditiis dolores voluptate ab alias.',
        '2024-05-18 05:14', 'REJECTED', '1',
        '1', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa temporibus tempora. Culpa quae error aliquam.', '2024-01-22 04:47', 'Maiores occaecati qui quaerat. Numquam quasi iusto suscipit ducimus distinctio.',
        '2024-02-03 20:29', 'REJECTED', '1',
        '2', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Porro eum accusantium quo. Natus deleniti fuga reprehenderit cupiditate odio dolore.', '2024-03-23 13:53', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem nisi sequi earum corrupti voluptatem optio. Ea quas similique error.', '2024-01-23 20:48', NULL,
        NULL, 'PENDING', '1',
        '4', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus officiis aut dolorem harum non. Quia ad optio ea.', '2024-03-21 12:29', NULL,
        NULL, 'PENDING', '1',
        '5', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime eligendi soluta aliquid mollitia suscipit.', '2024-01-28 08:43', NULL,
        NULL, 'PENDING', '1',
        '1', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit totam minus modi expedita.', '2024-05-27 03:12', NULL,
        NULL, 'PENDING', '1',
        '2', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt ab fugit unde placeat. Vel maiores sequi error atque totam assumenda.', '2024-02-12 03:18', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam dignissimos quasi at perspiciatis laborum. Cum cum expedita.', '2024-01-29 11:43', NULL,
        NULL, 'PENDING', '1',
        '4', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nulla harum vitae enim. Nesciunt adipisci suscipit optio facilis nisi perferendis.', '2024-02-28 10:08', NULL,
        NULL, 'PENDING', '1',
        '5', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facilis provident blanditiis non nostrum. Porro quidem aliquid. Id quisquam libero assumenda.', '2024-01-12 16:23', NULL,
        NULL, 'PENDING', '1',
        '1', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident qui quibusdam eaque quam. Non possimus officia recusandae autem fugit.', '2024-05-29 19:18', 'Quaerat dolor odio velit consequuntur et sint. Nulla hic dolores dolores vel.',
        '2024-05-30 07:38', 'REJECTED', '1',
        '2', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa optio earum ipsum ex. Sunt est expedita fugit animi. Cumque ipsa dignissimos eligendi.', '2024-01-06 18:33', 'Ratione quam eaque sed.',
        '2024-05-02 19:18', 'REJECTED', '1',
        '3', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea commodi fuga quis iste tenetur. Officiis magnam illum hic explicabo.', '2024-01-06 02:24', 'Facere aperiam odio dolorum expedita. Quibusdam a animi soluta enim nulla excepturi laboriosam.',
        '2024-02-08 18:07', 'APPROVED', '1',
        '4', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium odio a sapiente repellat. Sit id officiis ex dolor.', '2024-02-22 22:49', 'Magni veniam eius vero suscipit. Voluptatem commodi iure. Suscipit totam aperiam beatae nesciunt.',
        '2024-05-21 04:04', 'REJECTED', '1',
        '5', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Earum sunt ducimus minus repudiandae aliquid aut. Maiores veniam magni doloremque.', '2024-03-22 03:29', 'Ad error vel recusandae fuga suscipit dolore. Quasi quibusdam quaerat vitae recusandae pariatur ut.',
        '2024-04-28 06:26', 'REJECTED', '1',
        '1', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores delectus modi deleniti voluptatem autem. Laboriosam libero voluptas itaque amet.', '2024-05-04 19:51', NULL,
        NULL, 'PENDING', '1',
        '2', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consectetur nobis rerum nulla. Similique nam eveniet provident.', '2024-03-26 23:05', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae cupiditate officiis aut. Ducimus accusamus debitis iste.', '2024-01-15 07:35', 'At aperiam ratione eos tempore. Nostrum eveniet deserunt consectetur sit fugit.',
        '2024-01-16 03:24', 'APPROVED', '1',
        '4', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id architecto qui magnam. Earum consequatur ut ipsam. Earum facere dolorum quaerat quo.', '2024-03-21 08:45', 'Quo ullam voluptatem ea repellat commodi architecto. Totam modi pariatur mollitia.',
        '2024-05-01 07:47', 'APPROVED', '1',
        '5', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse officiis occaecati possimus recusandae. In ab nisi corporis adipisci. Molestias at fugit quo.', '2024-04-18 16:40', 'Qui ipsa recusandae ipsa facere. Dolorum deserunt unde ipsum.',
        '2024-05-09 00:19', 'REJECTED', '1',
        '1', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium laboriosam ea dignissimos. Fugit atque consequuntur dolor repellat quaerat.', '2024-03-17 08:29', 'Doloremque repellendus explicabo. Tempora quaerat in unde.',
        '2024-04-15 08:19', 'REJECTED', '1',
        '2', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Assumenda vel eius porro sint. Corporis praesentium magnam ea quibusdam.', '2024-01-02 03:13', NULL,
        NULL, 'PENDING', '1',
        '3', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Occaecati suscipit porro iste temporibus cumque.', '2024-04-11 08:55', 'Unde voluptatibus pariatur reprehenderit ex beatae. Autem tempore laborum facere minus.',
        '2024-04-12 07:11', 'APPROVED', '1',
        '4', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum cupiditate quas ex iure alias. Debitis rem incidunt.', '2024-05-21 04:22', NULL,
        NULL, 'PENDING', '1',
        '5', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime impedit aliquam sunt. Ipsam modi asperiores quasi odit et nihil sed.', '2024-02-25 13:45', 'Dolorum accusantium quos. Quia odit reiciendis quidem animi.',
        '2024-05-24 22:54', 'APPROVED', '4',
        '1', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptate sequi nisi vitae.', '2024-03-24 08:56', NULL,
        NULL, 'PENDING', '4',
        '2', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam aut ipsa. Ipsa dolore quia. Dicta dignissimos harum quidem asperiores nobis nihil.', '2024-04-16 15:36', NULL,
        NULL, 'PENDING', '4',
        '3', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam eum nam excepturi at a numquam repellendus. Nemo provident magni.', '2024-02-17 20:02', NULL,
        NULL, 'PENDING', '4',
        '4', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi rem ipsum ea reprehenderit consectetur. Tempore officiis non inventore sequi possimus.', '2024-01-01 21:24', 'Blanditiis praesentium architecto tempora fugit. Soluta molestiae iure quia tenetur tempora.',
        '2024-01-05 07:09', 'REJECTED', '4',
        '5', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores adipisci corporis vitae qui ea. Dolorem laborum ipsa animi.', '2024-02-09 11:53', NULL,
        NULL, 'PENDING', '4',
        '1', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi quaerat modi quas voluptatum debitis.', '2024-01-23 09:10', 'Corrupti quos vitae corporis similique.',
        '2024-03-26 00:10', 'APPROVED', '4',
        '2', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ullam adipisci iste facere amet magni. Totam cumque inventore quibusdam dolorem dicta.', '2024-05-14 22:58', 'Sed eligendi natus explicabo beatae maiores tenetur. Accusantium cum deleniti consectetur velit ad.',
        '2024-05-25 03:26', 'REJECTED', '4',
        '3', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Pariatur quidem nam ducimus nisi. Possimus ipsa quis doloribus.', '2024-03-24 06:20', 'Eius quisquam impedit iusto saepe. Voluptatem illo itaque occaecati hic inventore pariatur.',
        '2024-04-23 21:49', 'REJECTED', '4',
        '4', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quia iste eligendi. Autem natus cumque eos nulla saepe totam.', '2024-02-07 09:46', NULL,
        NULL, 'PENDING', '4',
        '5', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Harum rerum suscipit amet. Adipisci quia placeat quam debitis optio quas. Perspiciatis eius ab.', '2024-01-13 03:54', 'Quidem debitis aut esse cupiditate. Explicabo veritatis reprehenderit officia praesentium omnis.',
        '2024-05-26 07:13', 'REJECTED', '4',
        '1', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci illo alias a occaecati. Magnam at placeat. Minima facere laboriosam.', '2024-05-18 07:12', 'Nobis architecto eaque eius.',
        '2024-05-24 20:21', 'APPROVED', '4',
        '2', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat similique labore similique incidunt adipisci. Quaerat eveniet ad accusantium quaerat.', '2024-05-25 01:28', 'Voluptatibus veniam vitae quas expedita quae. Provident modi dolores quam.',
        '2024-05-25 02:42', 'APPROVED', '4',
        '3', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Harum veritatis vitae iure. Beatae provident aliquid odit ipsa.', '2024-01-15 22:40', 'Quidem sint delectus laboriosam sequi fugit blanditiis esse. Atque molestiae fugit vero in.',
        '2024-05-09 00:45', 'REJECTED', '4',
        '4', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus esse reiciendis non temporibus consectetur. Alias nobis itaque accusamus mollitia.', '2024-03-14 02:33', 'Est inventore ex praesentium.',
        '2024-03-16 00:36', 'APPROVED', '4',
        '5', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id veniam mollitia quod fugiat possimus. Incidunt aliquam nam. Similique aspernatur ut natus.', '2024-05-19 22:39', 'Ipsa numquam iste. Recusandae cupiditate ut ex sequi. Consequatur expedita quo incidunt.',
        '2024-05-24 20:48', 'APPROVED', '4',
        '1', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vel laboriosam adipisci fuga doloremque sequi rem. Praesentium vero aspernatur ad maxime sed.', '2024-02-27 00:54', NULL,
        NULL, 'PENDING', '4',
        '2', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam aliquid nulla illum. Suscipit consectetur quaerat aspernatur est optio odit quis.', '2024-02-16 22:11', 'Similique ex ex praesentium. Temporibus ratione atque officiis et excepturi odit tempore.',
        '2024-03-29 22:44', 'REJECTED', '4',
        '3', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Itaque omnis at nisi dolorum ipsa quia iure. Corrupti aliquam quibusdam asperiores laudantium sint.', '2024-01-31 02:46', 'Architecto hic quidem cum.',
        '2024-04-13 05:27', 'REJECTED', '4',
        '4', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat ad nesciunt neque. A alias sapiente id eius. Sit accusantium ducimus.', '2024-03-18 01:19', 'Similique ipsam corporis omnis consectetur. Sequi dolorum repellat doloremque nulla delectus.',
        '2024-04-27 00:38', 'REJECTED', '4',
        '5', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam iure ut mollitia voluptas. Quia sint sint ex assumenda.', '2024-03-11 14:42', 'Ipsum modi ducimus officiis aliquid ipsum adipisci nisi. Ex accusamus consectetur corrupti ea.',
        '2024-03-28 18:34', 'REJECTED', '4',
        '1', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque dignissimos et nesciunt. Fugit eaque laboriosam asperiores.', '2024-04-13 02:47', 'In possimus vero voluptas eligendi iure. Minima facilis dolore modi aspernatur facere.',
        '2024-05-19 17:37', 'APPROVED', '4',
        '2', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis deserunt numquam quibusdam. Debitis unde assumenda vitae deserunt expedita.', '2024-04-15 12:27', 'Voluptatum occaecati natus tempore accusamus.',
        '2024-05-23 06:22', 'APPROVED', '4',
        '3', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Incidunt eaque sit modi exercitationem quia doloremque aliquid.', '2024-05-23 21:48', 'Accusamus asperiores nam exercitationem necessitatibus deserunt soluta. Amet vel ipsum excepturi.',
        '2024-05-25 20:50', 'APPROVED', '4',
        '4', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquid consectetur dolore nulla.', '2024-04-03 23:27', NULL,
        NULL, 'PENDING', '4',
        '5', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem fugiat commodi recusandae. Ad tenetur labore in. Quae nam asperiores est non commodi ut.', '2024-05-30 03:01', 'Facere ipsa eveniet saepe neque voluptatibus consectetur. Asperiores sapiente sit explicabo.',
        '2024-05-30 04:51', 'REJECTED', '4',
        '1', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis culpa facere. Enim voluptatibus nesciunt eveniet sapiente tempore.', '2024-03-09 09:52', NULL,
        NULL, 'PENDING', '4',
        '2', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Error eum dolorem dolorem voluptas fuga impedit. Esse cum asperiores illo laboriosam ratione.', '2024-02-28 11:35', 'Soluta voluptatibus exercitationem deleniti fugiat. Quis nisi debitis recusandae fuga.',
        '2024-05-23 06:00', 'APPROVED', '4',
        '3', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('A similique cumque omnis. Ea optio vel voluptatum laboriosam.', '2024-05-01 03:52', NULL,
        NULL, 'PENDING', '4',
        '4', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ullam perspiciatis aut deleniti explicabo repellat quos. Nam aspernatur corrupti.', '2024-02-07 19:21', 'Cumque ducimus error itaque tempora. Explicabo quidem animi excepturi alias tempora.',
        '2024-05-07 21:32', 'APPROVED', '4',
        '5', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus libero magni. Temporibus ea labore aspernatur esse quas.', '2024-02-12 23:47', NULL,
        NULL, 'PENDING', '4',
        '1', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iusto illo eos harum. Dignissimos dolor blanditiis nobis quasi.', '2024-01-24 20:03', 'Impedit quis accusamus tempora aut necessitatibus vero laboriosam. Nihil quas quod dolores dolore.',
        '2024-02-02 16:59', 'REJECTED', '4',
        '2', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perspiciatis non sapiente. Aliquam ipsum maxime.', '2024-01-01 09:00', 'In quidem animi accusamus. Alias blanditiis inventore cum. Recusandae nostrum fugit cum.',
        '2024-01-11 09:14', 'APPROVED', '4',
        '3', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam distinctio corporis dolorem voluptates vero architecto.', '2024-03-21 18:12', 'Temporibus fuga suscipit vero amet doloremque tempora nam.',
        '2024-04-26 15:17', 'APPROVED', '4',
        '4', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorum vel quibusdam sed facilis nobis. Sunt dicta nulla ut laboriosam asperiores sit.', '2024-03-12 19:06', 'Pariatur similique nostrum delectus recusandae. Quasi at nemo beatae eos.
Doloribus aut repellat.',
        '2024-03-19 12:48', 'REJECTED', '4',
        '5', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam velit numquam dolorem reprehenderit deserunt repellat modi. Nobis earum alias enim earum at.', '2024-01-16 04:21', NULL,
        NULL, 'PENDING', '4',
        '1', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis tempora aliquam blanditiis soluta quod.', '2024-01-10 22:16', 'Omnis modi perferendis. Debitis id perspiciatis delectus ipsam.',
        '2024-04-27 23:40', 'REJECTED', '4',
        '2', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eos culpa id vero dolore modi. Non veniam perspiciatis distinctio.', '2024-02-16 13:46', NULL,
        NULL, 'PENDING', '4',
        '3', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Libero rerum at et voluptas quae similique. Enim molestias labore hic odit.', '2024-05-22 07:11', 'Et nam explicabo laborum. A unde ipsum vitae. Tenetur quas voluptates tenetur quaerat.',
        '2024-05-28 02:48', 'REJECTED', '4',
        '4', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis in minima atque. Earum et quis consectetur illo alias. Laborum earum vitae atque dolor rerum.', '2024-03-26 13:46', 'Sunt tempore unde architecto.',
        '2024-04-25 17:01', 'REJECTED', '4',
        '5', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore ipsa ullam voluptate. Atque tempore eius necessitatibus a asperiores.', '2024-01-28 13:25', NULL,
        NULL, 'PENDING', '4',
        '1', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam libero quas saepe. Tempora accusamus itaque quidem officiis.
Occaecati iusto eos.', '2024-02-26 08:34', NULL,
        NULL, 'PENDING', '4',
        '2', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos officiis amet iste.', '2024-02-27 12:51', NULL,
        NULL, 'PENDING', '4',
        '3', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse exercitationem repellat veritatis. Quos exercitationem cumque aut saepe nisi.', '2024-05-22 16:14', NULL,
        NULL, 'PENDING', '4',
        '4', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum nam blanditiis doloribus.', '2024-03-22 13:20', 'Voluptatem praesentium minima sint. Provident sapiente voluptate. Aperiam accusamus debitis.',
        '2024-05-10 12:51', 'APPROVED', '4',
        '5', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod atque culpa nemo est non. Quasi repudiandae tempore. Optio ipsum eaque blanditiis.', '2024-01-21 12:58', 'A laboriosam adipisci error. Voluptas ducimus vero odit autem.',
        '2024-04-25 10:31', 'REJECTED', '4',
        '1', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit voluptate quaerat nisi fuga fuga dolorum sint. Ducimus quam deleniti magni cumque.', '2024-04-27 04:40', 'Repudiandae a dolore rem quisquam qui. Vel at assumenda perferendis asperiores accusamus.',
        '2024-05-14 16:14', 'REJECTED', '4',
        '2', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id quis odit dicta nam. Sequi eaque tempore repellat fugit animi.', '2024-01-13 08:38', 'Doloremque quia ipsam. Velit quidem reprehenderit vitae.',
        '2024-05-23 06:52', 'APPROVED', '4',
        '3', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa atque maxime ducimus cumque eaque. Ad nostrum quasi maxime.', '2024-03-24 14:17', 'Magnam at saepe esse animi debitis. Odit doloribus consequatur magnam.',
        '2024-04-04 00:59', 'APPROVED', '4',
        '4', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Delectus dolor repellat dolore. Asperiores qui minus modi unde iure.', '2024-03-21 03:53', 'Quasi iure provident consequatur. Molestias repellendus eum enim.',
        '2024-05-13 23:11', 'APPROVED', '4',
        '5', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus similique at. Totam quos quod. Soluta illo odio expedita debitis.', '2024-03-20 04:59', NULL,
        NULL, 'PENDING', '2',
        '1', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit dicta magnam ea suscipit laudantium itaque. Eos vitae eum inventore.', '2024-05-15 14:16', NULL,
        NULL, 'PENDING', '2',
        '2', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cupiditate occaecati libero explicabo nesciunt et soluta. Sunt atque provident ipsa.', '2024-02-03 06:56', NULL,
        NULL, 'PENDING', '2',
        '3', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas nam cum. Praesentium rerum eos cupiditate.', '2024-03-25 18:44', NULL,
        NULL, 'PENDING', '2',
        '4', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi ipsum eaque dolore consectetur inventore. Alias ipsam maiores beatae dignissimos.', '2024-01-03 16:46', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam minima dicta aut. Quam nemo quibusdam error. Modi repellendus aspernatur qui.', '2024-04-08 09:43', 'Eum mollitia soluta necessitatibus. Optio quibusdam voluptas ut numquam dolore facilis.',
        '2024-05-13 06:42', 'APPROVED', '2',
        '1', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Hic recusandae unde esse nihil. Aliquid magnam saepe quos.
Dolor suscipit eum numquam laboriosam.', '2024-05-12 01:00', 'Asperiores doloremque itaque cupiditate. Nemo cupiditate inventore laboriosam recusandae.',
        '2024-05-13 12:49', 'APPROVED', '2',
        '2', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Velit quae debitis ratione sapiente ad quod. Labore veritatis facilis earum vitae.', '2024-04-20 06:14', 'Corrupti nemo laborum accusantium doloribus.',
        '2024-05-10 18:23', 'REJECTED', '2',
        '3', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime minima eligendi tenetur illum.', '2024-05-07 21:57', 'Accusantium placeat quos a animi neque. Asperiores assumenda commodi esse est libero atque tenetur.',
        '2024-05-24 15:59', 'REJECTED', '2',
        '4', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aspernatur dolorem recusandae consequuntur.
Porro cupiditate temporibus.', '2024-02-17 04:39', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere odit excepturi. Quod sed laudantium saepe pariatur.', '2024-04-14 14:20', 'Iure labore in natus. Ducimus molestias minus non perspiciatis.',
        '2024-05-07 03:49', 'APPROVED', '2',
        '1', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea natus autem aut inventore. Ab voluptates eaque quam sit.', '2024-02-28 09:02', 'Tempore dicta deserunt non dolore ipsa.',
        '2024-04-15 03:05', 'APPROVED', '2',
        '2', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reiciendis eveniet quas cumque. Suscipit esse ea earum magnam magnam.', '2024-04-20 16:54', 'Fugit quas in occaecati possimus. Ratione doloribus labore dicta explicabo.',
        '2024-04-21 14:30', 'REJECTED', '2',
        '3', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reprehenderit unde quam. Impedit quisquam ratione occaecati. Aliquam molestiae eaque suscipit.', '2024-01-19 11:12', NULL,
        NULL, 'PENDING', '2',
        '4', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Commodi eos a nesciunt. Necessitatibus beatae temporibus ex. Voluptatum voluptatem suscipit fugiat.', '2024-03-24 12:29', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ex explicabo magnam dolor voluptates perspiciatis.', '2024-05-04 22:47', 'Maiores quibusdam consequuntur quo iste itaque. Recusandae quam illum earum dicta exercitationem.',
        '2024-05-27 16:02', 'APPROVED', '2',
        '1', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloremque sunt quos consequatur esse officiis. Odit harum incidunt doloribus porro.', '2024-04-24 13:08', 'Quibusdam cupiditate fugiat non eum. Dignissimos corrupti deserunt vero necessitatibus.',
        '2024-05-22 18:45', 'APPROVED', '2',
        '2', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Non sit sapiente atque enim. Repudiandae ratione nisi enim. Consequatur quas aperiam eos.', '2024-03-26 00:39', 'Quam distinctio labore sit vero. Dignissimos quam quisquam suscipit.',
        '2024-03-29 11:29', 'REJECTED', '2',
        '3', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat neque voluptate libero numquam ab tempora labore. Rem quod modi quia quidem.', '2024-01-30 12:11', 'In non ut consequatur perferendis expedita. Quaerat dicta reprehenderit eum dignissimos quia quod.',
        '2024-05-28 20:34', 'REJECTED', '2',
        '4', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia perspiciatis unde occaecati. Quam odit officiis vel aut.', '2024-05-08 05:14', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aut id sit et impedit. Minus quidem hic voluptate ullam a accusantium.', '2024-01-03 22:27', NULL,
        NULL, 'PENDING', '2',
        '1', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellendus iste quam nemo eligendi. Aspernatur blanditiis molestiae corrupti voluptatem tempora.', '2024-05-27 19:22', 'Hic rem cumque architecto voluptatum quasi iste. Eaque sequi ad rerum.',
        '2024-05-29 23:23', 'APPROVED', '2',
        '2', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident facere exercitationem quos. Eius ad minima laboriosam veritatis rem ad.', '2024-01-15 20:03', NULL,
        NULL, 'PENDING', '2',
        '3', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente commodi ad architecto dolore.', '2024-05-29 00:01', NULL,
        NULL, 'PENDING', '2',
        '4', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam consectetur tempore. Est cupiditate dolor.', '2024-04-11 18:31', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In autem dolores. Consectetur necessitatibus quam odio soluta velit assumenda excepturi.', '2024-02-01 23:43', 'Earum dolorum voluptatibus deserunt fuga. Porro consequatur libero at velit tenetur dicta.',
        '2024-03-06 01:08', 'REJECTED', '2',
        '1', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias voluptatibus voluptate unde.', '2024-05-22 23:40', 'Veniam vero quam quam. Iusto repellendus quibusdam est maxime.',
        '2024-05-24 15:26', 'REJECTED', '2',
        '2', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius repudiandae ullam sit quaerat est.', '2024-04-29 02:44', 'Nobis consequatur voluptas aliquam quidem.',
        '2024-05-17 07:06', 'REJECTED', '2',
        '3', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquid voluptates eveniet. Repellat dolorum eius fuga aut.', '2024-04-05 19:33', 'Culpa facere dolores ut expedita esse expedita. Nulla odit illum rerum laudantium.',
        '2024-05-17 10:07', 'APPROVED', '2',
        '4', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo voluptas itaque error tenetur. Esse id ipsa corporis ipsum molestias.', '2024-01-01 08:47', 'Molestiae ipsam doloribus tempora impedit. Vel quos reiciendis numquam.',
        '2024-01-30 08:23', 'REJECTED', '2',
        '5', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Qui similique ea. Sit quibusdam ex ex ipsam dicta. Nam a sed placeat tempora quis.', '2024-03-09 13:06', 'At adipisci maxime debitis. Ducimus porro alias commodi cupiditate maiores blanditiis.',
        '2024-05-08 16:05', 'APPROVED', '2',
        '1', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia beatae cum dolore libero quisquam eum. Dolor voluptas eligendi eum saepe quidem.', '2024-04-03 07:42', 'Ad sequi enim ex. Neque totam molestiae occaecati nemo dolores.',
        '2024-05-17 05:02', 'REJECTED', '2',
        '2', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam sequi tenetur qui harum.', '2024-03-05 21:20', 'Consequatur aliquam vero magnam amet omnis. At nulla ratione.',
        '2024-03-20 13:32', 'REJECTED', '2',
        '3', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id quis omnis facilis sequi. Officia non quis sed.', '2024-01-25 10:26', 'Praesentium omnis aliquam sapiente.',
        '2024-04-13 11:07', 'APPROVED', '2',
        '4', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur aliquam quis est ullam praesentium. Recusandae iusto tempore occaecati aut ullam.', '2024-04-21 13:00', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Velit voluptates laboriosam. Quos ab officiis occaecati soluta corrupti.', '2024-04-09 12:46', 'Odio assumenda ipsum libero dolore doloribus ab. Eos quas repudiandae molestiae.',
        '2024-04-18 07:00', 'APPROVED', '2',
        '1', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque sit maiores aperiam tempora rerum sapiente. Mollitia vel sit numquam impedit commodi totam.', '2024-05-13 06:05', NULL,
        NULL, 'PENDING', '2',
        '2', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laboriosam non maiores eum. Neque ducimus dolorem praesentium.', '2024-02-22 06:32', NULL,
        NULL, 'PENDING', '2',
        '3', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aspernatur ipsa impedit. Saepe nisi id beatae ex et magnam. Minima eligendi omnis nam.', '2024-05-23 14:10', 'Officiis iste error quam neque impedit minima laudantium. Fugiat assumenda nemo quasi.',
        '2024-05-29 11:49', 'REJECTED', '2',
        '4', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maiores minima quasi dolore totam ducimus a. Accusantium aliquam aliquid magnam.', '2024-01-31 21:03', 'Explicabo corrupti eaque ratione atque error vero.',
        '2024-04-16 05:34', 'APPROVED', '2',
        '5', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure ipsam voluptatibus voluptate.', '2024-01-11 11:06', 'Maiores repudiandae quisquam. Commodi maxime vel accusamus temporibus.',
        '2024-04-29 10:07', 'APPROVED', '2',
        '1', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab sint vitae expedita ea dolorum tempore. Tenetur nostrum blanditiis commodi esse sequi accusamus.', '2024-03-22 07:19', 'Quisquam necessitatibus inventore error.
Eveniet velit sed cumque id ullam quam ullam.',
        '2024-04-24 11:05', 'REJECTED', '2',
        '2', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia ea aspernatur aut ab expedita occaecati. Perspiciatis pariatur debitis doloribus.', '2024-05-04 00:18', 'Recusandae ex facere repellat perferendis explicabo optio. Laboriosam nihil voluptate.',
        '2024-05-27 15:02', 'APPROVED', '2',
        '3', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium accusamus sit totam quas. Numquam porro voluptatum enim.', '2024-02-19 16:45', NULL,
        NULL, 'PENDING', '2',
        '4', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit amet voluptatum rem sunt dolor. Sit repellendus eaque blanditiis exercitationem.', '2024-03-13 09:46', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt voluptate tempora.', '2024-02-15 15:19', 'Consequuntur similique corrupti error temporibus.',
        '2024-04-17 05:27', 'REJECTED', '2',
        '1', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta totam saepe. In quo quis quisquam.', '2024-01-05 03:57', 'Debitis architecto fugiat voluptate. Doloremque accusantium optio.',
        '2024-01-31 07:34', 'APPROVED', '2',
        '2', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repudiandae officia rem fuga blanditiis. Qui porro nisi impedit.', '2024-05-17 02:52', 'Fugiat similique corrupti praesentium error esse.',
        '2024-05-21 10:12', 'REJECTED', '2',
        '3', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quaerat nostrum quos odit inventore voluptates magni dolor.', '2024-04-22 00:11', 'Ea placeat provident soluta. Fugit error animi unde perferendis quasi quasi.',
        '2024-04-27 19:35', 'APPROVED', '2',
        '4', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatibus dolores deserunt. Illum atque alias sunt provident at veritatis culpa.', '2024-04-21 13:12', NULL,
        NULL, 'PENDING', '2',
        '5', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque maxime magnam. Nulla tempora magni.
Unde magnam aliquam eos expedita sequi deleniti ipsam.', '2024-05-09 22:43', NULL,
        NULL, 'PENDING', '4',
        '1', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit eum incidunt aliquid asperiores.', '2024-01-31 21:59', NULL,
        NULL, 'PENDING', '4',
        '2', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt sed ratione corporis unde fuga.', '2024-02-23 18:56', NULL,
        NULL, 'PENDING', '4',
        '3', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ut nostrum totam eum porro consectetur nisi. Repellat tempore quas quaerat qui sit.', '2024-05-26 14:41', 'Fugit assumenda repudiandae minima nulla nulla.',
        '2024-05-28 20:20', 'REJECTED', '4',
        '4', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Enim deleniti omnis possimus similique voluptate magni.', '2024-05-25 12:48', 'Odio corporis dolores ex ratione accusantium sequi. Illum inventore numquam nam eveniet.',
        '2024-05-28 21:46', 'REJECTED', '4',
        '5', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Est culpa fugit nulla. Totam ex explicabo rerum id laboriosam harum.', '2024-02-09 10:58', 'Neque reiciendis at eaque dolore. At unde aliquid aut. Enim ut doloremque consectetur deserunt.',
        '2024-02-27 01:41', 'APPROVED', '4',
        '1', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Harum reiciendis eos. Unde illum neque cupiditate quas eius. Nemo dolor doloremque fugit veritatis.', '2024-04-28 06:43', 'Doloremque voluptates libero. Iusto voluptas ducimus dolorum autem exercitationem velit at.',
        '2024-05-24 21:19', 'REJECTED', '4',
        '2', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa accusamus nobis repellat delectus.', '2024-05-11 01:13', 'Tempore saepe placeat saepe tenetur quidem.
Autem veritatis neque maxime voluptatem voluptatem.',
        '2024-05-24 21:00', 'REJECTED', '4',
        '3', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio libero animi occaecati aut doloribus. At tenetur ab. Eum esse ex.', '2024-05-01 04:33', NULL,
        NULL, 'PENDING', '4',
        '4', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi quidem vel. Minus pariatur eum architecto.', '2024-03-15 21:36', 'Error saepe iusto perspiciatis saepe incidunt similique.',
        '2024-05-17 03:43', 'APPROVED', '4',
        '5', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab adipisci animi eos saepe. Occaecati ullam fugit reiciendis labore.', '2024-04-12 13:23', NULL,
        NULL, 'PENDING', '4',
        '1', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit harum beatae. Exercitationem fugit quibusdam distinctio nobis consequuntur autem.', '2024-03-15 03:12', 'Illo dolorem molestias aliquid. Rerum nulla dolores temporibus sed.',
        '2024-04-06 10:13', 'APPROVED', '4',
        '2', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatibus aut maiores autem minima. Cumque sequi eveniet sint ad.', '2024-05-27 06:45', 'Earum ad iste optio aliquid placeat. Ipsa numquam enim aspernatur. Praesentium minus possimus cum.',
        '2024-05-28 10:44', 'APPROVED', '4',
        '3', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Similique temporibus maxime quos vero. Eligendi temporibus exercitationem ullam.', '2024-02-25 04:14', 'Ipsum rem assumenda. Itaque omnis iusto consequatur sunt. Natus quis natus.',
        '2024-03-17 16:15', 'APPROVED', '4',
        '4', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione itaque nulla autem molestiae porro rem.', '2024-02-28 21:17', 'Laborum fuga occaecati alias numquam minus tempora.',
        '2024-04-09 01:42', 'APPROVED', '4',
        '5', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit quidem placeat dolore incidunt. Laboriosam aut illo ratione doloribus adipisci.', '2024-04-05 03:33', 'Fuga aut quas ipsam. Sint accusamus ipsum commodi.',
        '2024-04-16 17:04', 'REJECTED', '4',
        '1', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ad voluptas vitae voluptate error odit.', '2024-01-16 23:54', NULL,
        NULL, 'PENDING', '4',
        '2', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloribus dolorum fugit recusandae reiciendis natus libero. Harum veniam consectetur.', '2024-05-10 17:23', NULL,
        NULL, 'PENDING', '4',
        '3', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Occaecati minima accusantium beatae. Esse accusamus accusamus pariatur incidunt esse quam.', '2024-03-17 16:04', 'Libero alias est. Rem possimus quasi omnis.',
        '2024-03-22 18:52', 'REJECTED', '4',
        '4', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum placeat ad iste qui magnam nihil. Architecto excepturi totam officiis impedit.', '2024-05-16 22:09', 'Tenetur non unde reiciendis soluta est nihil. Minima animi commodi natus.',
        '2024-05-25 05:57', 'APPROVED', '4',
        '5', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perspiciatis deleniti in iure. Facere officia eius. Iste commodi amet fuga cumque quas voluptatum.', '2024-03-02 10:14', 'Ex iure libero. Laudantium molestiae vitae fugiat quidem quisquam. Doloribus beatae ea laborum.',
        '2024-04-13 18:45', 'REJECTED', '4',
        '1', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempora molestiae sapiente ad reprehenderit facilis. Nesciunt asperiores sapiente ipsam.', '2024-01-04 08:48', 'Voluptate ex iste dolor velit. Dolorem nemo fugit ut iste atque quasi repellendus.',
        '2024-02-05 06:50', 'REJECTED', '4',
        '2', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas dolorum quae nam cupiditate. Eos quasi numquam fuga commodi dolores fugiat.', '2024-01-20 20:58', 'Impedit id voluptate labore dolor neque. Eos quas quos quos optio.',
        '2024-03-29 19:38', 'APPROVED', '4',
        '3', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam nemo adipisci consequatur. Animi enim quos modi sequi odio ea nisi.', '2024-05-25 04:07', 'Debitis eius laboriosam est. Numquam amet illum quo quibusdam.',
        '2024-05-25 07:18', 'APPROVED', '4',
        '4', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium sed voluptas minima. Quasi consequuntur velit voluptatum.', '2024-05-20 19:58', 'Maxime autem rerum rem occaecati dolores dolorum.',
        '2024-05-25 04:59', 'REJECTED', '4',
        '5', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet amet incidunt temporibus.', '2024-04-04 19:32', NULL,
        NULL, 'PENDING', '4',
        '1', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatibus assumenda quas aperiam velit nam quos. Porro doloribus itaque impedit.', '2024-02-26 16:16', 'Suscipit in occaecati natus odit in. In temporibus fuga recusandae commodi.',
        '2024-05-19 04:19', 'APPROVED', '4',
        '2', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aut maxime culpa alias soluta animi ipsum. Ea similique assumenda. Sapiente saepe ea.', '2024-03-13 02:11', NULL,
        NULL, 'PENDING', '4',
        '3', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum omnis magni enim. Modi hic quod quod hic voluptatibus perferendis.', '2024-03-13 22:21', 'Repudiandae accusantium enim consectetur sunt accusantium. Fugit aut hic.',
        '2024-04-20 09:25', 'REJECTED', '4',
        '4', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In iste iste nesciunt omnis. Labore sapiente iure.', '2024-05-24 10:05', 'Atque laudantium asperiores eaque nostrum qui sed. Cum assumenda numquam temporibus unde aliquid.',
        '2024-05-30 09:45', 'REJECTED', '4',
        '5', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis modi quis.
Illum eveniet voluptatum voluptates dolor. Facere nulla et explicabo.', '2024-05-24 19:38', 'Deleniti expedita at consequatur voluptatibus fuga. Repellendus deleniti ipsam.',
        '2024-05-26 15:53', 'REJECTED', '4',
        '1', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias repellendus quia veritatis magnam.', '2024-05-15 19:51', NULL,
        NULL, 'PENDING', '4',
        '2', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Earum voluptates ducimus consequuntur. Omnis pariatur facere accusantium saepe.', '2024-01-27 06:13', 'Nam nemo non earum. Modi dolor itaque inventore aliquid.',
        '2024-03-30 01:33', 'REJECTED', '4',
        '3', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse omnis tempore ullam sed. Vero sapiente explicabo quam.', '2024-03-03 18:05', 'Aut voluptatem dolor sunt. Possimus ab odio officia ullam vero corrupti.',
        '2024-03-25 19:17', 'REJECTED', '4',
        '4', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aut magnam deleniti mollitia consectetur reprehenderit.', '2024-03-28 22:22', NULL,
        NULL, 'PENDING', '4',
        '5', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores repellendus enim tempora eligendi nihil voluptatem maxime. Est ad magni eius.', '2024-04-24 19:07', 'Ducimus deserunt voluptas natus occaecati harum voluptates.',
        '2024-05-20 22:32', 'REJECTED', '4',
        '1', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempora deserunt ex. Vero voluptatum nemo. Qui non iure iste eius quod quibusdam.', '2024-05-19 23:29', 'Dolore vel officiis exercitationem. Laboriosam sequi fuga assumenda ipsum.',
        '2024-05-23 15:19', 'REJECTED', '4',
        '2', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas iure molestiae quam ut officia velit.', '2024-04-29 17:21', 'Suscipit numquam illo cum illum vero id placeat.
Tenetur aut numquam ducimus temporibus autem.',
        '2024-05-25 06:01', 'REJECTED', '4',
        '3', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At corporis saepe vel qui laborum. Repudiandae ut impedit sequi.', '2024-03-10 12:30', NULL,
        NULL, 'PENDING', '4',
        '4', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veritatis vitae sed. Culpa ipsum pariatur vitae magnam eos dicta. Asperiores iusto a sed.', '2024-02-19 09:23', 'Illo ullam sint amet iusto. Quis cupiditate doloremque possimus quisquam. Cum nobis rerum maxime.',
        '2024-05-10 19:32', 'REJECTED', '4',
        '5', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Delectus ad eum commodi.', '2024-01-22 21:49', 'Delectus nesciunt atque nulla quasi eum quaerat ipsam. Nisi a facilis porro ducimus.',
        '2024-04-26 17:07', 'APPROVED', '4',
        '1', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veritatis quaerat itaque quaerat quaerat nam. Quas distinctio dolorem aliquid quia.', '2024-03-12 10:36', 'Adipisci sint error. Non voluptatem praesentium. Ipsum quis reprehenderit.',
        '2024-03-19 09:06', 'APPROVED', '4',
        '2', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur quidem vitae repudiandae magni.', '2024-04-03 14:03', NULL,
        NULL, 'PENDING', '4',
        '3', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae a minus dolor omnis. Error nostrum quo eaque expedita aliquam neque voluptatibus.', '2024-03-15 00:36', 'Illo repellendus eum in dolor praesentium. Nobis ab ratione nam iure.',
        '2024-05-01 18:00', 'APPROVED', '4',
        '4', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi ducimus dignissimos laudantium minima cumque. Laborum facere nobis rerum.', '2024-01-30 21:33', 'Neque impedit neque facere explicabo deleniti nobis illo.',
        '2024-04-14 11:01', 'REJECTED', '4',
        '5', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione error error fugit labore. Expedita nesciunt tempore rem exercitationem repudiandae sed.', '2024-03-28 16:49', NULL,
        NULL, 'PENDING', '4',
        '1', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Exercitationem sequi magni a dolores cum modi et. Eos quo optio hic.', '2024-03-05 10:50', 'Veniam necessitatibus ullam consequuntur nam.',
        '2024-05-16 19:17', 'REJECTED', '4',
        '2', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illum natus corrupti maxime recusandae. Nihil iure dolorum tempora.', '2024-05-04 00:42', NULL,
        NULL, 'PENDING', '4',
        '3', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In cupiditate sunt delectus. Ipsum maxime aliquam quod sapiente. Ut sunt autem.', '2024-05-17 21:19', 'Cum dolor voluptatem rem omnis. Excepturi eum reprehenderit animi incidunt illo in.',
        '2024-05-23 05:24', 'REJECTED', '4',
        '4', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Animi libero asperiores minus. Necessitatibus atque doloribus quos deserunt.', '2024-04-07 19:52', 'Vitae nulla quaerat accusamus illum.',
        '2024-05-14 02:05', 'REJECTED', '4',
        '5', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus eius architecto. Excepturi quos esse fugit aliquam.', '2024-04-20 04:00', 'Suscipit vel dignissimos. Sapiente inventore praesentium nesciunt.',
        '2024-05-18 20:07', 'APPROVED', '4',
        '1', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ex repudiandae accusantium corporis veniam. Voluptate debitis modi et laudantium magni ratione.', '2024-02-29 08:10', 'Provident iure doloribus magni dignissimos eius. Vitae at in maxime beatae temporibus.',
        '2024-03-08 07:23', 'REJECTED', '4',
        '2', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sed laudantium qui minima laborum ea repellendus. In atque reiciendis ratione odio a.', '2024-01-10 21:03', NULL,
        NULL, 'PENDING', '4',
        '3', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam molestias sunt doloribus cumque. Impedit facere voluptate fugit.', '2024-04-07 01:43', 'Libero enim amet ullam facilis. Dignissimos vero qui mollitia inventore modi dolores.',
        '2024-05-22 02:11', 'APPROVED', '4',
        '4', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe voluptas voluptatibus ullam aliquid occaecati fugit. Itaque voluptatum optio omnis illo.', '2024-01-21 17:55', NULL,
        NULL, 'PENDING', '4',
        '5', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum rerum debitis soluta voluptate. Vel eaque corporis sit quo.', '2024-05-21 09:04', 'Exercitationem repellendus incidunt a sapiente. Laboriosam hic asperiores odit autem magnam.',
        '2024-05-21 13:21', 'APPROVED', '4',
        '1', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates officiis quisquam ab repellendus tempore nesciunt. Iure nam odio consequatur est.', '2024-01-15 15:20', NULL,
        NULL, 'PENDING', '4',
        '2', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias ullam blanditiis. Labore excepturi sunt. Nulla necessitatibus tenetur nemo illum iste.', '2024-03-22 12:09', NULL,
        NULL, 'PENDING', '4',
        '3', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum accusantium ipsam dignissimos. Eos nobis ut dolores quod modi. Et rem quod quo.', '2024-02-26 15:38', 'Rerum facilis ducimus ratione voluptate odit ipsam.',
        '2024-04-21 18:09', 'APPROVED', '4',
        '4', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio reprehenderit culpa quod rerum animi. Dolore ratione iste fuga laudantium.', '2024-05-08 07:32', 'Molestiae deserunt aliquid qui facere veritatis officia. Mollitia libero vel.',
        '2024-05-08 14:07', 'REJECTED', '4',
        '5', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem adipisci laudantium. Illum laboriosam praesentium.', '2024-03-17 09:20', 'Suscipit id illum iure ut eos porro.',
        '2024-04-04 07:43', 'REJECTED', '4',
        '1', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iusto adipisci saepe. Quos omnis fuga molestias distinctio.', '2024-05-12 02:48', 'Similique excepturi iusto id aut autem. Sed occaecati vero.',
        '2024-05-20 11:50', 'REJECTED', '4',
        '2', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore impedit corrupti dicta laboriosam laborum aliquid dolorum.', '2024-04-11 19:07', 'Et fuga adipisci architecto. Quae quis iure. Architecto ipsam doloribus a repudiandae.',
        '2024-05-21 07:16', 'REJECTED', '4',
        '3', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Et quibusdam natus asperiores inventore. Perferendis soluta quo libero rem assumenda.', '2024-02-17 18:50', NULL,
        NULL, 'PENDING', '4',
        '4', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia asperiores labore rerum. Provident expedita doloribus fugiat tempora sapiente.', '2024-02-14 21:23', 'Sed aspernatur enim quidem qui. Tempora explicabo ex quos libero porro.',
        '2024-04-17 08:30', 'APPROVED', '4',
        '5', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet deserunt accusamus dolorem. Dolor blanditiis laudantium accusamus ab quia nulla.', '2024-02-27 21:47', NULL,
        NULL, 'PENDING', '4',
        '1', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit perspiciatis ut molestiae.
Aliquid at magni debitis.', '2024-01-08 23:18', 'Deleniti autem ipsam modi porro perspiciatis voluptas officiis. Praesentium fuga libero.',
        '2024-05-27 17:28', 'APPROVED', '4',
        '2', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequuntur ratione laudantium aliquid maiores doloremque. Ab dolore consequatur.', '2024-04-09 08:43', NULL,
        NULL, 'PENDING', '4',
        '3', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit accusantium tenetur dolorem inventore. A nulla quod cum ipsam quisquam.', '2024-04-19 04:44', 'Iste non provident ipsam facere aliquam. Rem sint quasi porro nemo nobis.',
        '2024-05-06 10:08', 'REJECTED', '4',
        '4', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio inventore ipsa. Fugiat eum impedit explicabo quam ipsa quis. Id cum dolores.', '2024-04-19 17:01', 'Labore iure expedita minima eaque molestias.',
        '2024-05-28 06:44', 'APPROVED', '4',
        '5', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione aliquam nam inventore. Consequuntur ad magni earum quaerat.', '2024-01-21 14:38', NULL,
        NULL, 'PENDING', '4',
        '1', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus id consequatur quibusdam.', '2024-01-18 22:37', 'Numquam asperiores sunt aut doloribus. Eius nihil quod magnam ipsum. Accusamus magni magnam nemo.',
        '2024-05-12 21:52', 'REJECTED', '4',
        '2', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod veniam magnam dolores. Sint accusamus quo illum numquam.', '2024-04-11 02:29', 'Aperiam vero in reiciendis dicta consectetur praesentium. Saepe accusamus impedit debitis autem.',
        '2024-05-07 20:53', 'APPROVED', '4',
        '3', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt quam perferendis laboriosam facere dolorem.', '2024-04-04 12:24', 'Consequuntur atque magnam amet voluptatem cupiditate culpa. Incidunt fugiat id tempore error.',
        '2024-04-13 15:39', 'APPROVED', '4',
        '4', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum error adipisci ratione cumque magnam nam. Ut distinctio iure dignissimos recusandae repellat.', '2024-02-11 07:27', 'Molestiae facere commodi. Vel blanditiis voluptatibus dolore.',
        '2024-05-10 10:44', 'REJECTED', '4',
        '5', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo enim expedita dicta optio. Voluptatem iure asperiores rerum.', '2024-02-17 18:02', 'Harum vel repudiandae eum sequi voluptate illum. Praesentium odit tenetur quas expedita.',
        '2024-05-15 17:31', 'APPROVED', '4',
        '1', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo nihil quas maiores quia tempora veritatis. Officia veritatis minima id non reprehenderit.', '2024-04-21 21:45', NULL,
        NULL, 'PENDING', '4',
        '2', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat esse cumque. Hic atque omnis aliquam provident consectetur.', '2024-03-08 10:19', 'Ipsum quia soluta commodi quaerat. Nemo fuga debitis iure vitae.',
        '2024-03-08 15:44', 'APPROVED', '4',
        '3', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vel nisi maiores natus tempore quas deleniti. Similique itaque iste ab.', '2024-01-27 19:19', 'Pariatur maxime perspiciatis illum omnis error.',
        '2024-03-19 23:46', 'APPROVED', '4',
        '4', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore molestias aspernatur eum minima. Quae nostrum incidunt in magni expedita sint.', '2024-01-15 19:09', 'Repellat aspernatur enim dolor tempore. Natus repellendus exercitationem. Recusandae facere quam.',
        '2024-01-28 08:50', 'REJECTED', '4',
        '5', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id eos veniam ratione ut. Sapiente minima dolor ea. Dicta ea atque facere veniam perferendis.', '2024-01-18 16:35', NULL,
        NULL, 'PENDING', '4',
        '1', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus quam consequuntur error. Eveniet laborum odit iusto dolore.', '2024-03-14 04:42', 'Qui eos aliquid. Officia ipsam ex fugiat. Sit temporibus numquam aspernatur facere alias.',
        '2024-03-14 17:45', 'APPROVED', '4',
        '2', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum ratione dolor vel. Numquam officia modi.', '2024-04-05 21:12', 'Odit quam officia occaecati. Dolores aspernatur facere corporis.',
        '2024-04-09 20:25', 'APPROVED', '4',
        '3', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga veniam qui optio quam. Repellat tempore sit.', '2024-02-19 21:36', 'Repellendus hic libero corporis. Quidem doloremque aspernatur odio.',
        '2024-04-27 04:13', 'APPROVED', '4',
        '4', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ex fugit deserunt ullam libero. Cum illum sit nisi illum.
Aliquid rem ea quae quam.', '2024-01-20 19:48', NULL,
        NULL, 'PENDING', '4',
        '5', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Temporibus beatae explicabo in quisquam id. Numquam minima itaque officia neque beatae.', '2024-02-18 03:43', NULL,
        NULL, 'PENDING', '4',
        '1', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorem dolorum atque cumque aspernatur. Quis beatae voluptatibus aspernatur quo fuga omnis.', '2024-02-06 01:26', 'Mollitia repellat nihil facilis voluptatum. Reiciendis minima corporis minima.',
        '2024-05-23 07:58', 'REJECTED', '4',
        '2', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo quis esse. Debitis quidem harum unde. Blanditiis modi mollitia reprehenderit magnam.', '2024-04-02 06:43', 'Commodi ullam consequatur quas eius minima amet. Culpa atque hic odio ea.',
        '2024-04-21 21:13', 'APPROVED', '4',
        '3', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet voluptatum nihil ea.', '2024-01-30 16:31', NULL,
        NULL, 'PENDING', '4',
        '4', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nisi quaerat delectus dolores. Dolores laborum sapiente ipsam.', '2024-05-11 08:57', 'Quasi impedit iure assumenda soluta accusantium non. Ea voluptatibus impedit repellat.',
        '2024-05-17 10:33', 'REJECTED', '4',
        '5', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt corporis totam excepturi.
Fugiat mollitia velit vero voluptate facilis.', '2024-03-27 20:13', NULL,
        NULL, 'PENDING', '4',
        '1', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos ad ab. Ipsam repellat quisquam quae labore.', '2024-04-01 05:01', NULL,
        NULL, 'PENDING', '4',
        '2', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit culpa sit cumque.
Sed culpa error aperiam aspernatur nihil. Dolor veniam esse vel saepe.', '2024-03-12 01:50', 'Illum facere nam aspernatur. Optio a sunt quidem enim nobis adipisci. Velit dicta illum minima.',
        '2024-03-12 21:59', 'APPROVED', '4',
        '3', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nemo quod minus repudiandae sunt. Totam a explicabo.', '2024-05-17 22:18', 'Quo quis quia consectetur. Laudantium sit libero eveniet quis.',
        '2024-05-18 08:25', 'APPROVED', '4',
        '4', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sequi fugit itaque rerum. Quam laudantium voluptatum laboriosam. Magnam quibusdam quam.', '2024-04-09 04:30', 'Ipsum dolorum deleniti recusandae.
Iusto voluptas rerum id facilis.',
        '2024-05-23 10:48', 'APPROVED', '4',
        '5', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae reiciendis reiciendis iusto temporibus eligendi consectetur animi. Ducimus odit minima quasi.', '2024-04-26 17:28', 'Sit id maiores error explicabo iure dolor.',
        '2024-05-17 07:42', 'REJECTED', '4',
        '1', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur quia qui ex tempora delectus velit. Aliquam aliquid numquam id magnam modi.', '2024-04-13 06:00', NULL,
        NULL, 'PENDING', '4',
        '2', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo repellat ipsa. Ipsum minus id amet sunt dolores numquam.', '2024-02-21 00:47', NULL,
        NULL, 'PENDING', '4',
        '3', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis expedita eum nesciunt ipsam. In in autem nisi delectus corrupti quos.', '2024-05-11 04:15', 'Dolorem quis enim atque officiis. Ipsum excepturi dolorum tenetur.',
        '2024-05-27 15:09', 'APPROVED', '4',
        '4', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat magnam voluptatibus cum animi natus autem. Amet suscipit corporis repudiandae.', '2024-04-02 19:14', NULL,
        NULL, 'PENDING', '4',
        '5', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium eius minus ea nobis. Laborum quod ducimus unde reiciendis rem.', '2024-04-19 10:47', 'Doloribus quibusdam qui quae. Exercitationem et error impedit in amet asperiores.',
        '2024-05-23 08:32', 'REJECTED', '5',
        '1', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Hic ratione similique ullam suscipit dolorum sed. Maxime eaque ea fugit eaque nesciunt.', '2024-01-05 06:37', 'Ipsa non sint nobis odio assumenda. Ut quasi blanditiis cupiditate officiis.',
        '2024-01-16 23:02', 'APPROVED', '5',
        '2', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Mollitia sint deleniti vero omnis enim. Saepe pariatur reiciendis sapiente eveniet adipisci nulla.', '2024-05-16 03:04', 'Distinctio soluta quasi iure consequuntur beatae. Veritatis quia animi.',
        '2024-05-18 01:31', 'REJECTED', '5',
        '3', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit exercitationem suscipit esse ad quod. Accusamus doloremque nemo eaque vel odit.', '2024-02-24 20:30', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione quaerat fugiat. Cum animi impedit distinctio ad labore.', '2024-01-25 11:37', NULL,
        NULL, 'PENDING', '5',
        '5', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi tempora iure incidunt molestias beatae. Rem quae nostrum soluta.', '2024-01-27 04:09', 'Et magnam blanditiis sapiente. Quas odit esse sint atque.
Quos cupiditate corrupti.',
        '2024-04-08 23:16', 'APPROVED', '5',
        '1', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequuntur amet doloremque. Odio nemo pariatur.', '2024-01-31 20:48', NULL,
        NULL, 'PENDING', '5',
        '2', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur dolor perspiciatis corrupti. Odit quia at cumque nobis suscipit ducimus voluptas.', '2024-04-13 14:11', 'Modi illo temporibus hic debitis. Sunt dicta nesciunt quas adipisci.',
        '2024-04-24 20:47', 'APPROVED', '5',
        '3', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci fugit delectus provident blanditiis error. Rerum facilis quas.', '2024-03-28 12:32', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam occaecati quam voluptates. Quae nobis in quos ab.', '2024-04-07 00:04', NULL,
        NULL, 'PENDING', '5',
        '5', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Necessitatibus deleniti quo possimus reprehenderit eum. Aspernatur aperiam facilis quaerat.', '2024-01-05 22:29', NULL,
        NULL, 'PENDING', '5',
        '1', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas adipisci accusamus mollitia. Iure ipsam tenetur enim consequatur.', '2024-01-04 06:58', NULL,
        NULL, 'PENDING', '5',
        '2', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci nulla nemo eligendi sint consequuntur pariatur.', '2024-01-18 10:01', NULL,
        NULL, 'PENDING', '5',
        '3', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius facere culpa dolorem natus est nostrum sed.', '2024-02-12 09:35', 'Impedit nobis laudantium in provident eveniet. Vero iure molestias eos nisi rem quae incidunt.',
        '2024-02-29 13:50', 'REJECTED', '5',
        '4', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio pariatur animi labore repellendus soluta sunt aliquid. Doloribus vitae officia.', '2024-02-26 18:55', 'Harum tempore labore veniam. Soluta reprehenderit reiciendis nemo nemo sed.',
        '2024-03-03 10:40', 'REJECTED', '5',
        '5', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente totam nulla corporis eveniet error quam. Itaque aut velit dicta ipsam dolor eum eligendi.', '2024-02-28 20:00', NULL,
        NULL, 'PENDING', '5',
        '1', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos error eius nesciunt voluptas. Adipisci nam facilis.
Est repellat voluptatem.', '2024-02-06 05:09', NULL,
        NULL, 'PENDING', '5',
        '2', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At consectetur accusantium blanditiis neque ipsum. Repellat ab voluptate.', '2024-01-05 00:58', NULL,
        NULL, 'PENDING', '5',
        '3', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magni necessitatibus dolores sequi sapiente dolore. Temporibus a non.', '2024-01-19 03:42', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Similique molestias voluptatum labore laboriosam ullam rem.', '2024-04-15 19:53', NULL,
        NULL, 'PENDING', '5',
        '5', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsa quia sapiente incidunt aperiam sunt. Id corporis saepe facere.', '2024-04-08 10:20', NULL,
        NULL, 'PENDING', '5',
        '1', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At ad officiis voluptatum odit ipsam ex. Saepe vitae mollitia dolorum.', '2024-03-03 01:42', 'Unde reprehenderit neque ipsum facere. Eius rem iusto numquam odio quo labore voluptatibus.',
        '2024-05-19 09:26', 'APPROVED', '5',
        '2', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ducimus cum consequuntur fugiat non. Ex molestias saepe molestias quis.', '2024-03-24 03:09', NULL,
        NULL, 'PENDING', '5',
        '3', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Recusandae corrupti facilis neque illum magnam. Vero sint doloribus.', '2024-02-02 00:00', 'Cum recusandae vitae minus magnam corporis maxime. Dolores est quibusdam mollitia.',
        '2024-03-07 18:07', 'APPROVED', '5',
        '4', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam id similique. Fuga nihil ullam dolore iusto optio.', '2024-05-02 18:50', 'Consectetur placeat veniam. Occaecati eum saepe tempore. Id laborum dolorum fugit vel in qui.',
        '2024-05-18 00:38', 'REJECTED', '5',
        '5', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quaerat dolore enim necessitatibus tenetur occaecati. Pariatur vel expedita quas in.', '2024-05-06 08:04', 'Magnam ducimus temporibus et architecto expedita quas. Nemo cupiditate dolores quidem.',
        '2024-05-13 06:28', 'REJECTED', '5',
        '1', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt adipisci eius. Odio nulla minus voluptatem minus dignissimos. Eaque deleniti a iste.', '2024-04-18 03:59', NULL,
        NULL, 'PENDING', '5',
        '2', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repudiandae molestias reiciendis illum neque. Consectetur totam repellendus deserunt.', '2024-02-22 12:52', 'Dolor ipsa eligendi natus. Possimus praesentium modi dolore.',
        '2024-04-14 07:16', 'REJECTED', '5',
        '3', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Numquam vitae eaque itaque officia. Voluptatum adipisci assumenda optio doloribus quod.', '2024-04-17 06:53', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consectetur sequi excepturi delectus fugiat. Quisquam dicta aliquam aut nobis hic.', '2024-03-13 08:44', 'Eius necessitatibus tempora molestias animi consequuntur.',
        '2024-05-20 20:30', 'APPROVED', '5',
        '5', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatibus ea perspiciatis eligendi nulla iste minus.', '2024-02-08 02:50', 'Officiis rerum quod quam. Maxime fuga occaecati cumque quam ab sint.',
        '2024-03-03 18:32', 'APPROVED', '5',
        '1', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere eum repellat iste. Voluptatem culpa vitae. Quia quos delectus iste error.', '2024-03-10 01:37', 'Eos ipsum voluptate. Fugit sit commodi dignissimos corporis nihil praesentium.',
        '2024-03-13 06:13', 'REJECTED', '5',
        '2', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloribus quo dicta molestias voluptas. Quos doloremque saepe neque tenetur eos quis.', '2024-01-09 11:30', NULL,
        NULL, 'PENDING', '5',
        '3', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dicta doloribus atque laboriosam ipsam nobis consequuntur.', '2024-01-04 17:43', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aspernatur dolor voluptates earum temporibus saepe vero. Eos rem consectetur.', '2024-01-07 19:21', 'Laudantium animi illum optio nobis dolorum possimus. Eius impedit reprehenderit.',
        '2024-01-25 18:05', 'REJECTED', '5',
        '5', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem aperiam repellendus enim corrupti veritatis esse. Minima quis nam cumque at.', '2024-02-02 09:39', 'Dignissimos minima et repudiandae maxime error dolore. Amet reprehenderit earum non voluptas.',
        '2024-02-03 12:48', 'REJECTED', '5',
        '1', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio neque similique soluta omnis. Est esse nisi quod.', '2024-05-01 03:02', 'Accusantium placeat voluptatem optio odit. Quia occaecati fugiat nulla quas exercitationem.',
        '2024-05-21 18:55', 'REJECTED', '5',
        '2', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magni perspiciatis nesciunt veritatis veniam. Cumque tenetur labore porro facere dolores.', '2024-05-01 14:59', NULL,
        NULL, 'PENDING', '5',
        '3', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat quis aspernatur placeat. Odio excepturi autem corporis sunt doloribus autem.', '2024-03-06 18:57', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident dolorem dolorem quo deleniti. Adipisci asperiores eaque nulla quisquam a voluptates.', '2024-04-18 12:43', 'Corrupti quidem dolorem magni distinctio odit quod. Similique rerum rerum.',
        '2024-05-22 02:53', 'APPROVED', '5',
        '5', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime ipsam et maxime aut. Veritatis ex odit alias at sequi soluta.', '2024-05-13 12:27', NULL,
        NULL, 'PENDING', '5',
        '1', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam alias eum sed nam possimus. Voluptates facere fugit numquam praesentium.', '2024-03-12 15:18', 'Ipsam delectus ad dicta. Aliquam voluptas consequuntur tenetur. Numquam id doloremque et debitis.',
        '2024-05-27 10:04', 'APPROVED', '5',
        '2', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Unde qui commodi corporis unde explicabo. At laboriosam porro officia eveniet iste ducimus.', '2024-01-29 03:08', 'Voluptatum vel tempora.',
        '2024-05-15 16:44', 'APPROVED', '5',
        '3', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Corrupti hic quam iure voluptates pariatur dolorem.', '2024-03-02 23:15', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellendus ab illum neque assumenda sapiente eius.', '2024-02-07 02:35', 'Error aliquid doloribus nesciunt deserunt. Enim dolorum corporis dolores reiciendis.',
        '2024-05-13 10:14', 'APPROVED', '5',
        '5', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo sed iste deserunt. Vero tempore ex cupiditate impedit tenetur. Labore minima recusandae.', '2024-05-26 03:18', 'Soluta laudantium ipsa doloribus molestiae ut ratione.',
        '2024-05-27 18:34', 'REJECTED', '5',
        '1', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius minus dolore perspiciatis officia velit. Dicta dolores deserunt. Et quae laborum veritatis.', '2024-02-12 14:34', NULL,
        NULL, 'PENDING', '5',
        '2', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ut ad in expedita labore reiciendis iste. Eveniet placeat nihil vero minus earum hic.', '2024-04-11 21:03', 'Pariatur omnis excepturi atque eos fuga.',
        '2024-04-15 11:21', 'REJECTED', '5',
        '3', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga vel laborum voluptates itaque atque nulla.
Consectetur quos ipsa veritatis ipsam dolore vero.', '2024-01-05 18:38', NULL,
        NULL, 'PENDING', '5',
        '4', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod nemo numquam dolores. Eum illo laborum cupiditate sit cum natus.', '2024-05-09 16:17', 'Mollitia consectetur expedita quibusdam harum voluptatibus temporibus. Reiciendis nam molestias.',
        '2024-05-29 20:16', 'APPROVED', '5',
        '5', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga adipisci eveniet inventore.', '2024-04-10 22:10', 'Reiciendis dolor consequuntur fuga. Ea quasi corrupti esse dignissimos.',
        '2024-04-12 15:01', 'APPROVED', '2',
        '1', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure nisi blanditiis. Inventore cum perferendis reprehenderit. Totam enim autem enim dicta magnam.', '2024-01-17 16:55', 'Nobis tenetur deserunt harum. Libero quas quidem necessitatibus amet consequatur.',
        '2024-02-07 10:31', 'REJECTED', '2',
        '2', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum a dolore aut ut officia id. Eius illo odio error aperiam impedit. Voluptatibus iure iure.', '2024-05-23 17:51', 'Libero atque adipisci maxime cum.
Corrupti facere nihil fugit.',
        '2024-05-29 05:35', 'REJECTED', '2',
        '3', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet sint iure accusamus. Id fugit alias ducimus.', '2024-01-11 06:56', 'Maiores veniam aspernatur eum veniam. Repellat accusantium magnam assumenda qui.',
        '2024-05-13 02:33', 'REJECTED', '2',
        '4', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere rerum excepturi dicta corrupti atque quaerat officiis. Nihil commodi minus delectus.', '2024-05-28 00:18', NULL,
        NULL, 'PENDING', '2',
        '5', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus voluptatibus nam minima quaerat. Officiis magni mollitia repudiandae saepe reprehenderit.', '2024-05-28 15:07', 'Vel quam consequatur aperiam. Modi voluptatibus quos non.',
        '2024-05-30 08:07', 'APPROVED', '2',
        '1', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat temporibus soluta non impedit.', '2024-01-06 09:40', NULL,
        NULL, 'PENDING', '2',
        '2', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Blanditiis magnam deserunt minus. Quo veniam perspiciatis atque recusandae doloremque modi.', '2024-04-18 08:21', NULL,
        NULL, 'PENDING', '2',
        '3', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolor nam sequi distinctio veniam tenetur consectetur sed. Odit qui nemo.', '2024-05-04 16:22', NULL,
        NULL, 'PENDING', '2',
        '4', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum occaecati amet architecto provident. A error perferendis eum minus.', '2024-02-09 04:22', NULL,
        NULL, 'PENDING', '2',
        '5', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam veniam possimus animi. Enim adipisci impedit est hic veritatis.', '2024-05-01 17:42', 'Incidunt alias sunt blanditiis facere. Maxime odio eveniet quod sit ut omnis.',
        '2024-05-27 14:15', 'REJECTED', '2',
        '1', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Est odit ut corrupti.', '2024-05-26 00:18', NULL,
        NULL, 'PENDING', '2',
        '2', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Itaque ullam dolor excepturi doloribus porro cumque. Magni assumenda ut dolores rem ullam alias.', '2024-01-24 22:09', 'Recusandae quidem vel eaque accusamus. Suscipit id expedita numquam quaerat accusantium.',
        '2024-05-04 03:39', 'APPROVED', '2',
        '3', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo similique ipsam est maiores dolor. Ipsam deserunt ea facilis commodi nemo consequatur.', '2024-03-26 18:10', NULL,
        NULL, 'PENDING', '2',
        '4', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Numquam iure fugit eaque magnam facilis nemo.', '2024-04-25 03:33', 'Maxime in dolorem eligendi voluptatem temporibus aspernatur. Commodi iste quis repellat.',
        '2024-04-29 10:14', 'REJECTED', '2',
        '5', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos recusandae ipsam dolore minima voluptates velit. Iste quidem omnis.', '2024-05-21 17:20', 'Eius perspiciatis aliquam natus. Quibusdam ratione accusamus.',
        '2024-05-30 00:46', 'REJECTED', '2',
        '1', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam veritatis deleniti cumque perspiciatis eum veniam. Sapiente impedit a dignissimos.', '2024-02-27 12:59', 'Inventore non sit harum fuga. Tempora fuga similique labore quaerat temporibus.',
        '2024-04-22 11:09', 'APPROVED', '2',
        '2', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veritatis ducimus molestias ex assumenda. Quam voluptas provident ipsa suscipit quo vel.', '2024-05-24 20:33', NULL,
        NULL, 'PENDING', '2',
        '3', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Animi impedit excepturi eos. Alias commodi consectetur accusamus culpa. Hic placeat nam minus.', '2024-02-01 09:13', NULL,
        NULL, 'PENDING', '2',
        '4', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit iure atque quia ut rerum. Id voluptate ad sunt. Earum eius dolores ex.', '2024-03-31 15:28', 'Facilis doloremque explicabo fugiat quasi facere molestias alias. Amet at debitis sapiente.',
        '2024-05-22 17:02', 'REJECTED', '2',
        '5', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores optio aut tempora exercitationem enim. Magni ex enim odit illum mollitia reiciendis.', '2024-02-03 04:22', NULL,
        NULL, 'PENDING', '2',
        '1', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Libero unde dolore nulla. Inventore harum nisi fuga fugiat explicabo quidem qui.', '2024-03-06 08:19', 'Minus repellat id labore. Unde omnis aliquid a.',
        '2024-05-24 09:20', 'APPROVED', '2',
        '2', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere veritatis quis voluptas velit. Architecto amet laborum fuga quaerat est.', '2024-02-24 01:21', NULL,
        NULL, 'PENDING', '2',
        '3', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil molestias at. Alias nemo laudantium debitis enim. Eaque unde modi ab.', '2024-04-25 01:59', 'Quas aliquid excepturi earum ipsa. Quas cum magni quisquam quia sunt.',
        '2024-05-16 17:26', 'REJECTED', '2',
        '4', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellendus facilis quos. Provident ipsam ut libero. Eum quos consequuntur repudiandae non.', '2024-05-04 19:08', 'Possimus laudantium porro numquam. Architecto est iure laboriosam.',
        '2024-05-06 14:28', 'APPROVED', '2',
        '5', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi ab necessitatibus modi explicabo in.', '2024-04-13 13:00', 'Possimus soluta eveniet temporibus dolore et eum necessitatibus.',
        '2024-05-29 18:37', 'APPROVED', '2',
        '1', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At beatae adipisci at in porro voluptas. Magnam officiis voluptatem modi vitae.', '2024-04-01 09:18', NULL,
        NULL, 'PENDING', '2',
        '2', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Numquam fugiat modi pariatur a aperiam. Eligendi consectetur aspernatur molestiae ea corrupti.', '2024-01-19 14:55', 'Sit repudiandae quisquam ea provident itaque. Laborum tempora minima similique atque.',
        '2024-05-16 11:16', 'REJECTED', '2',
        '3', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laborum nihil porro qui aperiam laborum. Voluptas mollitia sed accusamus minus amet eaque.', '2024-04-19 13:37', 'Numquam sequi rerum autem at consequuntur praesentium. Perspiciatis ipsam earum.',
        '2024-05-09 23:59', 'APPROVED', '2',
        '4', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet nesciunt quis modi ut. Dolorem minus quis laboriosam. Quisquam quae a.', '2024-02-16 18:07', 'Veritatis ex excepturi quas est qui. Quis mollitia non nisi doloribus neque atque.',
        '2024-03-24 22:41', 'REJECTED', '2',
        '5', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga sint voluptate libero.', '2024-04-01 02:23', NULL,
        NULL, 'PENDING', '2',
        '1', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates voluptatum mollitia ad ratione.', '2024-02-11 21:07', 'Quis porro numquam harum sed repellat. Similique ut qui reiciendis natus.',
        '2024-03-03 03:52', 'APPROVED', '2',
        '2', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore soluta quibusdam incidunt harum ad odit. Veritatis tenetur ipsa voluptas dicta eos.', '2024-04-07 23:51', 'Dolore qui error ipsam. Voluptas distinctio asperiores repudiandae. Modi ea magni.',
        '2024-05-29 07:44', 'APPROVED', '2',
        '3', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ullam dolores possimus quidem repellendus. Soluta aperiam explicabo odit expedita.', '2024-04-21 09:29', 'A exercitationem animi laudantium. Eum soluta cumque corporis atque excepturi nostrum.',
        '2024-05-21 06:35', 'REJECTED', '2',
        '4', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente adipisci id eligendi animi. Sapiente itaque alias nisi esse pariatur.', '2024-03-13 23:44', 'Reprehenderit consequuntur adipisci natus. Doloribus magni cum iusto natus.',
        '2024-05-23 01:27', 'REJECTED', '2',
        '5', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aut at corporis similique soluta assumenda. Esse consequuntur aperiam et voluptas.', '2024-03-11 20:05', 'At in enim illum atque aliquam reiciendis. Eligendi aliquam est repellat quidem provident ex.',
        '2024-03-20 19:02', 'APPROVED', '2',
        '1', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta corrupti corporis quod saepe eius. Velit vitae excepturi consectetur corporis.', '2024-01-09 11:32', 'Blanditiis totam culpa hic quaerat. Aperiam accusantium quas quibusdam debitis eaque at aut.',
        '2024-04-30 15:48', 'REJECTED', '2',
        '2', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quasi quia accusantium architecto vel consectetur fugit. Aliquid natus officiis praesentium quas.', '2024-01-30 11:27', 'Nisi ex minima a atque tempore. Nostrum fugiat ex. Unde officiis delectus repellat porro odio id.',
        '2024-05-14 09:45', 'APPROVED', '2',
        '3', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reiciendis totam tenetur adipisci ex maxime voluptatum deserunt. Ullam quia odio dolore similique.', '2024-01-28 07:11', NULL,
        NULL, 'PENDING', '2',
        '4', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Omnis nostrum itaque repellat. Fugit laborum blanditiis laudantium.', '2024-03-08 01:46', 'Neque at eius laudantium. Vitae error dolores amet nisi error. Hic autem itaque aperiam alias ex.',
        '2024-04-03 03:23', 'APPROVED', '2',
        '5', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Porro fugit expedita natus omnis beatae. Magnam in accusantium tempora ipsum porro praesentium.', '2024-01-19 02:14', 'Occaecati perferendis modi ducimus voluptatibus voluptatum eos. Molestiae ratione ex.',
        '2024-02-17 10:51', 'APPROVED', '2',
        '1', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consectetur reiciendis assumenda architecto non. Nobis aperiam aspernatur odio.', '2024-04-19 03:47', 'Similique aliquid officia quia. Inventore incidunt cupiditate fuga accusamus ratione quod.',
        '2024-05-25 20:48', 'APPROVED', '2',
        '2', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis quos molestiae dolorum. Voluptatum ipsam repellat quam corrupti.', '2024-05-06 17:11', 'Officia dicta magnam harum quas earum alias.',
        '2024-05-16 02:30', 'APPROVED', '2',
        '3', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ullam quo placeat officia odio. Recusandae porro fuga modi reprehenderit.', '2024-03-16 04:29', NULL,
        NULL, 'PENDING', '2',
        '4', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis eaque quo. Odit incidunt ipsa molestiae animi eligendi.', '2024-05-07 01:26', 'Minus consectetur quod et nemo. Excepturi explicabo deleniti doloremque.',
        '2024-05-18 13:04', 'APPROVED', '2',
        '5', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe maiores nostrum.', '2024-02-18 12:14', 'Neque temporibus excepturi rerum rem necessitatibus. Voluptatum eaque omnis libero amet.',
        '2024-04-21 03:37', 'REJECTED', '2',
        '1', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta eaque nemo expedita dicta molestias.', '2024-01-23 05:20', 'Illum excepturi placeat consequuntur aperiam autem.',
        '2024-02-01 06:55', 'REJECTED', '2',
        '2', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cumque culpa ipsam labore quaerat consectetur asperiores. Repudiandae aut iusto minima nemo.', '2024-04-05 07:11', 'Ullam suscipit dolores provident occaecati accusantium cum molestiae.',
        '2024-05-24 00:05', 'REJECTED', '2',
        '3', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum ratione rem rem sunt ab. Repudiandae incidunt laborum ea facere.', '2024-05-15 02:35', 'Consectetur omnis molestiae quae deserunt. Quia dolorum tempore nemo. Magni ex nihil.',
        '2024-05-17 00:56', 'REJECTED', '2',
        '4', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam dolorem rerum eum.
Quo iste quae doloremque illo. Tempora libero excepturi dignissimos.', '2024-01-16 08:01', 'Ab modi totam nulla. Velit ipsum deserunt optio praesentium aperiam.',
        '2024-02-18 17:16', 'REJECTED', '2',
        '5', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem at facere quasi eaque sapiente minus.', '2024-03-08 13:45', 'Facere iure laudantium possimus.',
        '2024-05-14 12:41', 'APPROVED', '5',
        '1', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum quae numquam odio maxime. Laboriosam accusamus minus neque ducimus quae.', '2024-01-27 04:32', NULL,
        NULL, 'PENDING', '5',
        '2', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis corporis cum odit vero. Vero sed eaque repellendus. Aut totam placeat dicta minima totam.', '2024-01-25 13:56', 'Vero corporis quod assumenda sunt. Aspernatur perspiciatis voluptates aspernatur.',
        '2024-05-17 01:34', 'REJECTED', '5',
        '3', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Numquam pariatur aperiam reprehenderit.', '2024-02-14 18:43', 'Enim blanditiis voluptate quidem dolore incidunt minima. Illum deleniti autem distinctio ullam.',
        '2024-05-08 10:03', 'APPROVED', '5',
        '4', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sequi quas suscipit pariatur laborum.
Rem tenetur sed ex nam quaerat aut.', '2024-01-31 18:13', 'Ea deleniti molestiae. Facilis autem labore quos facilis unde.',
        '2024-02-24 20:58', 'APPROVED', '5',
        '5', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae quia tempore. Hic ea odit aspernatur odio impedit fuga.', '2024-03-08 22:40', 'Voluptatibus delectus autem nobis blanditiis odio minima. Quasi nihil nam aliquid vero repellat.',
        '2024-04-27 22:13', 'REJECTED', '5',
        '1', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga ex ad temporibus possimus architecto voluptatum. Placeat numquam quae necessitatibus.', '2024-03-29 16:20', NULL,
        NULL, 'PENDING', '5',
        '2', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Numquam natus facilis animi sequi laboriosam. Eius id nisi officia similique exercitationem.', '2024-02-04 22:29', 'Maiores error incidunt cum voluptatum.',
        '2024-04-16 16:06', 'REJECTED', '5',
        '3', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem earum sequi quod voluptatibus. Culpa quibusdam expedita suscipit.', '2024-04-08 05:32', 'Qui neque rem error quia architecto nemo. Perspiciatis exercitationem doloremque ea.',
        '2024-05-26 06:13', 'APPROVED', '5',
        '4', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio suscipit omnis illo. Voluptatum eum odio eaque quae nulla corrupti.', '2024-05-02 18:29', 'Quo fuga numquam aspernatur a quae perspiciatis. Fugit quaerat beatae sapiente id.',
        '2024-05-02 19:44', 'REJECTED', '5',
        '5', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta eum odio. Atque minima earum impedit dolores aspernatur. Pariatur nisi fugit quae possimus.', '2024-03-21 10:25', NULL,
        NULL, 'PENDING', '5',
        '1', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis iusto in sunt vel unde. Neque deserunt hic numquam modi.', '2024-01-18 12:42', NULL,
        NULL, 'PENDING', '5',
        '2', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse eum molestiae. Magnam laboriosam nemo nisi.', '2024-05-22 05:48', 'Doloremque velit id aliquid aspernatur deserunt. Accusantium hic illo vero voluptas nemo.',
        '2024-05-25 19:21', 'APPROVED', '5',
        '3', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem ex perspiciatis iure temporibus praesentium. Temporibus minus quas atque.', '2024-05-02 07:17', NULL,
        NULL, 'PENDING', '5',
        '4', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat cumque cumque in blanditiis voluptatibus. Cumque aliquid esse quia sunt adipisci.', '2024-03-26 21:57', 'Officiis id distinctio rerum maiores adipisci. Quasi dolorum ea perferendis.',
        '2024-04-10 22:26', 'REJECTED', '5',
        '5', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque dolor omnis eum. Eaque aspernatur explicabo reprehenderit. Quia vitae provident similique ex.', '2024-01-16 12:14', 'Omnis voluptatibus corporis dolorum doloremque.',
        '2024-05-25 23:59', 'REJECTED', '5',
        '1', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet aspernatur quam atque. Aperiam quibusdam qui eum.', '2024-03-18 22:13', 'Repudiandae eum nemo quas iure. Vel facilis praesentium sint eius quidem inventore numquam.',
        '2024-03-20 08:06', 'REJECTED', '5',
        '2', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi libero animi dolorum nemo suscipit cumque. Culpa deleniti sit.', '2024-04-12 22:06', 'Iure porro laboriosam labore non ullam maiores.',
        '2024-05-22 08:01', 'APPROVED', '5',
        '3', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('A sint ut error magni error vero aliquid. Nesciunt quia placeat maxime.', '2024-01-04 08:40', 'Dolor ipsum voluptatem cum dolor fugiat. Voluptatem nihil recusandae amet facilis dolorem.',
        '2024-04-02 20:47', 'APPROVED', '5',
        '4', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit magni rem quibusdam similique iusto. Accusamus nemo amet dicta cupiditate nihil earum.', '2024-01-22 04:47', 'Exercitationem ad quo soluta. Unde porro numquam amet.
Officia ipsam impedit repellendus.',
        '2024-02-01 03:22', 'REJECTED', '5',
        '5', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cumque unde laudantium maxime natus iusto. Repellendus doloremque eum ipsa eligendi.', '2024-02-23 21:17', 'Officia dignissimos sed deleniti inventore ipsum deleniti.',
        '2024-05-16 18:00', 'REJECTED', '5',
        '1', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat enim sequi saepe. Quaerat sapiente omnis excepturi.', '2024-04-23 03:43', 'Fugit vel eveniet in sapiente perferendis iusto. Magnam at aut. Consequuntur facere iusto qui id.',
        '2024-05-28 23:08', 'REJECTED', '5',
        '2', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quasi magnam doloremque harum itaque. Similique alias facere quis. Asperiores nostrum ipsa numquam.', '2024-03-18 05:46', 'Culpa dolorum fugiat quod ducimus. Nulla sint et ea ducimus eum vitae. Odio qui dolorem occaecati.',
        '2024-03-29 03:03', 'APPROVED', '5',
        '3', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At porro laudantium tempora. Vitae numquam dolorum aut.
Modi aliquid rerum porro eligendi.', '2024-04-29 23:28', 'Facilis nostrum temporibus autem. Minima tempore quidem.',
        '2024-05-04 03:15', 'REJECTED', '5',
        '4', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam iste quaerat.', '2024-04-07 23:26', NULL,
        NULL, 'PENDING', '5',
        '5', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Pariatur maxime veritatis. Perspiciatis incidunt facere mollitia delectus.', '2024-01-31 06:30', NULL,
        NULL, 'PENDING', '5',
        '1', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptate veritatis tempora adipisci. Alias quos quod rem at.', '2024-01-02 21:09', 'Provident molestiae in sequi atque iure debitis sit. In eos unde voluptate deleniti hic.',
        '2024-05-14 09:14', 'REJECTED', '5',
        '2', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci voluptate similique architecto ab. Sint ullam consectetur vero ex eius animi odit.', '2024-01-08 21:57', 'Dolorem impedit eveniet ipsum. Ipsam facilis laboriosam ea in iste. Modi nobis tempore.',
        '2024-02-05 08:49', 'APPROVED', '5',
        '3', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores nostrum recusandae totam sed.', '2024-04-01 06:13', 'Facilis provident dolores quod ab nihil. Esse aliquam placeat consectetur.',
        '2024-05-25 06:06', 'APPROVED', '5',
        '4', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure odit inventore deserunt numquam illum.', '2024-02-07 10:24', 'Quos explicabo praesentium exercitationem. Hic quae similique.
Beatae provident dolore aut eveniet.',
        '2024-04-30 11:31', 'REJECTED', '5',
        '5', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolore facilis suscipit. Distinctio illo optio molestias veritatis.', '2024-03-28 21:28', 'Reiciendis assumenda error sapiente. Totam doloribus eius commodi corporis sequi.',
        '2024-05-06 14:58', 'REJECTED', '5',
        '1', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatum omnis harum aspernatur nulla rem. Nostrum occaecati repellat.', '2024-04-15 20:47', NULL,
        NULL, 'PENDING', '5',
        '2', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Unde sed ab rerum illum sed.', '2024-05-17 20:15', 'Nihil impedit consectetur ut aspernatur. Ducimus tempore molestiae corporis autem.',
        '2024-05-21 07:26', 'APPROVED', '5',
        '3', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus sequi reprehenderit.', '2024-04-04 17:15', 'Veritatis ex provident. Culpa molestias iste sequi. Soluta alias ut commodi nisi unde.',
        '2024-04-30 07:17', 'REJECTED', '5',
        '4', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae quasi debitis consequuntur. Sint cupiditate officia unde fugiat sed repellat.', '2024-04-22 04:38', NULL,
        NULL, 'PENDING', '5',
        '5', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Itaque quaerat magnam. Excepturi natus repellendus error.', '2024-03-18 11:53', 'Deleniti id provident inventore. Ullam vel iusto quibusdam voluptas non.',
        '2024-05-16 00:58', 'REJECTED', '5',
        '1', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sint corporis laboriosam quas dicta. Ullam expedita ea.', '2024-02-28 16:54', 'Atque perferendis alias fugit labore voluptatibus. Nemo at nemo.',
        '2024-04-07 17:49', 'REJECTED', '5',
        '2', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maiores eligendi officiis eaque.', '2024-03-28 00:54', 'Ipsa quas alias fuga libero. Itaque sint eos fuga voluptatibus optio maxime.',
        '2024-05-19 12:29', 'APPROVED', '5',
        '3', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolore quo quos quae perferendis amet. Voluptates quaerat iste.', '2024-05-25 14:38', NULL,
        NULL, 'PENDING', '5',
        '4', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem eaque minima tempora id odit. Ducimus nesciunt quis reprehenderit nam voluptate.', '2024-02-06 19:37', 'Praesentium illo distinctio ea impedit deleniti. Impedit illo totam eveniet.',
        '2024-03-07 08:35', 'REJECTED', '5',
        '5', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cumque in nulla suscipit. Est commodi rem. Suscipit impedit tempore.', '2024-05-18 06:49', 'Explicabo aspernatur illo ea totam nesciunt ipsum perferendis. Qui qui impedit sed accusamus.',
        '2024-05-26 03:31', 'APPROVED', '5',
        '1', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere eius odio quod dolorem aliquam ducimus rem.', '2024-02-08 17:17', 'Incidunt tempora soluta debitis quisquam nulla sit. Iure nulla aspernatur quo sit ab.',
        '2024-02-09 22:47', 'APPROVED', '5',
        '2', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates ratione veniam ex suscipit eos ipsa tempora. Ipsa sit eum illum maiores atque quia.', '2024-01-19 00:45', 'Soluta itaque sit.
Sint et voluptas illum sint maiores nam. Fuga numquam at omnis qui eius.',
        '2024-04-27 06:43', 'REJECTED', '5',
        '3', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolor amet dolorem. Corrupti magni asperiores ex praesentium.', '2024-01-01 08:20', 'Id placeat quasi expedita eius optio. Eligendi incidunt repellendus. Eum quia dolorem.',
        '2024-02-02 05:01', 'APPROVED', '5',
        '4', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquid magni deserunt. Ullam quia quae voluptatibus delectus ducimus voluptas.', '2024-03-16 08:18', 'Quibusdam accusamus veniam quas voluptate reiciendis ad ullam. Ad illo aliquam accusantium quo.',
        '2024-04-16 08:48', 'APPROVED', '5',
        '5', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatum occaecati adipisci eius voluptates beatae. Assumenda consequuntur nulla deleniti.', '2024-01-22 12:00', 'Corporis quo dicta tempore consectetur. Id et deleniti repellendus cumque fugiat porro.',
        '2024-02-28 07:29', 'APPROVED', '5',
        '1', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloribus repudiandae eligendi id dolor alias iste. Voluptatem suscipit temporibus dolore maxime.', '2024-01-26 22:57', 'Suscipit culpa dolorem dolor libero. In placeat commodi occaecati. Ex quam error laboriosam.',
        '2024-05-01 05:08', 'REJECTED', '5',
        '2', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem iste aliquid ut sapiente. Possimus suscipit illo adipisci rerum.', '2024-04-08 11:15', 'Nam ducimus debitis ea incidunt. Soluta sed ad.',
        '2024-04-26 10:23', 'REJECTED', '5',
        '3', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit nam libero a dolorum sit. Ad amet esse pariatur temporibus.', '2024-05-01 21:27', 'Dolore quas impedit pariatur cupiditate similique. Ullam distinctio neque voluptatibus.',
        '2024-05-28 09:31', 'APPROVED', '5',
        '4', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam modi deleniti qui. Molestias saepe a amet aliquam quos.', '2024-04-24 18:46', 'Animi praesentium perspiciatis veniam possimus nostrum. Dolor tenetur voluptatibus quis voluptatum.',
        '2024-05-25 18:40', 'APPROVED', '5',
        '5', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nemo reprehenderit saepe esse. Totam quis illo culpa cupiditate.', '2024-01-21 19:43', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In sunt illum in.', '2024-03-20 05:54', 'Tenetur aliquam temporibus eos quos. Necessitatibus nostrum ratione maxime fugit beatae tempore.',
        '2024-04-04 17:11', 'REJECTED', '1',
        '2', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi tempore praesentium. Eveniet voluptatem eaque eaque nihil error occaecati sed.', '2024-04-16 14:38', 'Consequatur est excepturi provident sit. Culpa ex recusandae aliquam accusantium.',
        '2024-05-29 09:01', 'APPROVED', '1',
        '3', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Unde numquam amet. Quis beatae aperiam ullam repellendus.', '2024-02-28 00:39', 'Nobis necessitatibus officia culpa. Occaecati nam ex doloremque.',
        '2024-05-10 08:45', 'REJECTED', '1',
        '4', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit dignissimos beatae voluptates. Optio quis adipisci quisquam vel quibusdam.', '2024-02-29 16:44', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet quidem culpa voluptatibus numquam sunt minima est.', '2024-01-11 20:51', 'Excepturi perferendis minima. Maxime voluptate in. Unde facere doloremque deserunt harum.',
        '2024-04-29 05:52', 'REJECTED', '1',
        '1', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cupiditate iusto consectetur quod vel.', '2024-02-03 10:55', NULL,
        NULL, 'PENDING', '1',
        '2', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Earum voluptas assumenda quisquam error. Excepturi error quo itaque quo qui.', '2024-05-20 04:22', 'Vero doloribus adipisci vel eligendi. Facere mollitia distinctio quos quis quaerat id.',
        '2024-05-23 05:48', 'REJECTED', '1',
        '3', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas aliquam tempore ipsam ipsum optio. Est iste corporis doloribus adipisci nesciunt.', '2024-03-29 02:34', 'Veritatis eos voluptatibus in. Cupiditate dolorum laborum doloribus. Labore dolores quas rerum.',
        '2024-03-30 02:20', 'REJECTED', '1',
        '4', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt officia sapiente recusandae. Sed veniam illum aliquam.', '2024-01-15 07:50', 'Corporis ut aut suscipit. Iure neque voluptatum pariatur eos.',
        '2024-05-14 09:41', 'REJECTED', '1',
        '5', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione cumque ipsa. Excepturi reiciendis itaque aut nulla reiciendis.', '2024-01-25 11:57', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga voluptate nihil perferendis non. A provident expedita id.', '2024-03-27 08:38', 'Voluptas quaerat fugit nulla occaecati. Mollitia nihil incidunt fugiat.',
        '2024-05-02 14:47', 'APPROVED', '1',
        '2', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi provident nemo. Eveniet minus ullam perferendis distinctio cum deserunt eaque.', '2024-04-09 14:55', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat cum tempore repellat.', '2024-01-25 04:33', 'Odit nemo possimus impedit reiciendis. Omnis sed tenetur vero. Sit quam tempore.',
        '2024-04-25 13:40', 'APPROVED', '1',
        '4', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus dignissimos nam similique. Eum at sequi.', '2024-04-28 15:39', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio beatae quas facere magni veniam ipsum.', '2024-05-11 21:59', 'Aliquid repudiandae quia vero. Nihil ea aspernatur dolores et aliquid hic.',
        '2024-05-25 03:36', 'APPROVED', '1',
        '1', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('A maiores error iusto aliquid eius inventore. Illo modi repellendus ea perspiciatis.', '2024-04-08 14:28', 'Eos labore officia ullam dolore quis. Necessitatibus quidem quidem.',
        '2024-05-26 06:12', 'REJECTED', '1',
        '2', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem magnam voluptas officia modi quia facilis eius. Tenetur doloribus numquam sapiente occaecati.', '2024-01-26 02:15', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Error suscipit corporis sapiente. Similique ab repellendus atque vitae illo quis minus.', '2024-02-23 23:41', 'Omnis et earum. Sed fugit soluta deserunt aperiam. Eius debitis vel vero alias ex.',
        '2024-05-28 09:33', 'APPROVED', '1',
        '4', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minus iste animi asperiores.
Voluptas facere voluptates neque ratione dolores et.', '2024-03-21 22:05', 'Saepe asperiores adipisci error velit quis animi. Aut officiis corporis sequi.',
        '2024-05-09 02:17', 'REJECTED', '1',
        '5', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam mollitia itaque temporibus eos.', '2024-04-05 10:30', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos perferendis iusto amet voluptas sint facere. Voluptates incidunt dignissimos quae nostrum.', '2024-03-20 08:53', NULL,
        NULL, 'PENDING', '1',
        '2', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente praesentium nemo. Illum saepe soluta atque occaecati eveniet praesentium.', '2024-02-29 09:33', 'Quisquam dolore deserunt praesentium eaque possimus. Dicta tenetur dignissimos tempora.',
        '2024-05-08 09:00', 'APPROVED', '1',
        '3', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Exercitationem excepturi nisi repellendus maiores. Odio consequuntur natus eligendi iste amet.', '2024-04-09 21:29', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolor nihil quidem officia accusantium nam. Enim laborum neque illo ipsum a.', '2024-01-31 20:31', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat accusamus alias earum magni.', '2024-05-18 00:46', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Et exercitationem quam provident. Vitae quaerat eum voluptatum saepe rem sint.', '2024-02-14 10:00', 'Totam magni deleniti ea adipisci iusto doloribus.',
        '2024-05-25 03:37', 'APPROVED', '1',
        '2', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam debitis molestias aliquid doloribus officiis.', '2024-01-05 10:19', 'Ex quae aliquam quam ducimus.',
        '2024-05-24 23:14', 'APPROVED', '1',
        '3', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius harum eveniet explicabo. Rerum at non illo. Quasi enim cum minima.', '2024-01-08 18:22', 'Corrupti sunt dolore dolore. Reiciendis numquam atque excepturi. Occaecati qui neque impedit.',
        '2024-01-12 16:01', 'APPROVED', '1',
        '4', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('A iure dolorum neque. Temporibus dolores dolores aut.', '2024-04-14 12:58', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae corporis sed rerum magni officia. Quasi cumque dignissimos soluta ratione quam.', '2024-03-22 19:56', 'At placeat pariatur dolores. Magnam molestiae suscipit iste eum impedit quibusdam.',
        '2024-03-24 23:32', 'REJECTED', '1',
        '1', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium nulla voluptas veniam explicabo. Quidem cum assumenda.', '2024-01-24 05:20', 'Vitae molestiae ducimus. Odio inventore optio aliquid.',
        '2024-04-18 03:14', 'APPROVED', '1',
        '2', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Hic totam iure esse. Id consequatur culpa eos magni. Ipsa excepturi occaecati dolorem.', '2024-01-23 03:19', 'Quod ducimus sunt reiciendis magnam illo sint.',
        '2024-02-21 11:57', 'REJECTED', '1',
        '3', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus esse laborum similique ducimus. Facere quas totam suscipit.', '2024-02-17 21:03', 'Reprehenderit quo delectus dolore. Nemo quis enim officiis. Eaque sequi illum possimus maiores.',
        '2024-05-01 19:45', 'APPROVED', '1',
        '4', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt delectus molestiae consequatur totam. Numquam impedit nihil eligendi facere blanditiis.', '2024-04-27 13:51', 'Fugit ducimus voluptatibus.',
        '2024-05-24 07:19', 'REJECTED', '1',
        '5', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta corrupti corporis similique consequuntur ducimus quisquam. Tempore iure numquam reiciendis.', '2024-05-30 05:53', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima possimus id temporibus quo commodi. Temporibus earum eum illo tempore error earum libero.', '2024-03-01 20:37', 'Autem non quia esse. Quia voluptas harum consequatur.',
        '2024-03-03 14:06', 'APPROVED', '1',
        '2', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Error esse non voluptas veritatis tempora possimus. Exercitationem similique sapiente sit ex.', '2024-02-27 18:27', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis autem eos non minima quod voluptas. Veniam assumenda quod incidunt.', '2024-05-28 06:22', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod quas repudiandae provident saepe. Ea animi nostrum aliquid ut et.', '2024-05-06 05:01', 'Eius voluptatibus quod distinctio eligendi ea similique. Perferendis doloremque aspernatur.',
        '2024-05-19 13:32', 'REJECTED', '1',
        '5', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet at neque ratione modi maxime. Labore quo sint qui qui ea dignissimos.', '2024-02-03 04:59', 'Tenetur illum corporis nobis. Soluta consequuntur ab quis.',
        '2024-04-13 00:26', 'REJECTED', '1',
        '1', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Neque ut impedit at iure illo. Minus rem exercitationem quod.', '2024-02-19 04:32', 'Tenetur nam aliquam vitae. Perferendis nemo optio perspiciatis totam consequatur veritatis.',
        '2024-03-08 12:23', 'APPROVED', '1',
        '2', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veniam suscipit libero illum facere. Fugit itaque dolor.', '2024-03-23 07:57', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempore atque sequi eum accusantium quaerat tempore. Corrupti dicta nisi enim velit.', '2024-05-21 04:09', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Non placeat quasi a unde laudantium nesciunt. Vero omnis incidunt iure praesentium.', '2024-01-06 07:07', 'Consectetur unde vel id. Quas illo laudantium labore.',
        '2024-04-15 13:57', 'REJECTED', '1',
        '5', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa velit maiores qui omnis doloribus commodi. Sit veritatis aut rem.', '2024-05-25 05:55', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Qui eos ex consectetur sed quisquam.
Esse eveniet incidunt dolore natus delectus fugiat.', '2024-03-14 03:55', 'Consequatur repudiandae illum iusto soluta. Facere sapiente delectus quia eum aliquam quo.',
        '2024-05-04 11:08', 'REJECTED', '1',
        '2', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo explicabo quam alias veritatis nisi officia.', '2024-03-09 01:59', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sapiente harum quae iusto ab.
Id accusamus blanditiis soluta occaecati praesentium.', '2024-01-28 02:40', 'Labore eveniet ab impedit. Illo ad natus atque.',
        '2024-02-13 13:39', 'REJECTED', '1',
        '4', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos ea occaecati aliquam. Provident ducimus et culpa omnis consectetur veniam.', '2024-04-12 09:08', 'Dolorem ad sunt. Sit impedit culpa quam voluptatem repudiandae ipsam.',
        '2024-05-23 22:50', 'APPROVED', '1',
        '5', 10, 10);
