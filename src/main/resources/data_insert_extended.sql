
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
VALUES ('2002-06-01', 'ainoa45@example.org', 'x*+3)Wh#', '2024-02-19', 'hernando38',
        NULL, True, 'Inventore blanditiis similique pariatur. Temporibus dolorem dolorem facere facilis.',
        10, 'Male', 121.73, 21, 36.778642, -4.038021, 1,
        'Ovidio Calatayud Pina', 35, 139.90, 24, 16, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1979-04-30', 'pastorcarballo@example.org', '#1R7pyNB', '2024-04-19', 'orosales',
        NULL, True, 'Tenetur minima ipsam magni repellat amet laborum labore. Nulla cumque enim eaque.',
        7, 'Male', 178.94, 27, 37.791239, -7.144049, 1,
        'Espiridión Ferrán', 35, 86.31, 27, 8, 4);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1992-06-28', 'teodorarodrigo@example.com', '#%5Csso3', '2024-03-29', 'encarna20',
        NULL, True, 'Quasi non dicta earum. Qui eaque ad incidunt maiores porro. Tempora id enim aliquam labore.',
        6, 'Female', 238.53, 2, 36.642095, -5.010303, 4,
        'Carmina Castrillo', 13, 122.63, 3, 0, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1997-11-20', 'carla69@example.org', '*vt5W!Zu', '2024-03-20', 'delfinaflor',
        NULL, True, 'Nobis quibusdam ducimus est. Quam molestiae laboriosam blanditiis maiores quod cumque cum.',
        8, 'Female', 214.26, 4, 37.160572, -4.561645, 5,
        'Maribel Cabeza Amador', 26, 128.04, 13, 2, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('2002-08-12', 'esther34@example.com', 'X0D)C6Mg', '2024-05-05', 'americafrias',
        NULL, True, 'Reprehenderit nulla facere dolorum pariatur nostrum. Ad itaque dolor unde blanditiis.',
        2, 'Male', 208.16, 12, 37.310782, -2.547959, 4,
        'Néstor Sainz Romero', 26, 136.93, 20, 4, 4);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1999-12-16', 'andres-felipe27@example.org', 'xoN^5Q(b', '2024-02-18', 'rafaelaquiros',
        NULL, True, 'Corporis enim occaecati delectus qui. Facilis aspernatur at maxime voluptates a vero.',
        1, 'Female', 139.21, 26, 37.604507, -5.856960, 8,
        'Ramona Zapata Sarmiento', 37, 30.39, 28, 2, 3);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1974-05-05', 'pinonatividad@example.org', 'C^6YTvX(', '2024-01-31', 'edgarcanales',
        NULL, True, 'Consequatur eum nulla incidunt labore aliquid. Quibusdam error ad similique sapiente odio.',
        5, 'Male', 145.90, 8, 38.166722, -2.631698, 5,
        'Jonatan Morán Barragán', 18, 103.13, 8, 7, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1979-01-23', 'catalina44@example.net', '*90Fc_nK', '2024-03-02', 'telmoiniesta',
        NULL, True, 'Eum ab non in molestias. Expedita ratione porro consequuntur dicta soluta.',
        7, 'Female', 168.56, 3, 36.003685, -6.820542, 5,
        'Valentina Carlos', 24, 93.90, 12, 0, 4);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1992-07-30', 'avilesdalila@example.net', '!ml!8MdV', '2024-01-12', 'cecilia13',
        NULL, True, 'Harum soluta iure eligendi.',
        0, 'Female', 210.55, 3, 36.383010, -4.748286, 0,
        'María Carmen Rojas Cortes', 6, 118.91, 6, 5, 1);

INSERT INTO fighter (   birth_date, email, password, register_date, user_name, profile_photo_id, active, biography,
                        draws, gender, height, kos, latitude, longitude, losses, name, number_of_fights, weight,
                        wins, wins_in_a_row, category_id)
VALUES ('1979-09-26', 'yferran@example.com', 'A&k4uOfz', '2024-04-20', 'pllorens',
        NULL, True, 'Nobis modi et sunt. Mollitia quis natus iusto velit commodi non.',
        6, 'Female', 158.75, 2, 36.882224, -2.531084, 9,
        'Charo Laguna Sastre', 45, 134.71, 30, 9, 3);

-- FIGHTER_ROLE
INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (1, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (2, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (3, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (4, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (5, 3);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (6, 1);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (7, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (8, 2);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (9, 3);

INSERT INTO fighter_role (  fighter_id, role_id)
VALUES (10, 2);

-- FIGHTER_STYLE
INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (1, 6);

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
VALUES (4, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (4, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 1);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (5, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (6, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (7, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (8, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 2);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (9, 6);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 3);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 4);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 5);

INSERT INTO fighter_style ( fighter_id, style_id)
VALUES (10, 6);

-- CLUB
INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Lionheart Gym', 'El Ejido', 'Spain', '47252', 'Almería', 'Alameda Sarita Acosta 9', '+34881 503 035', 'bescolano@example.org',
        '2024-04-28', 'Possimus eum temporibus et autem nemo dolor. Eaque distinctio ea labore placeat inventore assumenda. Officiis assumenda culpa distinctio.', False, 5);

UPDATE fighter SET club_administered_id = 1 WHERE id = 5;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Iron Fist Gym', 'El Ejido', 'Spain', '10954', 'Almería', 'Callejón Martirio Benavent 29', '+34 845283582', 'bienvenida19@example.com',
        '2024-05-11', 'Quas temporibus eius facere adipisci blanditiis. Veniam doloremque cumque accusamus. Temporibus eligendi excepturi similique.', False, 6);

UPDATE fighter SET club_administered_id = 2 WHERE id = 6;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Invictus Gym', 'Málaga', 'Spain', '29670', 'Málaga', 'Glorieta Cipriano Casares 8 Piso 0 ', '+34 948798072', 'cnebot@example.com',
        '2024-01-05', 'Fuga deleniti doloremque. Tenetur fuga a suscipit explicabo quisquam tenetur. Accusantium facere modi.', False, 1);

UPDATE fighter SET club_administered_id = 3 WHERE id = 1;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Warpath Gym', 'Fuengirola', 'Spain', '33565', 'Málaga', 'Avenida de Pepe Ibañez 4', '+34888 57 03 97', 'cerdabernarda@example.com',
        '2024-04-05', 'Nisi nobis atque totam dolorum. Vel voluptatibus doloremque est alias.', False, 4);

UPDATE fighter SET club_administered_id = 4 WHERE id = 4;

INSERT INTO club (  name, city, country, postal_code, state, street, phone, email, register_date, description,
                    deleted, president_id)
VALUES ('Dominion Gym', 'Jerez de la Frontera', 'Spain', '24664', 'Cádiz', 'Camino de Hector Ibáñez 5', '+34 842 75 16 93', 'maricruz31@example.net',
        '2024-02-11', 'Veniam assumenda quo explicabo ad natus dolorum. Impedit assumenda suscipit aliquid.
Eligendi nemo tempore earum possimus.', False, 10);

UPDATE fighter SET club_administered_id = 5 WHERE id = 10;

-- FIGHTER_CLUB
UPDATE fighter SET club_id = 2 WHERE id = 1;

UPDATE fighter SET club_id = 4 WHERE id = 2;

UPDATE fighter SET club_id = 4 WHERE id = 3;

UPDATE fighter SET club_id = 5 WHERE id = 4;

UPDATE fighter SET club_id = 3 WHERE id = 5;

UPDATE fighter SET club_id = 5 WHERE id = 6;

UPDATE fighter SET club_id = 1 WHERE id = 7;

UPDATE fighter SET club_id = 4 WHERE id = 8;

UPDATE fighter SET club_id = 3 WHERE id = 9;

UPDATE fighter SET club_id = 2 WHERE id = 10;

-- FIGHTER PROFILE PHOTO
INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-03 10:23', './assets/img/fighter/fighter2.jpg', 1);

UPDATE fighter SET profile_photo_id = 1 WHERE id = 1;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-05-14 08:14', './assets/img/fighter/fighter17.jpg', 2);

UPDATE fighter SET profile_photo_id = 2 WHERE id = 2;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-01-25 14:44', './assets/img/fighter/fighter22.jpg', 3);

UPDATE fighter SET profile_photo_id = 3 WHERE id = 3;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-05-02 11:02', './assets/img/fighter/fighter22.jpg', 4);

UPDATE fighter SET profile_photo_id = 4 WHERE id = 4;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-05-10 12:05', './assets/img/fighter/fighter2.jpg', 5);

UPDATE fighter SET profile_photo_id = 5 WHERE id = 5;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-03-11 18:55', './assets/img/fighter/fighter26.jpg', 6);

UPDATE fighter SET profile_photo_id = 6 WHERE id = 6;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-05-29 03:51', './assets/img/fighter/fighter25.jpg', 7);

UPDATE fighter SET profile_photo_id = 7 WHERE id = 7;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-02 05:20', './assets/img/fighter/fighter23.jpg', 8);

UPDATE fighter SET profile_photo_id = 8 WHERE id = 8;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-02-22 16:00', './assets/img/fighter/fighter26.jpg', 9);

UPDATE fighter SET profile_photo_id = 9 WHERE id = 9;

INSERT INTO photo ( entity_type, upload_date, url, fighter_id)
VALUES ('FIGHTER', '2024-03-20 04:55', './assets/img/fighter/fighter9.jpg', 10);

UPDATE fighter SET profile_photo_id = 10 WHERE id = 10;

-- CLUB PROFILE PHOTO
INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-02-19 20:20', './assets/img/club/club1.jpg', 1);

UPDATE club SET profile_photo_id = 1 WHERE id = 1;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-05-19 01:34', './assets/img/club/club10.jpg', 2);

UPDATE club SET profile_photo_id = 2 WHERE id = 2;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-05-13 02:23', './assets/img/club/club11.jpg', 3);

UPDATE club SET profile_photo_id = 3 WHERE id = 3;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-04-18 06:10', './assets/img/club/club5.jpg', 4);

UPDATE club SET profile_photo_id = 4 WHERE id = 4;

INSERT INTO photo ( entity_type, upload_date, url, club_id)
VALUES ('CLUB', '2024-05-13 03:16', './assets/img/club/club1.jpg', 5);

UPDATE club SET profile_photo_id = 5 WHERE id = 5;

-- FOLLOW
INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-30 20:12', 1, 5);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-02-13 08:47', 2, 5);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-02-03 23:04', 3, 9);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-01-14 20:12', 4, 3);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-22 18:06', 5, 1);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-16 09:50', 6, 4);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-03-18 14:25', 7, 5);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-29 08:28', 8, 6);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-02-19 01:24', 9, 2);

INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id)
VALUES ('2024-04-29 01:02', 10, 2);

-- FIGHTER_FOLLOW_REQUEST
INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 5, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 6, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 7, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 8, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 9, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-08 21:35', '2024-04-20 07:34', 'REJECTED', 10, 1);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 4, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 5, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 6, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 7, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 8, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 9, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-10 16:54', '2024-05-27 21:28', 'APPROVED', 10, 2);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 2, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 4, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 5, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 6, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 7, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 8, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 9, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-09 05:22', '2024-04-22 09:55', 'REJECTED', 10, 3);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 5, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 6, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 7, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 8, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 9, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-02-20 19:22', '2024-05-07 17:42', 'PENDING', 10, 4);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-05 07:35', '2024-03-19 21:27', 'APPROVED', 6, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-05 07:35', '2024-03-19 21:27', 'APPROVED', 7, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-05 07:35', '2024-03-19 21:27', 'APPROVED', 8, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-05 07:35', '2024-03-19 21:27', 'APPROVED', 9, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-05 07:35', '2024-03-19 21:27', 'APPROVED', 10, 5);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-12 13:39', '2024-04-16 22:33', 'REJECTED', 5, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-12 13:39', '2024-04-16 22:33', 'REJECTED', 7, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-12 13:39', '2024-04-16 22:33', 'REJECTED', 8, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-12 13:39', '2024-04-16 22:33', 'REJECTED', 9, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-03-12 13:39', '2024-04-16 22:33', 'REJECTED', 10, 6);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 1, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 2, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 3, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 4, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 5, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 6, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 8, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 9, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-05-03 05:15', '2024-05-12 21:30', 'REJECTED', 10, 7);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-04-05 12:35', '2024-05-28 18:11', 'PENDING', 10, 8);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 4, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 5, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 6, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 7, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 8, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-25 13:03', '2024-04-15 10:43', 'APPROVED', 10, 9);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 2, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 3, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 4, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 5, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 6, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 7, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 8, 10);

INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES ('2024-01-22 08:08', '2024-04-16 23:23', 'APPROVED', 9, 10);

-- EVENT
INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Huelva', 'Spain', '18580', 'Huelva', 'Vial Renata Rozas 104', 'Numquam necessitatibus veniam est. Aliquid autem fugiat voluptates omnis blanditiis. Deleniti debitis repudiandae. Repellat nostrum ut dicta.', '2025-05-06 23:07:13.521226',
            'Cage Warriors', '2025-05-06 18:07', '2025-05-06 19:07:13.521226', 1);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Granada', 'Spain', '08824', 'Granada', 'C. de Georgina Vara 90 Apt. 56 ', 'Sapiente ut excepturi. Assumenda incidunt voluptate vitae ab. Ipsum impedit nulla expedita quia.', '2024-11-08 19:37:44.511304',
            'Champions Clash', '2024-11-08 14:37', '2024-11-08 15:37:44.511304', 5);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Cádiz', 'Spain', '14543', 'Cádiz', 'Glorieta Octavia Casanovas 627', 'Pariatur error ratione quia mollitia tenetur vero. Corrupti commodi dolor nesciunt veritatis perferendis qui.', '2025-05-08 05:07:13.091839',
            'Combat Kings', '2025-05-08 00:07', '2025-05-08 01:07:13.091839', 5);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Linares', 'Spain', '13601', 'Jaén', 'Cañada Jorge Tamarit 15', 'Cum sint autem architecto corrupti. Eum molestias occaecati tenetur culpa mollitia. Id a modi.', '2025-04-20 06:06:20.329890',
            'Ultimate Showdown', '2025-04-20 01:06', '2025-04-20 02:06:20.329890', 4);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'El Ejido', 'Spain', '33593', 'Almería', 'Alameda de Bruno Noguera 4 Piso 3 ', 'Dolorum architecto itaque rem accusantium. A doloribus ex facilis. Numquam modi esse exercitationem. Quasi consequatur voluptatum dolor.', '2025-04-14 14:05:15.308240',
            'Champions War', '2025-04-14 09:05', '2025-04-14 10:05:15.308240', 4);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Huelva', 'Spain', '01128', 'Huelva', 'Callejón Carlito Oliveras 35 Piso 1 ', 'Incidunt voluptates ab harum unde blanditiis.', '2025-05-22 06:47:36.419638',
            'Fight to the Finish', '2025-05-22 01:47', '2025-05-22 02:47:36.419638', 2);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Montilla', 'Spain', '20083', 'Córdoba', 'Pasaje Amor Carvajal 9 Piso 7 ', 'Repellendus voluptatibus soluta ratione veniam. Laudantium nisi eum quis excepturi asperiores aliquam est. Cumque magnam nisi eius maiores.', '2024-12-08 22:25:22.708893',
            'The Final Round', '2024-12-08 17:25', '2024-12-08 18:25:22.708893', 1);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Linares', 'Spain', '12195', 'Jaén', 'Cuesta de Máxima Sainz 355 Apt. 64 ', 'Nihil a sapiente quas. Laudantium ipsam sed consectetur.', '2024-09-24 17:48:35.923390',
            'Knockout Championship', '2024-09-24 12:48', '2024-09-24 13:48:35.923390', 3);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Lucena', 'Spain', '13139', 'Córdoba', 'Plaza de Catalina Huguet 84', 'Temporibus quasi laboriosam quos. Dignissimos minima corrupti repudiandae blanditiis quas. Dolorem autem eligendi provident.', '2025-05-28 22:24:46.620032',
            'Ultimate Warrior', '2025-05-28 17:24', '2025-05-28 18:24:46.620032', 3);

INSERT INTO event ( city, country, postal_code, state, street, description, end_date, name, open_date,
                    start_date, club_id)
VALUES (    'Granada', 'Spain', '24686', 'Granada', 'Glorieta Tamara Viñas 42 Apt. 16 ', 'Asperiores beatae placeat assumenda doloremque quia nesciunt. Voluptatibus quisquam maiores.', '2025-02-20 23:19:00.606777',
            'Raging Warriors', '2025-02-20 18:19', '2025-02-20 19:19:00.606777', 1);

-- CLUB_MEMBERSHIP_REQUEST
INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-05-27 23:02', '2024-05-28 23:45', 'REJECTED', 1, 1);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-25 00:54', '2024-04-23 01:37', 'PENDING', 2, 2);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-25 16:12', '2024-05-01 23:42', 'PENDING', 5, 3);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-07 21:49', '2024-03-26 19:30', 'APPROVED', 2, 4);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-01-27 10:25', '2024-03-06 22:28', 'REJECTED', 5, 5);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-02-03 01:15', '2024-04-26 19:28', 'REJECTED', 1, 6);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-02 15:16', '2024-03-05 18:01', 'PENDING', 5, 7);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-05-20 15:00', '2024-05-25 22:16', 'PENDING', 3, 8);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-03-20 11:09', '2024-04-03 09:21', 'REJECTED', 2, 9);

INSERT INTO club_membership_request (   request_date, response_date, status, club_id, fighter_id)
VALUES ('2024-04-27 09:13', '2024-05-17 22:09', 'PENDING', 5, 10);

-- CLUB_REVIEW

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Tempora magni unde tempora. Dolores veritatis distinctio porro quidem et. Fugiat a architecto quam sint.', 2, '2024-02-10 15:32', 3, 1);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Ipsum nemo dolore veritatis aperiam iusto. Saepe natus neque nulla pariatur quia odit.', 3, '2024-02-22 21:02', 1, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Consequatur iure porro. Ducimus ipsa pariatur commodi impedit quam in modi. Numquam recusandae rerum dolorum.', 2, '2024-01-10 12:18', 4, 2);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Reiciendis nisi aperiam voluptate consectetur quod sit. Nostrum veniam dolor voluptatum amet est. Quisquam autem occaecati nulla recusandae.', 1, '2024-04-23 03:12', 2, 3);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Laborum in deleniti delectus voluptatibus voluptatibus incidunt explicabo. Consequuntur fugiat aliquam aperiam exercitationem.', 1, '2024-04-21 07:13', 5, 3);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Accusantium odio eos dolorem molestiae placeat cum voluptas.', 4, '2024-04-14 12:06', 1, 4);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Quis voluptatem at magnam.
Illum omnis quam numquam ab. Illum voluptatem tempora ad.
Illum odio non quas. Quibusdam voluptates nisi accusamus.', 4, '2024-05-04 11:58', 3, 4);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Exercitationem alias dicta fugiat. Ex illo facere officia ex. Alias saepe officiis autem.', 4, '2024-01-27 12:48', 2, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Assumenda sunt asperiores nesciunt. Quia ex nobis laudantium quisquam dignissimos.', 3, '2024-01-04 09:33', 3, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Laudantium molestias ipsam numquam facilis. Est sint saepe architecto magnam. Asperiores quam aut porro tempore quisquam.', 2, '2024-05-20 06:55', 4, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Animi ab a repellendus fuga corporis nulla. Perferendis atque nemo voluptates quis impedit.', 5, '2024-03-17 10:37', 5, 6);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Quibusdam doloribus quaerat. Vero a blanditiis sit nam recusandae.', 2, '2024-02-14 16:21', 4, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Minus nesciunt sapiente asperiores saepe. Corrupti eveniet unde. Ducimus reiciendis libero unde in voluptas harum.', 1, '2024-05-22 05:57', 5, 7);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Facilis nihil repellat provident architecto culpa nulla non. Commodi unde expedita.', 5, '2024-04-22 10:11', 1, 8);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Rem voluptates exercitationem repellendus. Ut qui maiores adipisci voluptates et.
Hic natus non ad. Aperiam similique alias amet optio.', 1, '2024-02-04 01:07', 3, 8);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Atque laboriosam impedit quo dolore dicta. Quae vitae minus. Aperiam necessitatibus incidunt ullam dolorum quas nihil.', 1, '2024-05-28 19:13', 4, 8);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Incidunt iste corrupti delectus ratione ipsa at. Deleniti sint dolor quos doloribus omnis corrupti rerum. Deleniti atque dolores suscipit.', 2, '2024-01-22 23:32', 2, 9);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Corporis suscipit nam. Dolorum ut quasi ex in reiciendis enim eos.
A repellendus voluptatem. Iure cumque consequatur.', 2, '2024-04-15 11:43', 3, 9);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Aut eius ab officiis. Molestias odio impedit ipsum deleniti tenetur deserunt.', 1, '2024-03-18 17:07', 2, 10);

INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES ('Placeat maxime necessitatibus ullam accusantium nobis iusto ea. Reprehenderit nulla et dolorem magnam.
Id quidem cupiditate quaerat quidem animi.', 1, '2024-04-13 17:18', 3, 10);

-- EVENT_REVIEW
INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('In aperiam repudiandae provident autem labore. Eveniet optio accusantium ea qui.', 4, '2024-02-14 13:37', 1, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ad doloremque iste quod quasi laboriosam veritatis. Aut voluptatibus nesciunt ut.', 2, '2024-04-26 07:51', 2, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Fugiat vitae dignissimos vero fugiat. Recusandae doloremque eos. Assumenda iusto in doloribus. Facere dolorem laudantium eos porro itaque.', 5, '2024-01-12 15:09', 3, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Odio natus quo atque soluta doloremque neque. Veritatis nam qui culpa.', 4, '2024-02-04 06:32', 5, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Nihil est atque facere animi. Voluptate in laudantium architecto.', 4, '2024-02-26 20:14', 6, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Sunt ex distinctio ad. Culpa quos nemo cumque.', 4, '2024-05-07 04:53', 8, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Asperiores iusto expedita odit. Aut nisi repellat qui delectus.
Laboriosam repudiandae omnis magni. Enim ut fuga nisi vero.', 5, '2024-03-02 07:35', 9, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolore accusantium sit tenetur dolorem porro. Voluptates dignissimos fuga iusto. Expedita cum consequuntur earum nihil.', 1, '2024-03-11 07:38', 10, 1);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Consequuntur eaque expedita. Aut sapiente voluptates. Illum nihil laborum dolore. Autem ab debitis sit minus.', 5, '2024-01-17 04:38', 2, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Placeat at ad sapiente excepturi amet velit quod. Dolorum quae maiores ut debitis repellendus voluptates.', 2, '2024-05-05 08:11', 5, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Esse vitae libero eos. Nam occaecati dicta illum qui.
Autem placeat error eos nemo ex. Illum quis minima quia adipisci officia.', 4, '2024-04-26 20:33', 7, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Exercitationem neque atque facere aperiam accusamus quae quasi.
Autem aspernatur odio maxime nostrum amet. Magnam explicabo nostrum voluptatum sunt.', 3, '2024-05-16 03:17', 8, 2);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quidem error aliquid dolore. Illo praesentium veniam commodi natus numquam. Commodi aliquid voluptate maxime placeat ratione.', 3, '2024-04-05 06:01', 1, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Doloribus harum fugiat iste adipisci eum eveniet. Similique harum optio cumque voluptate distinctio quae ab.', 4, '2024-01-20 20:40', 2, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Nesciunt possimus consectetur deserunt eum enim nulla nobis. Veritatis modi dignissimos qui.', 1, '2024-05-04 18:00', 3, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Odio natus maxime labore sed. Quisquam quos ipsam nihil id totam. Perferendis commodi temporibus ipsam omnis ipsam aliquid.', 2, '2024-02-18 14:19', 4, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Amet nulla veritatis. Natus assumenda deleniti aspernatur possimus asperiores. Doloribus at unde impedit unde dolore iste aliquam.', 4, '2024-03-22 15:54', 5, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Aperiam ratione sapiente nihil rem eaque itaque et. Aspernatur dolorem modi impedit deserunt voluptas voluptatibus.', 4, '2024-01-10 21:47', 6, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Similique eum nulla sunt corporis. Doloribus vero vel alias tempora cum asperiores corrupti.', 4, '2024-05-27 04:38', 8, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Incidunt quo voluptatem reprehenderit. Neque minima ipsa error. Beatae in accusamus.', 4, '2024-04-25 11:54', 9, 3);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Aperiam dolores possimus ipsa corporis quibusdam.
Ex ad illum. Labore possimus incidunt sint. Modi nihil beatae possimus.', 5, '2024-03-19 04:40', 1, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Perferendis dolorem nisi est ratione fuga nam. Voluptatibus iste quisquam unde ad. Exercitationem dolore libero quae dolor eligendi.', 5, '2024-02-28 07:57', 2, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Cumque quas perspiciatis dolorum. Exercitationem aliquid reprehenderit a ab perspiciatis. Cum aliquid molestiae recusandae amet natus.', 4, '2024-02-28 21:28', 3, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Optio beatae itaque quae. Aperiam impedit deserunt.', 3, '2024-02-10 14:09', 4, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Tempora rem eum laboriosam reprehenderit repudiandae. Ea laudantium cum natus quaerat veritatis voluptatum.', 4, '2024-03-16 06:19', 5, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Quo aliquid totam pariatur aperiam dolores velit.
Officiis est vero quas itaque tempore fugit. Tenetur amet perferendis numquam debitis.', 1, '2024-01-18 04:08', 6, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolore ad eum reprehenderit sed. Optio eligendi rem ipsam consequuntur labore.
Esse aliquid officiis. Ducimus veritatis ducimus tempore.', 1, '2024-03-25 16:32', 9, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Unde atque odio.', 3, '2024-04-09 09:03', 10, 4);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Laboriosam nobis consequatur voluptate. Qui ab minus repudiandae laudantium laboriosam.
Suscipit ipsa deserunt fuga nulla.', 1, '2024-01-28 10:26', 2, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Tempore molestiae adipisci. Nostrum provident quos nobis fuga officiis quaerat.', 4, '2024-04-13 03:33', 4, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Sit harum mollitia corrupti. Molestiae occaecati quibusdam velit ratione. Optio iusto molestias voluptate illo eaque.', 5, '2024-02-18 06:41', 5, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Nostrum beatae reprehenderit distinctio hic sit voluptate nostrum. Eaque eligendi odio voluptatem tempore pariatur itaque.', 2, '2024-02-28 05:34', 6, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolores ipsum libero quasi quaerat libero. Possimus accusantium est rem. Error sapiente cumque in at.', 4, '2024-03-12 03:12', 7, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Alias asperiores dolorum non non natus aut. Voluptatem fugit architecto ipsam suscipit.', 3, '2024-02-29 11:39', 9, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Natus commodi sed eaque quaerat. Recusandae repudiandae maxime reprehenderit dolor odit excepturi. Ratione nemo ullam accusamus ad voluptate earum.', 1, '2024-04-22 07:29', 10, 5);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Assumenda eligendi repellendus magnam. Rerum rem iste libero.', 2, '2024-04-05 05:43', 1, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Explicabo iste delectus laudantium aperiam. Officia omnis iste dolore quam repellat. Nobis dolorum asperiores at quas repudiandae molestias.', 5, '2024-05-10 00:59', 2, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Minima doloribus natus veniam eius in iste. Ipsam alias minus sed doloribus. Nam repellendus ad qui neque.', 2, '2024-01-10 09:12', 3, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ad sed iure rerum modi quibusdam. Magni molestias corrupti temporibus sint eligendi.', 1, '2024-01-24 08:20', 4, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Voluptatibus repellendus facere provident et expedita iure dolorem. Nam non sunt ut repudiandae.', 1, '2024-03-21 13:13', 5, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Fuga doloremque beatae totam. Nihil molestias fuga repudiandae soluta exercitationem.', 3, '2024-05-12 11:09', 6, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Itaque veniam deleniti excepturi odio veritatis. Labore cupiditate consequatur. Laborum expedita modi.', 1, '2024-05-17 08:05', 10, 6);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Veniam neque quae voluptas. Nobis atque consectetur sequi corrupti voluptatibus veritatis. Odit tempore nesciunt sit occaecati et voluptate.', 2, '2024-05-23 02:03', 1, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Facilis explicabo molestias aut dolorem.
Velit natus nam a tempora. Recusandae quo eos maiores vitae.', 5, '2024-02-14 13:52', 3, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Consequuntur occaecati voluptate pariatur nostrum. Molestiae quidem fugit culpa dicta velit.', 4, '2024-05-08 12:18', 6, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('A exercitationem cum. Possimus asperiores sit neque. Vel velit doloremque culpa. Aperiam corrupti illo ratione tempore ratione ipsa.', 2, '2024-05-16 13:44', 9, 7);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Aliquam distinctio eveniet iste commodi veritatis. Dolorem aliquid deleniti. Illo vel consectetur magnam quaerat est.', 4, '2024-03-11 07:03', 3, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Asperiores amet sapiente iusto quae voluptatum illo. Similique exercitationem possimus nisi labore nemo sit.', 4, '2024-01-25 22:03', 6, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ratione mollitia magni fugit a tempore magnam delectus. Facere velit temporibus inventore ipsa. Error delectus esse facilis facilis.', 3, '2024-04-23 22:11', 7, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Explicabo vitae illum eum iste. Velit reprehenderit voluptate cupiditate possimus.', 2, '2024-01-04 12:33', 8, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Minima nemo enim alias debitis sint. In eligendi laboriosam nam veniam.', 5, '2024-03-04 05:43', 9, 8);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Expedita eos earum nostrum rem eaque.
Tenetur nam debitis quaerat rerum. Nulla labore adipisci eveniet quos dignissimos iure.', 2, '2024-02-05 11:26', 2, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Dolores temporibus nihil quaerat totam at dolorum. Tenetur molestiae sed architecto.', 4, '2024-01-30 20:56', 3, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Distinctio soluta aperiam magnam praesentium dignissimos deleniti. In error dicta dolorum alias dolores.', 5, '2024-01-02 03:53', 5, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('A doloremque optio laudantium nostrum tenetur nihil. Architecto velit repellat.', 2, '2024-03-07 18:18', 7, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Minus exercitationem nemo animi quae. Ipsam ratione amet illo magni id est nemo. Quia facilis animi aspernatur eum temporibus tempora.', 3, '2024-01-06 03:39', 8, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Ipsam nobis hic. Quas voluptatibus praesentium itaque quisquam mollitia deleniti adipisci.', 3, '2024-02-05 01:01', 9, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Eius unde nulla ipsa modi perspiciatis quas. Mollitia quidem corporis nisi architecto. A tempora esse voluptatem numquam modi nemo.', 4, '2024-03-11 14:24', 10, 9);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Doloremque quaerat ullam laboriosam aut. Libero rerum neque voluptatum veritatis magnam.', 1, '2024-01-27 21:33', 1, 10);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Laudantium doloremque odio pariatur libero. Ea dolorum unde maiores. Qui ea quos odio non quisquam laborum.', 3, '2024-02-17 06:08', 3, 10);

INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES ('Perspiciatis odit soluta possimus molestiae reprehenderit minus.', 5, '2024-05-26 13:11', 8, 10);

-- FIGHT
INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 3, '2024-04-24 12:25', 133.20, False,
        9, 3, 1, 6, 2,
        '6');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 3, 2, '2024-05-14 04:02', 76.89, False,
        4, 2, 7, 4, 5,
        '4');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 2, '2024-02-18 02:36', 31.26, False,
        9, 3, 3, 7, 4,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 3, 2, '2024-05-04 06:40', 124.68, True,
        9, 1, 7, 6, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 3, 2, '2024-02-15 06:25', 138.56, False,
        10, 3, 8, 6, 6,
        '6');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 2, '2024-02-14 11:58', 47.79, False,
        5, 2, 1, 2, 6,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 2, 2, '2024-05-09 21:42', 66.21, True,
        8, 4, 6, 2, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 3, 3, '2024-02-12 05:12', 36.79, True,
        2, 2, 4, 6, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-03-08 03:11', 140.32, False,
        1, 3, 4, 8, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-05-14 18:35', 71.22, True,
        4, 3, 2, 8, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 3, '2024-02-15 10:57', 32.88, False,
        9, 3, 9, 1, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 3, 2, '2024-02-23 19:41', 138.36, False,
        4, 4, 8, 6, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 3, 2, '2024-04-28 06:56', 87.80, True,
        2, 2, 6, 3, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, True, 2, 2, '2024-02-24 02:30', 139.04, True,
        1, 1, 6, 6, 1,
        '6');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 3, 2, '2024-03-30 19:55', 90.46, False,
        4, 1, 10, 9, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 3, 3, '2024-04-26 12:54', 135.92, True,
        4, 3, 8, 5, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 3, '2024-03-28 00:07', 70.52, False,
        4, 3, 8, 8, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 3, 2, '2024-02-29 02:26', 77.26, False,
        10, 1, 7, 8, 1,
        '10');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 2, 3, '2024-05-16 05:53', 90.01, False,
        10, 3, 4, 1, 6,
        '1');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 2, '2024-02-24 02:26', 112.30, False,
        1, 1, 2, 7, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-04-11 01:36', 125.13, False,
        2, 4, 1, 6, 6,
        '6');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 3, 3, '2024-01-27 08:40', 71.08, True,
        7, 3, 1, 8, 5,
        '7');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 2, 3, '2024-03-08 15:26', 142.63, False,
        6, 3, 2, 3, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 3, '2024-05-27 11:54', 55.67, False,
        1, 2, 9, 9, 3,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 2, 2, '2024-04-13 12:11', 77.67, False,
        7, 3, 5, 4, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 3, '2024-02-21 08:00', 128.80, False,
        7, 2, 4, 10, 1,
        '7');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-01-12 16:20', 148.25, True,
        1, 3, 1, 2, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-03-30 22:52', 136.63, True,
        9, 4, 1, 3, 2,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 2, 3, '2024-01-12 14:40', 121.16, True,
        6, 2, 6, 8, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 2, '2024-02-27 00:08', 57.38, False,
        6, 1, 7, 9, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 3, 3, '2024-04-04 06:40', 50.07, False,
        9, 2, 9, 2, 5,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 3, 2, '2024-01-31 12:46', 122.72, False,
        6, 2, 8, 7, 3,
        '7');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 3, 3, '2024-05-27 18:19', 34.40, False,
        6, 3, 5, 8, 4,
        '6');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 2, 2, '2024-02-18 03:21', 129.97, False,
        2, 4, 1, 5, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 3, 2, '2024-02-15 06:21', 34.29, True,
        8, 1, 3, 10, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 2, 3, '2024-02-07 09:37', 141.59, True,
        2, 1, 10, 9, 3,
        '2');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, True, 2, 3, '2024-03-27 18:27', 38.26, False,
        5, 1, 6, 3, 5,
        '3');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 2, 3, '2024-03-02 01:33', 109.40, True,
        1, 3, 4, 2, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 2, 3, '2024-01-12 02:20', 44.96, False,
        10, 4, 2, 9, 4,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, False, 2, 3, '2024-01-14 04:29', 110.36, False,
        4, 1, 6, 9, 4,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 3, 2, '2024-03-24 08:10', 63.97, False,
        9, 2, 3, 3, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 2, 3, '2024-01-07 15:04', 73.29, False,
        1, 2, 2, 8, 4,
        '8');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 2, '2024-01-08 19:43', 119.20, False,
        2, 2, 3, 5, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, False, 2, 2, '2024-02-15 01:10', 106.57, True,
        1, 4, 1, 5, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 2, 3, '2024-05-29 07:24', 131.02, True,
        4, 1, 8, 3, 2,
        '4');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 2, 2, '2024-01-23 13:01', 90.27, True,
        2, 4, 7, 6, 4,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 3, 3, '2024-04-29 04:00', 114.62, True,
        9, 3, 3, 2, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 2, 2, '2024-05-12 13:48', 146.20, True,
        7, 2, 7, 8, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, True, 3, 2, '2024-04-19 14:23', 36.81, True,
        8, 3, 6, 1, 5,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, False, 2, 3, '2024-03-27 00:00', 70.37, False,
        5, 3, 10, 3, 1,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, True, 3, 3, '2024-01-21 21:19', 129.66, True,
        3, 3, 2, 8, 2,
        '8');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 3, '2024-04-11 14:47', 39.78, False,
        7, 3, 5, 8, 5,
        '7');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 2, 3, '2024-05-15 00:04', 85.44, True,
        6, 3, 7, 9, 4,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, True, 2, 3, '2024-04-01 02:54', 123.93, False,
        2, 1, 4, 3, 1,
        '2');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 2, '2024-03-09 10:46', 43.47, True,
        9, 3, 8, 8, 5,
        '8');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 3, 3, '2024-02-21 22:24', 149.34, False,
        8, 2, 4, 5, 6,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, False, 2, 2, '2024-03-28 20:36', 89.53, False,
        5, 2, 1, 4, 2,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, False, 3, 2, '2024-04-21 21:43', 145.02, True,
        5, 4, 10, 6, 2,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (10, True, 2, 3, '2024-04-13 19:58', 33.99, False,
        3, 3, 6, 8, 5,
        '8');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 3, 3, '2024-02-03 02:24', 32.81, False,
        2, 2, 8, 8, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 2, 2, '2024-03-28 10:20', 68.29, True,
        8, 4, 3, 3, 5,
        '8');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, False, 3, 3, '2024-03-23 01:25', 111.78, True,
        8, 3, 2, 5, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 2, 3, '2024-02-23 08:50', 47.63, True,
        9, 1, 6, 7, 2,
        '9');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 2, 2, '2024-04-15 06:23', 71.43, False,
        1, 4, 1, 3, 4,
        '3');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 2, 2, '2024-01-28 16:36', 128.65, False,
        3, 4, 1, 5, 5,
        '5');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (7, False, 2, 2, '2024-02-23 07:14', 144.95, True,
        10, 4, 2, 2, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (8, True, 3, 2, '2024-05-13 16:41', 127.85, True,
        2, 2, 7, 6, 2,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (9, False, 3, 3, '2024-05-28 21:43', 127.34, False,
        2, 1, 1, 5, 4,
        '2');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (10, True, 3, 3, '2024-02-14 07:47', 84.62, False,
        1, 1, 10, 8, 6,
        '1');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (1, True, 2, 3, '2024-02-29 18:42', 117.47, True,
        6, 4, 2, 2, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (2, False, 2, 2, '2024-03-20 13:13', 114.08, True,
        4, 2, 4, 10, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (3, True, 3, 2, '2024-02-23 11:57', 90.83, False,
        9, 1, 9, 4, 5,
        '4');

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (4, True, 3, 2, '2024-02-09 17:45', 97.27, False,
        1, 2, 8, 5, 3,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (5, False, 2, 2, '2024-02-19 01:13', 45.73, False,
        9, 3, 8, 10, 1,
        NULL);

INSERT INTO fight ( fight_order, is_title_fight, minutes, total, start_time, weight, is_ko,
                    blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id,
                    winner_id)
VALUES (6, False, 3, 2, '2024-05-25 07:16', 146.50, False,
        4, 4, 5, 8, 6,
        '8');

-- FIGHT_INSCRIPTION_REQUEST
INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet quod illo ab.
Minus quas voluptas ipsum similique. Sapiente repudiandae architecto.', '2024-05-07 16:03', 'Ullam iure in praesentium. Doloremque quas voluptatum labore sit quam veritatis praesentium.',
        '2024-05-09 02:12', 'REJECTED', '4',
        '1', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe veniam corporis culpa culpa nemo modi assumenda. Eum dolorum itaque sint consequuntur.', '2024-02-21 16:29', 'Ipsa modi natus nihil dolorum eveniet. Quasi voluptas quidem repellendus animi molestias.',
        '2024-05-28 00:36', 'APPROVED', '4',
        '2', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Soluta illo temporibus sunt eaque. In doloribus quaerat hic expedita ipsum voluptas quaerat.', '2024-01-26 14:49', 'Tempora at voluptatum atque dicta facere. Beatae minima impedit deserunt.',
        '2024-02-05 10:01', 'REJECTED', '4',
        '3', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis odio ratione dolore culpa. Quasi consectetur laborum voluptas.', '2024-04-01 12:06', 'Dolorum commodi numquam accusamus repudiandae vel. Dolor animi tenetur voluptatem ratione.',
        '2024-04-08 21:44', 'APPROVED', '4',
        '4', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem quos quis consequatur quasi nihil. Natus corrupti rem in dolores consequuntur eaque.', '2024-04-26 01:17', 'Voluptatibus atque ea asperiores fuga. Consequuntur doloribus quos rem sapiente sunt quidem iste.',
        '2024-05-24 16:24', 'APPROVED', '4',
        '5', 1, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Architecto nam dolorum sapiente ex dicta perferendis. Minima necessitatibus quaerat.', '2024-02-10 12:31', NULL,
        NULL, 'PENDING', '4',
        '1', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur est quasi excepturi sed debitis id. Labore iusto optio delectus.', '2024-01-27 14:25', NULL,
        NULL, 'PENDING', '4',
        '2', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quisquam ducimus quae architecto assumenda commodi sapiente.', '2024-03-31 03:06', NULL,
        NULL, 'PENDING', '4',
        '3', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias dolore tenetur natus omnis quam. Esse nesciunt ea pariatur. Iste consequatur nam adipisci a.', '2024-04-06 19:17', 'Ad expedita sapiente. Quo blanditiis rerum deleniti tempore.',
        '2024-05-29 08:55', 'REJECTED', '4',
        '4', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magni inventore odio. Quod reiciendis fugiat. Illum eos consectetur dolores quae.', '2024-04-27 02:12', NULL,
        NULL, 'PENDING', '4',
        '5', 1, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis praesentium tempore quisquam natus rerum. Sed officia laudantium temporibus neque.', '2024-04-08 08:31', 'Eius libero recusandae omnis nisi sit rem. Blanditiis aspernatur ad ipsam sint.',
        '2024-04-13 14:41', 'REJECTED', '4',
        '1', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Corporis accusamus eum perferendis quos incidunt non.', '2024-02-20 09:37', 'Earum qui dolorum. Sed occaecati quia id.',
        '2024-04-15 21:28', 'APPROVED', '4',
        '2', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates nostrum vitae. Itaque laborum quos nihil vitae.', '2024-03-04 03:36', 'Nam dolorem mollitia eius dolores porro sed minima. Ut adipisci delectus eveniet vitae.',
        '2024-03-22 04:11', 'APPROVED', '4',
        '3', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Asperiores quod porro ab. Quas impedit voluptates est. Ipsa sapiente amet quisquam doloremque quod.', '2024-05-06 03:48', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Temporibus fugiat necessitatibus. Harum eveniet itaque sapiente libero eligendi.', '2024-02-05 21:19', 'Rerum aspernatur incidunt explicabo exercitationem.',
        '2024-04-23 00:52', 'APPROVED', '4',
        '5', 1, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos sapiente exercitationem libero occaecati doloremque.', '2024-03-01 16:36', 'Vitae quaerat magni incidunt. Ducimus alias odio sunt.',
        '2024-03-10 07:56', 'REJECTED', '4',
        '1', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sequi blanditiis consectetur mollitia. Dolorem dolor sint architecto recusandae.', '2024-05-13 16:02', 'Nulla atque voluptatibus similique. Exercitationem ducimus sequi facilis voluptatem incidunt et.',
        '2024-05-28 19:52', 'APPROVED', '4',
        '2', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem quibusdam voluptatem iste culpa eius voluptates. Corporis ipsa vel laboriosam.', '2024-04-05 06:08', 'Non enim pariatur.
Accusantium mollitia doloribus ex libero.',
        '2024-05-02 16:40', 'APPROVED', '4',
        '3', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio quisquam veniam magni dolores.
Vitae voluptatum illo amet. Id saepe voluptatum hic modi.', '2024-01-11 10:18', 'Earum sint maiores optio et. Error aliquid eum. Voluptate aliquam illo vitae consequuntur.',
        '2024-03-05 01:08', 'APPROVED', '4',
        '4', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo suscipit esse ullam consectetur. Repudiandae possimus repudiandae aliquam id.', '2024-03-17 09:38', 'Aut quaerat deserunt. Repudiandae et nemo molestiae dolore. Excepturi eos expedita dicta explicabo.',
        '2024-04-29 07:59', 'REJECTED', '4',
        '5', 1, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae sit aliquam culpa fugit voluptate. Nisi sed dignissimos.', '2024-05-18 13:33', 'Id laborum illo veniam officia atque quibusdam. Sunt expedita quasi quaerat voluptatibus a.',
        '2024-05-21 00:17', 'APPROVED', '4',
        '1', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laborum temporibus impedit doloribus officiis neque labore.', '2024-04-17 11:43', 'Dicta repellat delectus tempore.',
        '2024-05-12 12:23', 'APPROVED', '4',
        '2', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloremque nihil omnis ex. Eligendi perspiciatis dignissimos nesciunt.', '2024-02-04 21:18', 'Facilis ex ipsum minus. Quis aut eum nemo eaque architecto harum.',
        '2024-02-19 06:23', 'REJECTED', '4',
        '3', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates ut sequi non harum.', '2024-03-23 11:03', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Porro quis commodi repudiandae. Expedita impedit iusto. Eum dicta aspernatur.', '2024-04-17 12:07', 'Voluptatem fugiat minus harum inventore molestias repudiandae. Adipisci quas iste.',
        '2024-05-12 19:00', 'REJECTED', '4',
        '5', 1, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quaerat natus veniam ratione sit. Voluptatum vitae quasi provident nisi.', '2024-01-28 06:15', NULL,
        NULL, 'PENDING', '4',
        '1', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ad laboriosam quidem consectetur quia numquam.
Consequatur eos laudantium maiores.', '2024-04-18 09:44', 'Distinctio odio doloremque possimus dolor iure. Porro expedita tenetur quam odit debitis mollitia.',
        '2024-04-30 16:39', 'REJECTED', '4',
        '2', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Animi suscipit ad impedit soluta nulla atque. Illo eos enim.', '2024-01-19 08:20', 'Accusamus blanditiis dolore. Itaque enim quia consectetur sequi molestiae.',
        '2024-02-11 17:39', 'REJECTED', '4',
        '3', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae rem doloribus id adipisci. Consequuntur neque tenetur suscipit.', '2024-04-03 13:38', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Occaecati inventore voluptates culpa deserunt. Voluptate quis quae vitae non magnam quo.', '2024-05-21 01:37', NULL,
        NULL, 'PENDING', '4',
        '5', 1, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloribus corrupti suscipit qui debitis at. Distinctio magni quas maiores.', '2024-03-22 10:53', 'Nemo porro dolor cum repellat. Molestiae aperiam adipisci ut sint.',
        '2024-05-14 18:02', 'REJECTED', '4',
        '1', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facilis earum eius id exercitationem. Quisquam nesciunt dolorem debitis.', '2024-01-08 15:35', 'Occaecati ratione nobis odio temporibus. Impedit voluptas sequi. Consequatur libero facere autem.',
        '2024-02-27 00:05', 'REJECTED', '4',
        '2', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat porro quibusdam. Dignissimos minima nesciunt sint.', '2024-02-07 18:09', 'Facere ipsam suscipit commodi. Odio porro ullam quae officiis praesentium.',
        '2024-03-29 13:39', 'APPROVED', '4',
        '3', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Commodi fugit consectetur animi eum fuga consequuntur. Ullam doloremque qui quos totam.', '2024-02-07 22:50', 'Sint consectetur recusandae doloribus non enim.',
        '2024-02-13 03:31', 'APPROVED', '4',
        '4', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laborum quisquam modi saepe. Perspiciatis laborum id.', '2024-01-09 18:06', 'Perspiciatis ipsa consectetur earum harum quam. Nulla sapiente accusamus quasi ea.',
        '2024-02-05 02:43', 'APPROVED', '4',
        '5', 1, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Necessitatibus perferendis aperiam nisi deleniti. Aut laudantium id architecto quae.', '2024-03-18 07:13', 'Autem delectus molestias culpa earum.',
        '2024-05-21 06:38', 'APPROVED', '4',
        '1', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit deleniti recusandae magnam dolores adipisci culpa. Consequuntur distinctio eius eos.', '2024-02-11 20:56', NULL,
        NULL, 'PENDING', '4',
        '2', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veniam magni quae illum fugit repellendus. Sapiente repellendus quasi nisi esse alias assumenda.', '2024-03-24 15:40', 'Voluptas hic provident earum excepturi ducimus. Maiores voluptatibus illo laborum corporis.',
        '2024-05-24 20:38', 'APPROVED', '4',
        '3', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magni sint libero. Reprehenderit soluta eum alias. Repellendus hic facilis.', '2024-03-20 09:31', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt aliquid corporis asperiores. Deleniti alias quasi neque laboriosam rem iusto.', '2024-01-27 09:11', 'Labore voluptate distinctio rerum quos quo. At numquam laborum debitis.',
        '2024-03-05 11:02', 'REJECTED', '4',
        '5', 1, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam accusantium adipisci unde quo corrupti placeat.', '2024-01-25 16:28', NULL,
        NULL, 'PENDING', '4',
        '1', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nisi aut commodi provident repellendus. Libero expedita cupiditate optio quaerat inventore eaque.', '2024-01-29 08:47', NULL,
        NULL, 'PENDING', '4',
        '2', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima officia perspiciatis. Possimus aspernatur saepe quia eligendi quae.', '2024-03-11 19:15', 'Ratione eligendi consequatur ut voluptate. Animi iusto unde vitae nostrum laudantium.',
        '2024-04-15 04:17', 'REJECTED', '4',
        '3', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sed voluptates voluptatum ea. Ipsum ipsam excepturi consectetur. Aliquam consequatur soluta.', '2024-04-07 05:28', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Exercitationem molestias excepturi illum. Sint quasi blanditiis officia facere.', '2024-04-10 18:38', 'Inventore exercitationem temporibus culpa qui. Nam nam ducimus blanditiis ut dolores neque.',
        '2024-05-27 15:42', 'REJECTED', '4',
        '5', 1, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem rerum consequatur ex. Occaecati autem voluptatibus repellendus nisi nihil.', '2024-05-16 02:44', 'Vel architecto aspernatur atque aut blanditiis. Quidem asperiores deserunt ea.',
        '2024-05-25 08:02', 'APPROVED', '4',
        '1', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam quidem corporis eum quos tenetur. Ex ut ut ipsa. Voluptatibus hic modi sed.', '2024-02-23 02:59', NULL,
        NULL, 'PENDING', '4',
        '2', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quisquam cum enim suscipit magnam corporis. Molestiae sequi vero eum optio.', '2024-02-03 06:46', 'Necessitatibus rerum eum debitis fugit ea minus accusamus. Ullam natus expedita et magnam mollitia.',
        '2024-04-15 17:22', 'APPROVED', '4',
        '3', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure sit repellendus at molestias eum quia. Quidem tenetur unde quas molestiae aspernatur.', '2024-03-16 21:57', NULL,
        NULL, 'PENDING', '4',
        '4', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia laboriosam numquam quis. Quod illo vero ipsa. Praesentium iure eaque.', '2024-02-12 04:53', NULL,
        NULL, 'PENDING', '4',
        '5', 1, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque quos officia corrupti eligendi. Ullam veritatis deserunt optio fugiat.', '2024-02-25 17:57', NULL,
        NULL, 'PENDING', '5',
        '1', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deleniti beatae velit placeat deleniti reprehenderit quidem.', '2024-03-03 11:46', 'Qui vero adipisci delectus. Nobis suscipit nisi omnis nobis.',
        '2024-03-05 02:42', 'REJECTED', '5',
        '2', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestiae magni tenetur tempora. Numquam quod fugiat minus ipsa explicabo.', '2024-03-07 17:17', NULL,
        NULL, 'PENDING', '5',
        '3', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo aut asperiores atque rerum sapiente. Nemo omnis cupiditate harum corrupti.', '2024-04-29 06:45', NULL,
        NULL, 'PENDING', '5',
        '4', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi repudiandae provident consectetur totam. Iure ipsam ea nihil dolor placeat eum harum.', '2024-02-09 11:57', NULL,
        NULL, 'PENDING', '5',
        '5', 2, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore impedit maiores.', '2024-01-11 17:59', 'Architecto commodi quaerat accusamus. Voluptas consequuntur iure commodi.',
        '2024-04-14 14:41', 'REJECTED', '5',
        '1', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat consequuntur asperiores temporibus similique debitis. Ratione nisi vel facere.', '2024-05-14 12:14', 'Consectetur commodi maxime natus autem. Voluptas odit alias.
Laborum rem modi nobis.',
        '2024-05-25 01:07', 'APPROVED', '5',
        '2', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore sequi quia velit. Minima quae blanditiis error molestiae.', '2024-01-18 18:16', NULL,
        NULL, 'PENDING', '5',
        '3', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nam modi optio perferendis. Nam ea facilis fuga. Molestias ea repellat unde saepe.', '2024-03-04 22:47', 'Ipsa molestias dicta voluptate.',
        '2024-04-17 21:56', 'APPROVED', '5',
        '4', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Veniam ipsa nemo et voluptate quisquam temporibus.', '2024-04-02 06:37', 'Mollitia laboriosam maiores. Numquam qui voluptatem odit.',
        '2024-04-17 09:34', 'REJECTED', '5',
        '5', 2, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit voluptatum adipisci eaque quidem nihil.', '2024-04-26 05:52', 'Doloribus quis praesentium sunt saepe. Cum eius inventore. Omnis temporibus laborum perferendis.',
        '2024-05-15 02:05', 'REJECTED', '5',
        '1', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil culpa architecto beatae sit deserunt saepe.', '2024-04-06 22:19', 'Placeat rerum eius aliquam vel odio.',
        '2024-04-25 15:55', 'REJECTED', '5',
        '2', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ex possimus eveniet optio et delectus aliquam.', '2024-04-13 18:52', NULL,
        NULL, 'PENDING', '5',
        '3', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore necessitatibus cum nemo iste.', '2024-01-23 23:32', 'Modi officia cum recusandae. Id vero vel porro. A commodi illo et mollitia non quae consectetur.',
        '2024-03-03 02:50', 'APPROVED', '5',
        '4', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsa accusantium dolore nobis veritatis recusandae dicta optio. Magnam corporis natus occaecati.', '2024-04-12 14:13', 'Reiciendis labore neque mollitia impedit. Quis odio excepturi voluptate.',
        '2024-05-02 20:16', 'APPROVED', '5',
        '5', 2, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur eum inventore dignissimos adipisci. Quisquam fuga neque.', '2024-05-09 08:59', 'Odio quisquam quia illo accusantium dicta accusantium. Nam quidem reiciendis suscipit consequatur.',
        '2024-05-16 23:10', 'REJECTED', '5',
        '1', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum odit dolores amet exercitationem cumque aliquam. Ad deleniti sunt est atque voluptate labore.', '2024-05-01 14:15', 'Nesciunt autem corporis aliquam est expedita dolor placeat. Dolorem aspernatur quo incidunt iste a.',
        '2024-05-08 18:26', 'REJECTED', '5',
        '2', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloremque officiis officia blanditiis. Minima nesciunt minima ut earum repudiandae reiciendis.', '2024-01-05 22:45', 'Ad veniam ducimus rerum quos voluptate magnam. Labore eius atque atque quas.',
        '2024-01-13 15:02', 'APPROVED', '5',
        '3', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Doloribus voluptas distinctio. Dolores eum accusantium laudantium nisi nihil vero.', '2024-03-21 17:26', 'Exercitationem numquam neque minima. Accusamus autem quasi. Occaecati odio magni fugit architecto.',
        '2024-05-22 06:46', 'REJECTED', '5',
        '4', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deleniti maiores recusandae esse enim. Quos maiores voluptatum quas. Animi debitis dicta eius amet.', '2024-01-20 07:51', 'Repellat ut adipisci nesciunt quidem deleniti animi. Reiciendis dolor provident harum quam.',
        '2024-05-29 11:32', 'REJECTED', '5',
        '5', 2, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ad pariatur facere dignissimos maxime voluptatem. Numquam laborum laudantium et ea similique ea.', '2024-04-26 02:27', 'Perspiciatis quos iusto aperiam quos aliquid alias explicabo.',
        '2024-05-03 23:15', 'REJECTED', '5',
        '1', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nisi eaque animi rem eveniet perferendis. Nihil rem nobis doloribus molestiae totam.', '2024-01-29 19:38', 'Tenetur nostrum delectus consequatur corporis enim. Consequuntur est reprehenderit impedit.',
        '2024-05-20 02:53', 'APPROVED', '5',
        '2', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius id iste a tempora. Fugit et suscipit autem placeat quo.', '2024-02-13 05:19', NULL,
        NULL, 'PENDING', '5',
        '3', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea sunt exercitationem modi facere nostrum nobis. Non ullam nostrum dolore quam iste.', '2024-04-11 02:55', 'Veritatis deserunt corrupti repellat. Corporis dignissimos assumenda ex labore facere nostrum.',
        '2024-04-16 21:27', 'REJECTED', '5',
        '4', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Incidunt ea nemo nulla quibusdam. Dolor illum asperiores alias perferendis quod.', '2024-02-20 17:05', 'Aspernatur quisquam distinctio molestias odio quidem eum laboriosam. Qui eveniet modi voluptatibus.',
        '2024-03-05 20:16', 'REJECTED', '5',
        '5', 2, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis aspernatur aperiam.
Alias sint eos omnis repudiandae.', '2024-04-18 23:16', 'Vel iure amet asperiores aperiam odio. Cumque excepturi enim hic perferendis nisi.',
        '2024-04-24 04:34', 'REJECTED', '5',
        '1', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe porro amet magnam. Pariatur aperiam veritatis doloribus reiciendis.', '2024-05-14 11:31', 'Deleniti blanditiis nisi vel ab.',
        '2024-05-23 14:45', 'APPROVED', '5',
        '2', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quis doloribus earum nesciunt magni tenetur. Iure dolor esse.', '2024-04-25 19:43', 'Commodi velit eos atque quae nobis. Odit ipsa quo vero a est harum.',
        '2024-05-27 23:51', 'REJECTED', '5',
        '3', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Asperiores voluptatibus suscipit ab odio. Labore similique omnis consequatur consectetur officia.', '2024-02-14 03:13', NULL,
        NULL, 'PENDING', '5',
        '4', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorem voluptates voluptas minus molestias ab. Rem vero eum rem.', '2024-05-29 01:38', NULL,
        NULL, 'PENDING', '5',
        '5', 2, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Et dolor fugiat soluta perspiciatis fugiat. Commodi ea neque ea.', '2024-02-10 11:13', 'Architecto doloremque neque nihil. Optio enim fugiat ipsam minima.',
        '2024-04-14 11:45', 'REJECTED', '5',
        '1', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eos illum ipsum quod.', '2024-01-16 02:20', 'Dignissimos saepe fugiat impedit. Dolores sit molestiae.',
        '2024-02-18 21:05', 'REJECTED', '5',
        '2', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos cupiditate odit beatae maxime omnis. Dignissimos aut ab similique corporis doloribus.', '2024-02-03 20:45', 'Cumque maiores natus error quis libero.
Expedita debitis maxime quo quasi a quaerat.',
        '2024-02-24 22:08', 'APPROVED', '5',
        '3', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam provident neque eum. Dolorem eius tenetur mollitia facilis. Aut quia iure.', '2024-04-25 08:52', NULL,
        NULL, 'PENDING', '5',
        '4', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus quisquam perspiciatis eligendi. Sit illum incidunt.', '2024-03-30 04:37', 'Harum similique nisi ducimus. Incidunt necessitatibus natus excepturi.',
        '2024-05-05 18:42', 'APPROVED', '5',
        '5', 2, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo quisquam atque nisi. Cum id possimus earum eaque ratione.', '2024-01-10 14:05', 'Sit dolore qui quisquam neque magni.',
        '2024-02-09 09:19', 'APPROVED', '5',
        '1', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sint sed omnis debitis dicta perspiciatis. Nobis dignissimos quibusdam ut nihil quisquam.', '2024-05-07 02:35', NULL,
        NULL, 'PENDING', '5',
        '2', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima similique autem. Illo doloremque possimus. Commodi deleniti id et iusto omnis repellendus.', '2024-03-20 14:43', NULL,
        NULL, 'PENDING', '5',
        '3', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Et et nostrum necessitatibus quisquam sequi. Alias voluptates delectus optio.', '2024-04-12 08:13', 'Cum maxime magnam laboriosam dignissimos. Accusamus quas magnam officia eveniet sit aliquid alias.',
        '2024-04-18 19:19', 'APPROVED', '5',
        '4', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusantium fugiat provident ut autem atque eligendi. Odit iusto voluptas soluta vero nisi iusto.', '2024-04-06 07:24', 'Est labore neque. Asperiores optio in libero atque. Ipsum dolorum magni.
Voluptas autem quibusdam.',
        '2024-04-21 06:30', 'APPROVED', '5',
        '5', 2, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam eveniet dolorum voluptatum eum. Eligendi temporibus facere officia quidem.', '2024-05-26 14:02', 'Nostrum alias aliquam quisquam maiores.',
        '2024-05-26 23:45', 'APPROVED', '5',
        '1', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa odit architecto pariatur. Esse labore rerum ipsum. Earum magnam quas perspiciatis quos.', '2024-04-06 06:53', 'Vero saepe rem.',
        '2024-05-18 13:35', 'REJECTED', '5',
        '2', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ab tempore numquam sapiente. Non et cupiditate error nihil maiores pariatur.', '2024-01-06 04:41', 'Porro similique laborum ratione quam. Porro officia enim ducimus neque iste tenetur.',
        '2024-04-29 19:16', 'REJECTED', '5',
        '3', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam pariatur unde deleniti nesciunt. Dolor dolore ipsam minus alias.', '2024-04-24 16:08', 'Quis at harum adipisci at. Magni eos cumque. Minus nesciunt ullam doloribus.',
        '2024-05-10 08:57', 'REJECTED', '5',
        '4', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur omnis quisquam. Eum in suscipit magnam repellat occaecati laboriosam.', '2024-03-02 07:14', 'Fugit optio excepturi. Praesentium cupiditate magni iusto. Quae sit quis quisquam quas.',
        '2024-03-17 00:32', 'APPROVED', '5',
        '5', 2, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae suscipit error placeat porro veritatis. Nostrum cum odio occaecati cupiditate architecto.', '2024-03-08 08:09', NULL,
        NULL, 'PENDING', '5',
        '1', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum error possimus corrupti. Iusto sapiente quisquam eum earum exercitationem tenetur.', '2024-03-29 01:36', 'Animi ea culpa accusantium amet sed similique. Omnis nemo tenetur sapiente voluptatum.',
        '2024-04-04 16:27', 'APPROVED', '5',
        '2', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat dolorem rerum sint eum consequatur. Similique unde excepturi corrupti ex odio odio.', '2024-01-08 06:07', 'Quae quo labore saepe autem est. Iusto quidem maiores nihil. Esse voluptatum magni vel non quam.',
        '2024-04-24 14:43', 'APPROVED', '5',
        '3', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo nisi voluptatem illo consequatur officiis. Ea ullam sequi reiciendis neque.', '2024-05-04 21:45', 'Nulla fugit cumque eum harum.
Laudantium quas dolores eum. Ipsum libero alias dicta neque.',
        '2024-05-06 04:01', 'REJECTED', '5',
        '4', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem sapiente atque facere. Nulla laudantium veritatis perspiciatis.', '2024-03-11 21:33', 'Magni consectetur ut. Natus rerum soluta.',
        '2024-03-16 22:19', 'APPROVED', '5',
        '5', 2, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptate quas pariatur.', '2024-05-14 18:08', NULL,
        NULL, 'PENDING', '5',
        '1', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt voluptas natus atque. Officia vero ullam possimus cum repudiandae quas.', '2024-01-02 18:22', NULL,
        NULL, 'PENDING', '5',
        '2', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem nisi maxime sunt facilis consectetur. Rerum eos ullam accusamus iste autem tenetur.', '2024-05-12 22:45', NULL,
        NULL, 'PENDING', '5',
        '3', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aut occaecati quibusdam cum deleniti esse. Porro in maxime commodi dignissimos.', '2024-05-07 02:11', 'Ad minima nemo nobis dolorem dolor consectetur. Itaque qui cupiditate dolorem consectetur id sunt.',
        '2024-05-24 01:47', 'REJECTED', '5',
        '4', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque ullam pariatur fugit commodi. Fugit magni distinctio quia unde quae.', '2024-04-11 07:43', 'Similique tenetur magnam error. Voluptatum aliquid fugiat possimus corporis vitae est.',
        '2024-04-13 16:05', 'APPROVED', '5',
        '5', 3, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum dolores labore quas. Nesciunt illo voluptatibus fugiat atque.', '2024-01-04 13:11', 'Perferendis quis quae. Quae odit sunt architecto. Sint in delectus ipsum eligendi.',
        '2024-05-12 17:13', 'APPROVED', '5',
        '1', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia similique alias. Quos atque quae consequuntur officia soluta aperiam.', '2024-04-15 17:06', NULL,
        NULL, 'PENDING', '5',
        '2', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio nesciunt ea expedita. Repudiandae cupiditate itaque deserunt.', '2024-03-04 07:54', NULL,
        NULL, 'PENDING', '5',
        '3', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus quia cum molestias sed reiciendis. Itaque necessitatibus consequuntur maxime pariatur.', '2024-05-05 19:17', 'Animi excepturi ullam.',
        '2024-05-14 10:48', 'APPROVED', '5',
        '4', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem vitae natus a. Enim vero eveniet cum voluptates.', '2024-05-06 03:22', 'Rem quam accusantium. Possimus nemo qui nihil.',
        '2024-05-21 15:53', 'REJECTED', '5',
        '5', 3, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias soluta doloribus aut neque exercitationem animi.', '2024-01-12 16:10', 'Esse hic assumenda officiis. Alias tenetur nesciunt aspernatur ullam autem rerum.',
        '2024-03-09 14:36', 'APPROVED', '5',
        '1', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt voluptatibus consectetur vel recusandae vero. Minus asperiores aspernatur in.', '2024-02-18 06:18', 'Quasi voluptatem sit sapiente. Magni vitae quibusdam.',
        '2024-03-02 12:28', 'REJECTED', '5',
        '2', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perspiciatis dolores sapiente vero cumque quisquam soluta.', '2024-01-01 20:15', 'Doloribus ducimus dolorum. Labore non dolorum. Ullam id rerum illum veniam ipsam laborum.',
        '2024-05-12 23:30', 'REJECTED', '5',
        '3', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam alias odit error. Facere hic cum tempore qui nostrum aperiam culpa.
Ex alias fuga.', '2024-02-22 02:25', 'Eveniet eius architecto commodi ullam sed aut saepe. Nesciunt magnam quae iusto illo.',
        '2024-02-28 02:00', 'APPROVED', '5',
        '4', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi incidunt assumenda corporis officia. Necessitatibus distinctio recusandae dolorum.', '2024-04-25 08:33', 'Vero ratione architecto sint doloremque accusamus.',
        '2024-05-02 23:10', 'REJECTED', '5',
        '5', 3, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea corporis magni asperiores debitis. Error vitae in.', '2024-02-03 06:07', NULL,
        NULL, 'PENDING', '5',
        '1', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facilis vitae similique officiis exercitationem. Quam aut rem necessitatibus ullam.', '2024-02-27 07:19', NULL,
        NULL, 'PENDING', '5',
        '2', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Recusandae assumenda incidunt magnam iste. Quaerat odio eum quod tempore sint.', '2024-01-12 22:11', 'Tenetur nostrum sit quas. Dolore ea dignissimos error quisquam aliquid.',
        '2024-02-27 02:31', 'APPROVED', '5',
        '3', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Corporis repudiandae veritatis ipsum maiores amet. Reprehenderit repellat quidem.', '2024-02-16 08:25', NULL,
        NULL, 'PENDING', '5',
        '4', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illum sed distinctio inventore. Quasi maiores impedit pariatur facere eaque.', '2024-05-13 23:33', 'Reprehenderit ad eligendi ipsa. Ex dolore fugiat vero deserunt.',
        '2024-05-17 16:03', 'APPROVED', '5',
        '5', 3, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorum nostrum quos adipisci eum. Veritatis nobis aut placeat numquam dicta temporibus.', '2024-05-16 04:38', 'Veritatis voluptate in laudantium repudiandae.',
        '2024-05-17 04:47', 'APPROVED', '5',
        '1', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam id porro nemo culpa natus a.', '2024-04-24 06:16', 'Nulla repellat odio quisquam eligendi. Molestias modi sequi suscipit.',
        '2024-05-08 05:07', 'REJECTED', '5',
        '2', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore incidunt odio fugit quasi dolores.', '2024-04-24 01:37', 'Deserunt placeat expedita repellat. Animi exercitationem aperiam placeat.',
        '2024-05-22 05:43', 'REJECTED', '5',
        '3', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatum ab deleniti id cum. Facilis dicta beatae alias accusamus porro voluptate.', '2024-03-21 12:26', 'In enim doloremque quisquam animi in. Explicabo minus rem.',
        '2024-04-08 03:52', 'APPROVED', '5',
        '4', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure officia quod iusto rem dolor. Repudiandae possimus at maxime id dicta.', '2024-03-24 19:36', 'Sunt repudiandae vitae a. Illo quibusdam dicta qui.',
        '2024-05-24 13:33', 'REJECTED', '5',
        '5', 3, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptate aut occaecati.', '2024-05-21 12:23', 'Facere saepe porro. Doloribus est tenetur.',
        '2024-05-22 01:28', 'APPROVED', '5',
        '1', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime facilis unde modi nulla.
Itaque occaecati perspiciatis qui nemo.', '2024-02-18 17:37', 'Aliquam beatae error ullam.',
        '2024-02-27 21:08', 'REJECTED', '5',
        '2', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus deleniti consequatur voluptates fugiat suscipit quod.', '2024-03-10 18:52', 'Nemo occaecati asperiores perspiciatis et. Nostrum eius officiis quod nesciunt fugit quis.',
        '2024-05-28 03:11', 'APPROVED', '5',
        '3', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Non dolorem fugit ipsa.
Voluptas at perferendis.', '2024-01-03 22:12', 'Dicta dignissimos fuga. Nam libero quas eius in quisquam. Sapiente atque in.',
        '2024-03-20 22:33', 'APPROVED', '5',
        '4', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo hic magni ea. Ipsam repellat sapiente non esse minima. At eum natus totam.', '2024-01-17 22:28', 'Eligendi suscipit delectus ad distinctio. Magnam atque earum quo.',
        '2024-04-11 23:51', 'REJECTED', '5',
        '5', 3, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Harum quam corporis dolorem laborum sint. Enim quam eaque assumenda dolorem.', '2024-02-11 08:23', 'Quae quis aperiam placeat. Id dolorum sed aliquam vel excepturi. Repudiandae magnam distinctio.',
        '2024-03-25 09:41', 'APPROVED', '5',
        '1', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos fugit distinctio. Eaque ipsam et recusandae quo eaque ex.', '2024-05-18 03:52', 'Laudantium sit minus sed repellendus. Maxime eaque quidem. Ipsam a necessitatibus a impedit.',
        '2024-05-25 14:35', 'APPROVED', '5',
        '2', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione numquam consequuntur doloremque. Hic soluta minus.', '2024-01-25 01:31', 'Illo a quidem nobis porro quae dolorum. Minima voluptate neque molestias.',
        '2024-04-02 15:59', 'REJECTED', '5',
        '3', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Recusandae tempore alias reiciendis eum iste. Nostrum facilis laboriosam ipsam.', '2024-01-17 00:11', 'Perferendis eveniet corporis tempore. Aut aperiam ipsum ad. Veniam officia sunt praesentium.',
        '2024-05-26 01:23', 'REJECTED', '5',
        '4', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos nisi saepe numquam excepturi tenetur. Maiores quod nesciunt.', '2024-02-06 10:47', NULL,
        NULL, 'PENDING', '5',
        '5', 3, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestias corrupti nam. Adipisci nulla dignissimos esse similique distinctio.', '2024-03-20 09:04', 'Aut et minus praesentium. Dolor quae nemo. Facere totam beatae ut modi accusamus ipsum vel.',
        '2024-05-23 10:47', 'REJECTED', '5',
        '1', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem pariatur ex porro. Sint explicabo odit quia quas. Ipsum maxime iste quaerat voluptate nobis.', '2024-03-09 09:36', NULL,
        NULL, 'PENDING', '5',
        '2', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio quidem ipsum itaque. Voluptate voluptas laboriosam natus ipsum aspernatur.', '2024-01-02 09:12', 'Suscipit distinctio quae excepturi. Nihil molestias numquam officia hic.',
        '2024-04-24 12:30', 'REJECTED', '5',
        '3', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt voluptatibus est nesciunt. Facilis reiciendis dolor eum deserunt.', '2024-02-24 20:53', 'At deleniti soluta nam ab assumenda laudantium. Quidem magni autem quos repellat.',
        '2024-04-23 22:08', 'REJECTED', '5',
        '4', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse rem atque. In ut odit sint illum dolorem error aspernatur.', '2024-02-15 15:27', NULL,
        NULL, 'PENDING', '5',
        '5', 3, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa ducimus quae necessitatibus libero quam.
Et recusandae error est. Ex dolore id.', '2024-04-05 22:26', 'Assumenda reiciendis repellat a cum. Accusamus est voluptate. Animi quis amet nam at.',
        '2024-04-12 22:21', 'APPROVED', '5',
        '1', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis consequuntur veniam hic. Amet asperiores illo quas aut soluta.', '2024-01-14 20:51', 'Tempore nihil veritatis sint. Repellendus quam perspiciatis.',
        '2024-05-05 23:29', 'REJECTED', '5',
        '2', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat tenetur dicta. Quas dolorem ea cupiditate quas alias.', '2024-05-11 00:11', 'In optio nam voluptatibus et. Eveniet inventore itaque sapiente fugiat maiores.',
        '2024-05-14 17:45', 'REJECTED', '5',
        '3', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Qui iure ea perferendis explicabo qui modi culpa. Suscipit ut in repudiandae.', '2024-04-04 06:52', NULL,
        NULL, 'PENDING', '5',
        '4', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illo cum atque eos id. Optio exercitationem distinctio voluptate fugit non.', '2024-02-21 00:53', NULL,
        NULL, 'PENDING', '5',
        '5', 3, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi cupiditate inventore. Voluptate omnis facere animi. Dolor iure ea quas vitae amet.', '2024-01-28 08:35', 'Eveniet ex quas alias eveniet. Sunt eius neque similique corporis error vel.',
        '2024-05-19 06:04', 'APPROVED', '5',
        '1', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Omnis placeat voluptates perferendis voluptas.', '2024-04-02 17:34', 'Quod a quia quidem sunt ad beatae.',
        '2024-05-21 23:37', 'REJECTED', '5',
        '2', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus dignissimos quas nobis tenetur veritatis voluptas. Praesentium ullam blanditiis esse.', '2024-01-17 17:56', 'Commodi culpa recusandae non molestias est qui.',
        '2024-04-04 07:54', 'REJECTED', '5',
        '3', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Occaecati expedita placeat. Corporis quod facere voluptatem ipsam earum dignissimos.', '2024-01-28 05:01', 'Autem incidunt sed facilis. Explicabo doloribus placeat veniam repellat ut.',
        '2024-01-31 16:21', 'REJECTED', '5',
        '4', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis iure autem consequuntur nobis aliquid. Unde libero placeat maxime quod.', '2024-01-05 07:06', 'Ab quibusdam consequuntur accusantium delectus sint. Odio vel aspernatur.',
        '2024-03-31 18:50', 'REJECTED', '5',
        '5', 3, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit debitis assumenda accusantium.', '2024-01-18 21:44', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio quidem dignissimos consectetur velit commodi.', '2024-05-18 14:06', NULL,
        NULL, 'PENDING', '3',
        '2', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nulla exercitationem aspernatur earum dolor earum.
Quia quo libero laboriosam. Ab sit consectetur.', '2024-05-02 08:32', NULL,
        NULL, 'PENDING', '3',
        '3', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officia in harum nesciunt non nesciunt libero. Officia fuga reiciendis architecto.', '2024-01-03 08:48', 'Maxime optio omnis nam quidem excepturi illum. Temporibus laboriosam temporibus earum.',
        '2024-04-08 02:45', 'APPROVED', '3',
        '4', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure dicta veritatis sed nobis ad ratione. Atque a harum vero aliquid.', '2024-03-31 01:23', NULL,
        NULL, 'PENDING', '3',
        '5', 4, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id voluptatum accusantium quo. Vel minus vero perspiciatis.', '2024-01-01 20:22', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Corrupti totam quasi pariatur quis delectus. Deleniti dolor alias non.', '2024-05-08 03:57', 'Iure debitis inventore vero. Incidunt unde temporibus assumenda repellendus itaque facilis.',
        '2024-05-09 11:59', 'REJECTED', '3',
        '2', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo accusamus porro nisi voluptatibus totam. Aliquam mollitia excepturi cum commodi.', '2024-01-04 08:47', NULL,
        NULL, 'PENDING', '3',
        '3', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere corporis numquam minima vitae. Cum explicabo molestiae.', '2024-01-20 05:30', NULL,
        NULL, 'PENDING', '3',
        '4', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo suscipit ullam facilis molestias. Tempore magni placeat nisi.', '2024-02-08 00:27', 'Facere cupiditate repellat quasi tenetur ut error. Officia ex non occaecati amet fugiat explicabo.',
        '2024-04-18 23:51', 'REJECTED', '3',
        '5', 4, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maiores ea sed voluptatum delectus necessitatibus molestiae.', '2024-01-09 23:41', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi distinctio nobis occaecati. Ullam tenetur impedit.', '2024-03-12 18:28', NULL,
        NULL, 'PENDING', '3',
        '2', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quasi voluptates animi.', '2024-05-24 02:17', 'Similique modi quia sit libero fugiat dignissimos.',
        '2024-05-25 07:05', 'REJECTED', '3',
        '3', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Similique sed earum odit nihil dicta magnam velit. Itaque ipsum similique eaque nisi.', '2024-01-29 02:59', 'Saepe molestias eligendi quae quae dolores nobis.',
        '2024-02-09 15:59', 'APPROVED', '3',
        '4', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sequi cupiditate repudiandae dignissimos. Rem cupiditate labore eos deleniti dolor quaerat magnam.', '2024-03-09 13:28', 'Tempora nisi nisi veritatis iste. Vel sit pariatur. Ad numquam aut animi.',
        '2024-03-15 23:18', 'REJECTED', '3',
        '5', 4, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestiae fugit sequi nihil ipsa facere labore. Ea velit at corporis.', '2024-05-28 16:04', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident nisi itaque expedita cupiditate maxime voluptatem.', '2024-03-05 19:57', 'Quos assumenda qui ex quam error ut. Cupiditate eos ipsam deleniti.',
        '2024-05-09 03:41', 'APPROVED', '3',
        '2', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi temporibus veniam laudantium molestias culpa nemo illo. Ex magni suscipit nihil.', '2024-02-14 23:49', 'At eveniet tempore asperiores numquam aut vero mollitia. Rerum alias dignissimos ex unde facere.',
        '2024-03-20 00:11', 'REJECTED', '3',
        '3', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aspernatur ad officiis suscipit suscipit amet. Perspiciatis voluptate nobis voluptatibus.', '2024-03-27 17:33', 'Quo harum quibusdam veniam. Autem quas aliquam ex vitae. Vitae consectetur officiis explicabo.',
        '2024-05-26 16:23', 'REJECTED', '3',
        '4', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo dolorum veritatis aspernatur cum impedit magnam accusantium.', '2024-04-05 02:28', 'Beatae dolores ex reprehenderit recusandae asperiores. Tempora repudiandae atque a.',
        '2024-05-02 19:27', 'APPROVED', '3',
        '5', 4, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem corporis modi voluptas dolores. Voluptate nihil ipsa veniam odit non.', '2024-04-06 21:11', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis maiores minima maiores. Necessitatibus similique suscipit placeat perspiciatis facilis.', '2024-04-02 17:42', 'Laborum deleniti consequuntur praesentium aliquid rem fugiat. Suscipit asperiores dolor quia earum.',
        '2024-05-28 05:13', 'REJECTED', '3',
        '2', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Commodi est facilis quis dolor nemo alias. Doloremque reprehenderit omnis ducimus doloremque.', '2024-02-03 16:43', 'Fugit earum doloribus tempora dolor nobis. Laudantium esse cum excepturi at eum perspiciatis earum.',
        '2024-02-04 18:33', 'REJECTED', '3',
        '3', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quia eius culpa. Tenetur dignissimos a deserunt.', '2024-04-14 17:18', 'Qui ab impedit nobis.',
        '2024-05-03 05:46', 'REJECTED', '3',
        '4', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore occaecati natus voluptatem deleniti. Mollitia nihil laudantium iusto porro inventore.', '2024-05-08 20:44', 'Maxime eius similique. Quo veniam fugit expedita.',
        '2024-05-16 14:16', 'APPROVED', '3',
        '5', 4, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores quaerat esse consequuntur. Esse numquam incidunt similique aperiam ratione ab.', '2024-01-17 21:32', 'Pariatur nisi ipsa consectetur. Iure sapiente eum voluptates voluptatem.',
        '2024-05-08 09:58', 'APPROVED', '3',
        '1', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Exercitationem quasi eos deleniti. Quo non est voluptas.', '2024-05-25 10:45', 'Sed error voluptatum possimus optio. Enim quod aut repellendus aspernatur minus.',
        '2024-05-29 10:55', 'APPROVED', '3',
        '2', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Delectus labore recusandae quae eos. Impedit voluptates totam voluptatibus.', '2024-04-25 22:52', NULL,
        NULL, 'PENDING', '3',
        '3', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae quos ducimus nesciunt eum unde iusto iste. Recusandae ullam esse quos pariatur.', '2024-01-10 09:57', 'Consectetur quasi culpa quasi possimus neque. In magni eligendi eum nemo perspiciatis ipsum.',
        '2024-05-23 15:44', 'REJECTED', '3',
        '4', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorem vitae consectetur recusandae odit. Amet quia culpa eveniet eligendi nobis fugiat deserunt.', '2024-05-29 16:45', 'Dolorum eius culpa suscipit labore repudiandae mollitia. Autem animi laborum dolores in.',
        '2024-05-29 16:59', 'APPROVED', '3',
        '5', 4, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio cumque sed eius minus. Cum architecto enim non.', '2024-04-28 12:34', 'Hic voluptas accusamus blanditiis fugit ad. Harum quae hic esse.',
        '2024-05-14 09:13', 'REJECTED', '3',
        '1', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat impedit deserunt. Provident commodi sint ratione sit impedit.', '2024-02-26 09:34', 'Exercitationem numquam ducimus sit. Soluta quia ullam. Alias deserunt est illum vitae minus.',
        '2024-03-07 11:19', 'APPROVED', '3',
        '2', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas reiciendis numquam dolorem. Quam unde architecto ipsam excepturi atque temporibus.', '2024-05-15 16:29', 'Vero minus aliquid ab non soluta sit.',
        '2024-05-27 04:47', 'REJECTED', '3',
        '3', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore quos consectetur in.', '2024-05-05 06:13', NULL,
        NULL, 'PENDING', '3',
        '4', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illum sint ut nihil minima aperiam. Sunt harum ad amet fugiat molestias necessitatibus.', '2024-05-16 21:46', 'Natus quaerat optio voluptate suscipit natus blanditiis.',
        '2024-05-17 13:05', 'REJECTED', '3',
        '5', 4, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quia ratione nobis officia id atque omnis. Provident consequuntur fuga consequuntur.', '2024-05-20 03:34', NULL,
        NULL, 'PENDING', '3',
        '1', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque aperiam voluptatibus totam quos aperiam. Nisi fugiat voluptatum assumenda soluta.', '2024-03-02 22:49', NULL,
        NULL, 'PENDING', '3',
        '2', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium cupiditate molestias minus cum ea. Eius quaerat eveniet ducimus.', '2024-05-24 05:42', NULL,
        NULL, 'PENDING', '3',
        '3', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam enim esse laborum quia quasi quis. Doloremque molestiae quae laboriosam ab.', '2024-01-22 10:05', 'Eveniet sed doloremque natus eaque occaecati. Eum odio quasi. Corrupti veritatis explicabo facilis.',
        '2024-02-13 12:12', 'APPROVED', '3',
        '4', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laboriosam dolorum harum est saepe incidunt inventore. Rerum tenetur et tempora voluptatem fugit.', '2024-05-02 07:45', 'Explicabo voluptatem ipsa. Quam molestiae numquam nisi.',
        '2024-05-11 03:10', 'REJECTED', '3',
        '5', 4, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laudantium aliquam eius accusantium.', '2024-03-10 04:31', 'Nam architecto assumenda corrupti. Quod dolore facere neque.',
        '2024-04-21 12:55', 'REJECTED', '3',
        '1', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestiae quo distinctio perferendis provident corrupti placeat. Recusandae assumenda ad incidunt.', '2024-01-19 01:35', 'Delectus nobis possimus labore rerum optio. Eos reiciendis totam magnam.',
        '2024-04-13 06:20', 'REJECTED', '3',
        '2', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos illum nulla voluptatibus voluptatibus commodi. Dolorum ducimus possimus eum provident.', '2024-03-18 17:50', NULL,
        NULL, 'PENDING', '3',
        '3', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt in odio. Officia blanditiis cum. Quisquam vero officiis alias delectus.', '2024-01-19 10:29', 'Temporibus quia dolorum neque eius dolorum. Molestiae pariatur illo magni.',
        '2024-03-28 19:32', 'APPROVED', '3',
        '4', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt nihil quibusdam ratione tenetur. Nisi harum molestias veniam.', '2024-05-14 19:33', 'Praesentium placeat voluptas. Eos suscipit ea.',
        '2024-05-22 02:53', 'REJECTED', '3',
        '5', 4, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo soluta magni. Incidunt eius mollitia sit aperiam nulla. A magnam sequi odio.', '2024-02-02 01:26', 'Distinctio repellendus sed neque eum.',
        '2024-03-03 00:55', 'APPROVED', '3',
        '1', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit iure amet facere. Suscipit ea dolorum. Suscipit quidem eum.', '2024-04-12 08:05', NULL,
        NULL, 'PENDING', '3',
        '2', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio cum sapiente vero id similique perspiciatis voluptas. Aliquam doloremque dolore excepturi.', '2024-03-26 05:00', 'Tempore sint accusamus dolore corporis. Sint aliquam totam dolore modi explicabo.',
        '2024-05-22 05:21', 'REJECTED', '3',
        '3', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam nobis quam quam recusandae consectetur nulla nobis. Velit doloribus vero laboriosam.', '2024-03-29 20:09', NULL,
        NULL, 'PENDING', '3',
        '4', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas non tempora libero ipsam ab repellat. Repellendus repellat cupiditate enim.', '2024-01-14 15:27', NULL,
        NULL, 'PENDING', '3',
        '5', 4, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vel eaque optio maiores velit amet. Eaque atque ipsam.', '2024-04-07 08:44', 'Deleniti at unde tempora. Cum sit in molestias. Quia amet iusto tempore.',
        '2024-05-18 02:34', 'REJECTED', '2',
        '1', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit iusto ea molestias exercitationem iste. Ab et maxime eum provident.', '2024-02-14 12:59', NULL,
        NULL, 'PENDING', '2',
        '2', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos nam maiores. Repudiandae voluptatum eveniet mollitia quidem optio.', '2024-01-25 12:21', 'Totam vel dolore enim atque. Dicta minima eos saepe quia. Nobis nobis praesentium.',
        '2024-02-26 03:31', 'APPROVED', '2',
        '3', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam voluptas rerum. Accusamus incidunt aperiam facilis blanditiis.', '2024-01-23 15:40', NULL,
        NULL, 'PENDING', '2',
        '4', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores doloribus dolorem ad alias. Enim accusamus aliquam quisquam iusto soluta saepe.', '2024-03-03 10:41', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore architecto aut corrupti. Architecto incidunt deserunt.', '2024-02-24 06:34', NULL,
        NULL, 'PENDING', '2',
        '1', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum quia aut libero minima ipsum incidunt. Cupiditate enim ab ducimus qui tenetur.', '2024-05-23 12:23', 'Sit dolores incidunt odio est. Odit esse iusto voluptatem dolores vitae. Optio iure blanditiis.',
        '2024-05-24 16:41', 'APPROVED', '2',
        '2', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nulla quasi aliquam tempore. Mollitia nihil sapiente error impedit. Fuga numquam delectus.', '2024-01-22 07:05', NULL,
        NULL, 'PENDING', '2',
        '3', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Asperiores dolor omnis deleniti officiis illo. Praesentium expedita numquam amet asperiores unde.', '2024-05-19 17:09', 'Illo eaque saepe facilis laboriosam. Odit inventore quis minus quasi.',
        '2024-05-21 00:22', 'APPROVED', '2',
        '4', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ad non molestiae.
Necessitatibus repellat ullam. Unde est totam tenetur.', '2024-01-08 07:06', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Est ducimus dolorum delectus rem numquam. Illum asperiores iusto excepturi iste sed.', '2024-03-27 04:16', 'Omnis pariatur ipsa error. Adipisci odio aliquam vero fuga odit.',
        '2024-05-09 03:34', 'APPROVED', '2',
        '1', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus id non ut fugiat. Molestias libero eaque illum occaecati tempora ipsam dolore.', '2024-02-02 19:56', NULL,
        NULL, 'PENDING', '2',
        '2', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Recusandae distinctio porro. Suscipit illo ipsam excepturi dolores voluptate.', '2024-04-28 06:46', 'Quam illum deleniti nemo. Praesentium mollitia architecto reprehenderit quia ipsam.',
        '2024-05-26 19:16', 'REJECTED', '2',
        '3', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum ducimus nisi accusamus recusandae veniam. Excepturi impedit iure vero amet dolor.', '2024-02-11 02:38', NULL,
        NULL, 'PENDING', '2',
        '4', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil soluta voluptas. Natus perferendis excepturi. Hic incidunt libero nisi reiciendis.', '2024-01-06 06:52', 'Soluta voluptatibus fuga molestiae aut architecto iste eos.',
        '2024-03-07 08:32', 'REJECTED', '2',
        '5', 5, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam totam incidunt optio.', '2024-05-06 06:48', NULL,
        NULL, 'PENDING', '2',
        '1', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore iste ex possimus sunt.', '2024-01-31 19:23', 'Quidem molestiae atque tempora sapiente ea. Ipsa totam sed.',
        '2024-03-14 09:32', 'APPROVED', '2',
        '2', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod sunt ducimus minus a illo architecto. Cumque ipsa ipsam non cumque sunt.', '2024-01-17 10:31', 'Nulla ipsam ducimus totam.
Commodi quaerat nobis tenetur expedita laboriosam.',
        '2024-05-22 06:43', 'REJECTED', '2',
        '3', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolores odit nisi. Nesciunt sed alias nobis iusto aut.', '2024-02-25 18:41', 'Molestias occaecati cumque odio odit accusamus molestias. Aut voluptatem earum dolore adipisci.',
        '2024-05-19 11:18', 'REJECTED', '2',
        '4', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet nulla facere eligendi. Temporibus labore quod. Ducimus fugit possimus ipsa eaque.', '2024-03-26 06:29', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse blanditiis eum. Quia mollitia delectus. Quam ad eaque alias.', '2024-03-08 13:33', NULL,
        NULL, 'PENDING', '2',
        '1', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam vitae fugit numquam culpa voluptatem neque quasi. Repellendus modi laboriosam.', '2024-01-19 10:43', 'Quaerat aspernatur blanditiis distinctio. Laborum a iusto ipsum reiciendis animi perferendis.',
        '2024-03-02 08:38', 'REJECTED', '2',
        '2', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptate dolorem iste ratione quo laudantium eaque. Dicta laboriosam modi cumque.', '2024-01-30 16:29', 'Illo aperiam aliquam quae quaerat. Repellendus vitae numquam dicta.',
        '2024-05-07 01:54', 'REJECTED', '2',
        '3', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nesciunt eum ea quod at impedit nam. Quasi exercitationem aspernatur amet.', '2024-01-27 05:16', 'Temporibus incidunt nostrum laboriosam consectetur.',
        '2024-05-18 16:23', 'APPROVED', '2',
        '4', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa dolorum unde voluptatibus corporis.', '2024-01-10 13:13', 'Atque nam et non. Nihil officiis accusamus ducimus voluptates. Odio quae corporis dolore facilis.',
        '2024-01-31 23:05', 'APPROVED', '2',
        '5', 5, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eos suscipit temporibus explicabo. Facere repudiandae culpa a.', '2024-01-21 09:39', NULL,
        NULL, 'PENDING', '2',
        '1', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sit odio eum atque. Illo doloremque eius. Expedita sint assumenda vel ex.', '2024-04-06 01:21', 'Voluptatibus rem enim explicabo. Possimus iure necessitatibus consequatur quia.',
        '2024-05-03 13:14', 'REJECTED', '2',
        '2', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci aliquam quia error consectetur. Ad rem provident. Error aut illo delectus.', '2024-02-05 18:32', 'Aspernatur dolorem harum dignissimos pariatur architecto. Illo delectus magnam mollitia doloribus.',
        '2024-02-18 22:59', 'REJECTED', '2',
        '3', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laborum assumenda doloremque in impedit quaerat. Aspernatur consequatur deserunt eligendi.', '2024-02-23 12:10', 'Commodi asperiores eos voluptate corrupti qui deleniti.',
        '2024-04-02 21:12', 'APPROVED', '2',
        '4', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum voluptatem mollitia qui. Rem iusto voluptate commodi suscipit deleniti. Fugit vel nulla modi.', '2024-02-24 23:47', 'Dolorem quis neque quo eum. Officia pariatur totam ad necessitatibus voluptatibus reiciendis.',
        '2024-05-03 20:17', 'REJECTED', '2',
        '5', 5, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo ea laboriosam illo accusantium. Provident et eaque.', '2024-03-15 03:26', 'Odio nam a excepturi nam ut vero. Aliquam temporibus id aperiam quasi ad.',
        '2024-05-07 05:09', 'REJECTED', '2',
        '1', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laudantium mollitia distinctio laboriosam repellendus.', '2024-02-28 11:11', NULL,
        NULL, 'PENDING', '2',
        '2', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officiis porro qui incidunt facere veritatis laudantium.', '2024-02-01 09:20', 'Odio natus reiciendis occaecati vel. Reprehenderit blanditiis ea minus nemo error mollitia.',
        '2024-04-23 08:12', 'REJECTED', '2',
        '3', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsa distinctio quos nisi officiis fuga. Veritatis dolorum numquam fuga pariatur odio nam corporis.', '2024-01-13 21:01', 'Inventore nulla quasi quo natus.',
        '2024-03-29 16:26', 'APPROVED', '2',
        '4', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque cumque ad eaque quisquam fuga.', '2024-01-20 18:36', 'Praesentium a quo totam culpa.',
        '2024-03-04 19:52', 'APPROVED', '2',
        '5', 5, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempore porro qui. Voluptatem laudantium adipisci error itaque dolorum.', '2024-01-09 06:06', 'Fuga sed corrupti accusantium quisquam voluptas nisi illo. Ad mollitia sequi beatae iste quae.',
        '2024-04-26 19:39', 'APPROVED', '2',
        '1', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Explicabo delectus at ad dolore ullam. Nostrum laborum magni ratione earum beatae.', '2024-05-14 23:33', 'Cupiditate ducimus aliquam error. Voluptatum ad ea accusamus ipsam. Voluptas fuga adipisci placeat.',
        '2024-05-26 08:46', 'REJECTED', '2',
        '2', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas numquam esse iste. Laborum sequi minima occaecati similique voluptatibus iure a.', '2024-05-05 22:40', 'Est quis delectus accusantium delectus dolor. Doloremque quas veritatis atque modi ullam.',
        '2024-05-28 09:06', 'APPROVED', '2',
        '3', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At fugiat eos. Nostrum qui officia numquam quos. At explicabo facere eos.', '2024-05-18 02:14', NULL,
        NULL, 'PENDING', '2',
        '4', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit inventore nemo vero possimus cumque. Sapiente debitis qui officia. Natus veniam nulla fugit.', '2024-03-09 00:45', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio incidunt velit reprehenderit.', '2024-02-21 02:58', 'Assumenda itaque rerum. Asperiores nobis distinctio repellat fugit blanditiis distinctio.',
        '2024-05-07 14:25', 'REJECTED', '2',
        '1', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae impedit corporis dolorum. Nulla tempore nobis. Accusantium impedit repudiandae eos.', '2024-02-25 06:49', 'Velit dolore eum ab dolores. Modi ipsam cum rem maiores quam.',
        '2024-03-23 05:08', 'APPROVED', '2',
        '2', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatum veniam molestiae vel totam. Laboriosam ducimus accusamus natus.', '2024-02-22 22:47', 'Ratione voluptatum harum iste accusantium.',
        '2024-05-15 13:59', 'APPROVED', '2',
        '3', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit debitis recusandae voluptate amet. Harum minus maxime. Repellat quod officia impedit.', '2024-01-12 11:45', 'Suscipit repellendus ipsa earum. Et vitae nisi quod.',
        '2024-05-15 06:39', 'REJECTED', '2',
        '4', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt nostrum soluta magni. Nam in sint quas optio magni quidem.', '2024-05-29 02:13', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam saepe vero.', '2024-02-24 13:19', 'Magni occaecati molestias officia. Officiis error sequi iusto labore.',
        '2024-04-26 23:02', 'APPROVED', '2',
        '1', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit veritatis error. Consectetur quibusdam numquam.', '2024-04-15 01:37', NULL,
        NULL, 'PENDING', '2',
        '2', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Placeat itaque dignissimos soluta fugiat a reiciendis. Pariatur suscipit quod fuga hic incidunt.', '2024-04-04 04:34', NULL,
        NULL, 'PENDING', '2',
        '3', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum beatae labore et.
Quos quae velit delectus similique nostrum. Molestiae molestias fugit.', '2024-05-16 02:46', NULL,
        NULL, 'PENDING', '2',
        '4', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt repudiandae impedit pariatur.
Tenetur accusamus eius delectus laudantium commodi quibusdam.', '2024-04-12 13:23', NULL,
        NULL, 'PENDING', '2',
        '5', 5, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium repellat aliquam non.', '2024-04-26 14:26', 'Beatae amet vel odio voluptas commodi. Laboriosam esse voluptatibus.',
        '2024-05-17 08:11', 'REJECTED', '5',
        '1', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore est in omnis. Repudiandae dignissimos velit necessitatibus.', '2024-04-11 22:14', 'Quos magnam ullam adipisci porro nam maxime. Similique doloribus officia quia nemo nostrum.',
        '2024-05-11 06:23', 'APPROVED', '5',
        '2', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas commodi iusto occaecati quod explicabo est harum. Quam ullam labore cum explicabo facere.', '2024-01-16 11:49', 'Magni ducimus cum porro quibusdam eius. In quae modi facere.',
        '2024-04-07 06:23', 'APPROVED', '5',
        '3', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt iste ab nobis modi iste omnis. Expedita possimus quidem. Mollitia ratione error ut id.', '2024-02-14 21:58', 'Quos omnis distinctio mollitia rem quae. Praesentium exercitationem qui tenetur numquam cupiditate.',
        '2024-03-13 20:19', 'REJECTED', '5',
        '4', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Saepe praesentium accusantium assumenda. Nisi beatae dignissimos placeat ipsa tempora inventore.', '2024-01-07 00:49', NULL,
        NULL, 'PENDING', '5',
        '5', 6, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ducimus voluptatibus blanditiis perferendis. Ut qui explicabo sapiente explicabo atque.', '2024-05-01 02:52', 'Dolor deserunt at vitae quaerat animi maxime.
Iste placeat ducimus animi atque iste sequi.',
        '2024-05-24 07:25', 'APPROVED', '5',
        '1', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum consectetur pariatur eius. Facere id minus magni eveniet.', '2024-01-12 01:11', 'Facere repellat totam iusto incidunt. Rem fugit velit sunt asperiores.',
        '2024-05-18 21:48', 'REJECTED', '5',
        '2', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos ipsum quam repellat veniam natus similique. Veritatis non illo laudantium.', '2024-05-01 04:01', 'Quisquam repellat perferendis.',
        '2024-05-20 21:25', 'REJECTED', '5',
        '3', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima rerum deleniti ullam dignissimos veritatis suscipit. Itaque sapiente natus natus.', '2024-02-28 06:58', NULL,
        NULL, 'PENDING', '5',
        '4', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Assumenda voluptatem reprehenderit laboriosam. Blanditiis ex accusantium error.', '2024-03-02 17:38', 'Eligendi tempore cumque repudiandae dolore temporibus.',
        '2024-04-28 19:19', 'REJECTED', '5',
        '5', 6, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae error reprehenderit quis architecto. Fuga fugit aut sed architecto sint modi.', '2024-04-28 01:40', NULL,
        NULL, 'PENDING', '5',
        '1', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas quasi ea unde sequi. Expedita nam fuga. Architecto ratione magnam iste quae ratione.', '2024-04-06 08:14', 'Itaque velit ullam mollitia reprehenderit. Possimus odit quibusdam blanditiis.',
        '2024-05-19 15:04', 'APPROVED', '5',
        '2', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam ratione alias debitis. Consequuntur et error perspiciatis sunt eaque.', '2024-03-29 00:41', 'Accusamus illum tempora debitis accusamus laboriosam enim dolorem. Laboriosam eligendi atque est.',
        '2024-04-03 00:19', 'REJECTED', '5',
        '3', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus voluptas aut possimus.
Nam earum libero eaque. Dolor sed labore.', '2024-01-07 11:10', NULL,
        NULL, 'PENDING', '5',
        '4', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Impedit aut laudantium magni minus. Eligendi minima molestias. Harum nisi quam molestias.', '2024-02-21 23:10', 'Tenetur quasi delectus hic. Accusantium fugiat ut debitis impedit quas assumenda.',
        '2024-05-03 20:11', 'APPROVED', '5',
        '5', 6, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('In accusantium quam veniam sunt expedita. Mollitia quo eum suscipit consequuntur.', '2024-01-20 09:44', 'Ab fugiat voluptatibus praesentium.
Minus sequi expedita a odio.',
        '2024-05-27 21:08', 'REJECTED', '5',
        '1', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime eum aliquid.
Dolor vitae rem reprehenderit illo commodi distinctio.', '2024-05-03 03:35', 'Sunt illo cupiditate perferendis. Occaecati adipisci aliquid odit pariatur itaque fugiat.',
        '2024-05-21 00:40', 'REJECTED', '5',
        '2', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum at sunt facere odio laudantium asperiores. Possimus corporis quae eaque non qui.', '2024-01-12 01:25', 'Eius est facilis. Ullam magnam quidem quas.',
        '2024-04-13 20:51', 'APPROVED', '5',
        '3', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Distinctio eos necessitatibus ipsa maxime. Quo ab vero voluptatum blanditiis quaerat impedit.', '2024-04-15 22:29', 'Eius accusantium qui ab. Illum iure dolor cumque nobis excepturi. Occaecati dolor adipisci minima.',
        '2024-05-07 11:04', 'APPROVED', '5',
        '4', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Harum dignissimos veritatis dolorem ratione. Laborum quis consectetur odit asperiores nulla.', '2024-02-05 11:17', 'Nihil at quisquam non aliquam fuga. Tempore sint illum ipsam.',
        '2024-05-11 17:27', 'APPROVED', '5',
        '5', 6, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur id earum hic nihil. Nesciunt quibusdam rem. Temporibus aliquam illum.', '2024-02-09 15:40', 'Porro voluptate itaque ad facere occaecati praesentium sunt. Consectetur nemo suscipit ducimus.',
        '2024-03-23 23:24', 'APPROVED', '5',
        '1', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit soluta perferendis sed nulla.', '2024-03-23 11:46', 'Magnam dolor voluptatem aspernatur. Natus aut itaque.',
        '2024-04-07 10:09', 'APPROVED', '5',
        '2', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur unde accusamus facilis. Enim cum omnis neque.', '2024-01-06 21:29', 'Error vel id a. Sit eos hic debitis similique perferendis. Ut ipsa consequuntur modi.',
        '2024-04-08 12:46', 'REJECTED', '5',
        '3', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quaerat quasi quam. Vitae fugit culpa iure. Tempore corrupti voluptate quas neque.', '2024-03-13 02:37', NULL,
        NULL, 'PENDING', '5',
        '4', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus eligendi vitae omnis sit occaecati.', '2024-01-15 03:48', 'Doloribus in excepturi alias. Rem aspernatur quas.',
        '2024-02-18 14:20', 'APPROVED', '5',
        '5', 6, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt nam odit quasi aliquid sint asperiores. Voluptas sequi odio.', '2024-02-14 15:49', 'Fugit corrupti eum eveniet.
Voluptatum tenetur sapiente sint. Id eum illum eaque ea.',
        '2024-03-04 17:05', 'REJECTED', '5',
        '1', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur omnis occaecati saepe non.', '2024-05-08 00:20', NULL,
        NULL, 'PENDING', '5',
        '2', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laboriosam animi accusamus numquam. Quod ducimus non qui numquam.', '2024-02-10 14:04', 'Eaque dolorum ut. Provident repudiandae magnam incidunt temporibus. Maxime esse tempore harum.',
        '2024-02-28 05:43', 'APPROVED', '5',
        '3', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas at odio commodi rem.
Voluptatem est ea ab at corrupti incidunt. Vitae autem aliquid.', '2024-03-31 11:29', NULL,
        NULL, 'PENDING', '5',
        '4', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ratione alias harum ducimus illo. Facere sint veritatis inventore impedit aliquam iste aspernatur.', '2024-01-22 15:46', 'Reprehenderit molestiae laudantium. Sed deserunt odit eum. Dolorem recusandae at itaque maxime.',
        '2024-01-27 00:55', 'APPROVED', '5',
        '5', 6, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias blanditiis exercitationem praesentium.', '2024-04-01 14:55', NULL,
        NULL, 'PENDING', '5',
        '1', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur itaque id ratione sed.', '2024-01-17 10:45', 'Fugiat mollitia placeat consequatur optio. Similique libero repudiandae iure impedit iusto.',
        '2024-04-10 07:02', 'REJECTED', '5',
        '2', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem itaque laborum officia. Sapiente rerum laborum. Cupiditate sed illum reiciendis.', '2024-01-20 13:22', 'Quas mollitia numquam adipisci.',
        '2024-02-03 00:07', 'APPROVED', '5',
        '3', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Accusamus atque tempore debitis minima. Fugiat sint officiis quis et quae corporis.', '2024-01-18 02:46', 'Occaecati alias hic. Nulla quibusdam velit dolor explicabo neque culpa. Minima quaerat neque id.',
        '2024-05-10 01:11', 'REJECTED', '5',
        '4', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem commodi dolorum occaecati inventore. Aperiam dolore dolore error.', '2024-01-06 19:32', 'Possimus nesciunt asperiores saepe. Earum quos repudiandae nobis iure.',
        '2024-04-30 20:43', 'APPROVED', '5',
        '5', 6, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquid laboriosam dolore impedit iure. Dolor iusto alias quibusdam quae est in.', '2024-01-16 21:46', NULL,
        NULL, 'PENDING', '5',
        '1', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vel alias quia porro magnam temporibus.', '2024-01-03 00:51', 'Facere ipsam recusandae fugiat est nihil. Vitae nihil nam quam culpa mollitia.',
        '2024-05-27 18:57', 'APPROVED', '5',
        '2', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat iste est ipsam. Neque nam veritatis consequuntur impedit.', '2024-04-01 22:52', NULL,
        NULL, 'PENDING', '5',
        '3', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam maxime harum. Nesciunt facere nostrum doloribus dolore unde aliquid.', '2024-04-27 08:04', 'Incidunt et sunt fugit reprehenderit minima. Ipsam adipisci expedita ullam soluta.',
        '2024-05-24 14:38', 'REJECTED', '5',
        '4', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam accusamus vitae id distinctio saepe itaque. Rem molestias perferendis repellat.', '2024-02-04 16:23', 'Nam sapiente cum magni. Cupiditate ratione dicta. Velit rerum ratione nesciunt.',
        '2024-03-01 20:22', 'REJECTED', '5',
        '5', 6, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Similique placeat molestias amet veritatis animi ducimus. Fuga assumenda delectus totam.', '2024-02-11 04:49', 'Quia natus quisquam illum praesentium. Saepe iste consequuntur perspiciatis explicabo quam error.',
        '2024-05-26 08:53', 'APPROVED', '5',
        '1', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facilis temporibus ex reiciendis. Odio et et ex.', '2024-02-24 03:57', 'Animi eum amet exercitationem sequi dolores. Provident cum tempora dolores sapiente cum inventore.',
        '2024-05-27 23:04', 'REJECTED', '5',
        '2', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga at facere ex dolore. Accusantium iure delectus aspernatur fugit nobis iure iure.', '2024-01-13 19:12', 'Illum molestias placeat quaerat vero a distinctio possimus. Facere totam deleniti dignissimos.',
        '2024-02-22 02:01', 'REJECTED', '5',
        '3', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi velit autem non veniam. Facilis doloribus repellat voluptatibus voluptate odit.', '2024-02-24 03:08', 'Omnis voluptatibus voluptates commodi incidunt quo vel. Qui odit voluptatibus odio iure.',
        '2024-05-01 15:31', 'APPROVED', '5',
        '4', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet modi totam. Facilis ut vel quasi pariatur perferendis. Quasi autem laudantium.', '2024-03-14 08:30', NULL,
        NULL, 'PENDING', '5',
        '5', 6, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nam necessitatibus facere. Neque fuga asperiores cupiditate eveniet.', '2024-04-23 03:21', 'Occaecati nostrum molestiae inventore quos quidem. Quis ipsam nulla aliquid. Ea tempore in ipsa.',
        '2024-05-22 00:10', 'REJECTED', '5',
        '1', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptas eos iste harum quas nemo. Necessitatibus repellendus facilis nam consectetur numquam.', '2024-01-07 22:20', NULL,
        NULL, 'PENDING', '5',
        '2', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Neque praesentium aut minima eum sint. Eum deserunt rem quasi fugiat reprehenderit ad.', '2024-02-23 12:15', 'Id neque perferendis quibusdam. Nihil placeat animi dolores.',
        '2024-04-23 10:15', 'REJECTED', '5',
        '3', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea culpa enim nesciunt libero dignissimos unde.', '2024-03-26 12:06', NULL,
        NULL, 'PENDING', '5',
        '4', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates quaerat exercitationem unde. Rerum dolorem ad laboriosam itaque labore error est.', '2024-04-28 04:08', NULL,
        NULL, 'PENDING', '5',
        '5', 6, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Pariatur autem illo repellat ipsum explicabo incidunt. Aliquid voluptatum culpa non.', '2024-02-21 06:05', NULL,
        NULL, 'PENDING', '1',
        '1', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dicta corrupti totam hic quam. Molestias quae facere explicabo ab.', '2024-02-12 23:15', 'Voluptatum accusamus consequuntur sit neque. Doloremque natus ipsum molestias quae ad nulla.',
        '2024-02-18 18:53', 'APPROVED', '1',
        '2', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquam iusto ducimus. Atque beatae atque laudantium officia dolorum.', '2024-05-26 04:08', 'Accusantium quisquam perferendis illum omnis. Eaque saepe praesentium optio aliquam.',
        '2024-05-26 08:52', 'REJECTED', '1',
        '3', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod expedita eaque eaque. Molestias fugit aspernatur mollitia iusto.', '2024-04-17 07:00', 'Quam mollitia veritatis aut facere impedit. Unde natus possimus molestias velit.',
        '2024-05-17 06:33', 'APPROVED', '1',
        '4', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolore maxime esse impedit aut. Autem animi ad quidem. Fuga eos error vel porro ab incidunt vero.', '2024-02-11 06:37', 'Ipsum cum cupiditate minima et quod nam. Explicabo placeat veniam. Tempora eveniet alias ut.',
        '2024-03-03 04:02', 'REJECTED', '1',
        '5', 7, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Earum autem alias beatae ducimus maxime fugiat.', '2024-04-20 08:24', NULL,
        NULL, 'PENDING', '1',
        '1', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Inventore laudantium culpa ullam. Aliquid hic saepe doloribus. Libero neque labore autem.', '2024-03-12 06:32', 'Blanditiis rem tenetur consectetur porro qui asperiores maxime. Quibusdam vel beatae deserunt.',
        '2024-05-23 03:20', 'APPROVED', '1',
        '2', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sunt recusandae temporibus mollitia recusandae. Aspernatur recusandae laboriosam.', '2024-02-03 19:29', NULL,
        NULL, 'PENDING', '1',
        '3', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Alias ad cumque. Placeat dolores explicabo officiis quisquam eius.', '2024-01-20 19:40', NULL,
        NULL, 'PENDING', '1',
        '4', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Architecto quis possimus iusto vero. Sed autem quas asperiores magnam inventore commodi.', '2024-03-27 23:05', 'Suscipit dolore cum iure. Ex vero repellendus est sapiente.',
        '2024-05-11 10:18', 'REJECTED', '1',
        '5', 7, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sed voluptates natus dolorum quod fugit architecto velit. Inventore amet maiores fuga quisquam sit.', '2024-03-23 17:41', NULL,
        NULL, 'PENDING', '1',
        '1', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Necessitatibus incidunt neque error. Quam cum quibusdam.', '2024-01-18 03:30', 'Pariatur ratione soluta deleniti ipsum ut odit. Dolore reprehenderit illum explicabo dolor rerum.',
        '2024-04-29 20:51', 'APPROVED', '1',
        '2', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deleniti beatae eligendi libero dicta eligendi perferendis. Cupiditate tempora quod nemo fugiat.', '2024-05-05 17:55', 'Eum dolore consequatur vitae.',
        '2024-05-16 01:42', 'REJECTED', '1',
        '3', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur optio accusamus fuga harum.', '2024-03-17 01:17', NULL,
        NULL, 'PENDING', '1',
        '4', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem fuga in enim a. Ad architecto ab hic veniam.', '2024-05-24 12:31', 'Ut labore eius laudantium ut soluta id. Facilis laborum repudiandae ab.',
        '2024-05-29 00:12', 'REJECTED', '1',
        '5', 7, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas voluptates quia. Modi velit qui placeat facilis laboriosam. Maiores dicta at architecto.', '2024-01-23 19:38', NULL,
        NULL, 'PENDING', '1',
        '1', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis suscipit ad sint a assumenda. Debitis aspernatur fugit.', '2024-04-16 07:13', NULL,
        NULL, 'PENDING', '1',
        '2', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Occaecati iste sunt nemo.', '2024-04-27 07:46', NULL,
        NULL, 'PENDING', '1',
        '3', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Labore nisi quam. Reprehenderit magnam non reprehenderit placeat quod corrupti totam.', '2024-04-12 22:32', 'Distinctio vitae illum quisquam. Officia a aliquam odit.',
        '2024-04-29 21:15', 'REJECTED', '1',
        '4', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum repellendus repellendus illo unde. Reiciendis modi aliquid.', '2024-02-03 23:57', 'Et pariatur assumenda error officiis cum facilis quae.',
        '2024-04-21 22:19', 'REJECTED', '1',
        '5', 7, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga dicta repellat laborum unde error. Provident commodi necessitatibus blanditiis itaque autem.', '2024-01-25 17:28', 'Deleniti quisquam amet iste iure harum. Dolorem sequi sed ullam provident magni minima.',
        '2024-03-18 22:00', 'APPROVED', '1',
        '1', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio quas rem esse. Vel adipisci illum quisquam impedit.', '2024-02-24 02:37', 'Quam adipisci repellat placeat dolore reiciendis ad. Delectus minus quod a nulla quas.',
        '2024-04-22 00:45', 'REJECTED', '1',
        '2', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ad debitis laudantium architecto error labore veniam. Odit tempora quidem doloribus at iure.', '2024-05-17 02:23', NULL,
        NULL, 'PENDING', '1',
        '3', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum repudiandae rem officiis. Consequatur ab aut. Itaque velit esse.', '2024-04-01 04:35', 'Blanditiis temporibus at ipsa. Velit nesciunt veniam assumenda.',
        '2024-04-11 21:54', 'REJECTED', '1',
        '4', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis repellendus dolore odit occaecati iure. Fuga nam quidem amet possimus enim illo.', '2024-01-19 02:51', 'Minima enim tempora quos iusto. Odit iure atque ipsa.',
        '2024-02-08 15:55', 'APPROVED', '1',
        '5', 7, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vero maxime autem labore. Officiis unde fugit possimus.', '2024-03-05 04:10', 'Cupiditate et quo doloribus. Ea maxime quibusdam neque quos ipsum.',
        '2024-05-23 19:50', 'APPROVED', '1',
        '1', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Optio delectus veniam. Inventore voluptate labore laudantium.', '2024-01-15 03:02', NULL,
        NULL, 'PENDING', '1',
        '2', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Esse aperiam rerum enim. Harum illo corrupti aliquam culpa neque nam.', '2024-03-03 16:29', 'Deleniti harum ipsum quis doloremque qui.',
        '2024-04-17 03:29', 'APPROVED', '1',
        '3', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea in nesciunt porro nulla tenetur. Similique vero minima deleniti in facere.', '2024-03-27 04:10', 'Corporis labore optio quasi maiores reprehenderit.',
        '2024-05-20 09:34', 'REJECTED', '1',
        '4', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident ducimus quod quas ad. Soluta minima cumque cumque sit.', '2024-02-02 03:14', 'Consequuntur incidunt optio autem dicta. Quam distinctio reprehenderit mollitia.',
        '2024-02-14 16:10', 'REJECTED', '1',
        '5', 7, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eligendi eos quibusdam atque. Amet autem earum veritatis sunt.', '2024-01-04 21:45', 'Ullam atque ab accusamus commodi. Nesciunt enim mollitia dolorum natus minus quidem voluptatum.',
        '2024-05-28 03:03', 'APPROVED', '1',
        '1', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iusto saepe quae enim.', '2024-01-13 00:10', NULL,
        NULL, 'PENDING', '1',
        '2', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illum repellat occaecati. Nesciunt ut repellat ut aut numquam blanditiis.', '2024-01-04 18:26', NULL,
        NULL, 'PENDING', '1',
        '3', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Illum iure explicabo perspiciatis. Tempora iure vitae. Libero repudiandae voluptatibus.', '2024-04-02 12:06', 'A porro perspiciatis sint. Sed reprehenderit vero similique iure aut.',
        '2024-04-12 20:13', 'APPROVED', '1',
        '4', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi delectus saepe necessitatibus quasi libero. Fugit fugiat culpa nemo atque.', '2024-04-17 03:25', 'Ratione iste illum.',
        '2024-04-24 19:47', 'REJECTED', '1',
        '5', 7, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quos cum dolore doloribus corporis molestias. Ipsa blanditiis molestiae.', '2024-05-12 15:05', 'Exercitationem eligendi aperiam possimus eum optio eligendi nesciunt. Reiciendis ratione alias.',
        '2024-05-22 06:49', 'APPROVED', '1',
        '1', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima doloribus laborum quos possimus eos assumenda.', '2024-04-02 06:48', NULL,
        NULL, 'PENDING', '1',
        '2', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo qui ut aliquam eaque rerum voluptatem. Ex inventore modi. Voluptatum dolor odio voluptates cum.', '2024-02-23 04:32', 'Nisi quas maxime. Quod suscipit temporibus.',
        '2024-03-08 20:38', 'APPROVED', '1',
        '3', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae atque dolore incidunt. Harum esse similique mollitia quasi id sunt.', '2024-05-07 04:46', 'Eaque tenetur labore numquam. Quae aliquid error nisi.',
        '2024-05-15 06:05', 'APPROVED', '1',
        '4', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem quisquam quam veniam sequi illo. Velit perferendis mollitia porro id. Sunt maiores itaque.', '2024-02-26 23:34', 'Eos fugit fuga aperiam velit. Libero impedit itaque natus totam in.',
        '2024-05-26 11:20', 'REJECTED', '1',
        '5', 7, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugit quaerat aspernatur optio nemo nisi optio sint.', '2024-04-13 06:51', NULL,
        NULL, 'PENDING', '1',
        '1', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Earum voluptate nemo ad quasi porro. Itaque sed asperiores iste sed recusandae.', '2024-01-20 13:00', 'Adipisci accusamus velit facere earum saepe.',
        '2024-02-13 15:06', 'REJECTED', '1',
        '2', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id expedita doloribus repellat pariatur perferendis corrupti. Est dignissimos sint sapiente.', '2024-05-03 16:22', 'Ratione quo laborum debitis natus. Dolor minima magnam.',
        '2024-05-19 00:26', 'APPROVED', '1',
        '3', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Unde nemo dolorum officia quam. Odio veniam quam debitis sit.', '2024-05-25 11:55', 'Saepe aperiam doloremque tenetur. Ipsum cum repellat quo nihil iusto necessitatibus.',
        '2024-05-27 11:28', 'REJECTED', '1',
        '4', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam ipsa reprehenderit.', '2024-04-11 14:30', 'Ab et sequi veritatis. Qui nihil quia.',
        '2024-05-15 07:49', 'REJECTED', '1',
        '5', 7, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nemo voluptatum dolor. Sequi nobis ratione nam earum suscipit.', '2024-01-09 10:53', 'Quos consequatur est quaerat. Quod nesciunt corporis laudantium dolor.',
        '2024-05-28 12:37', 'REJECTED', '1',
        '1', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem qui ratione veniam. Odit maiores eum quibusdam nam.', '2024-02-15 17:09', NULL,
        NULL, 'PENDING', '1',
        '2', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit commodi voluptas at. Numquam nobis provident.', '2024-04-10 20:16', NULL,
        NULL, 'PENDING', '1',
        '3', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa distinctio necessitatibus autem sint debitis. Ea officiis vitae doloremque quisquam error.', '2024-01-28 07:38', NULL,
        NULL, 'PENDING', '1',
        '4', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae atque distinctio ullam aut dicta sequi. Repellat aspernatur fugit non sit.', '2024-05-18 17:23', 'Minus illo quae aut illum. Molestiae excepturi dolorem iure.',
        '2024-05-21 18:35', 'APPROVED', '1',
        '5', 7, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reiciendis magni quae mollitia odio vitae molestias. Dolores officia laudantium magni.', '2024-03-14 20:55', NULL,
        NULL, 'PENDING', '3',
        '1', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fuga iusto sit rerum nemo.', '2024-03-31 01:08', 'Ipsam sint quidem soluta esse mollitia omnis veniam. Exercitationem nobis maxime aperiam.',
        '2024-04-15 20:09', 'APPROVED', '3',
        '2', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos provident incidunt ipsa dolorem eos excepturi. Sed iure ad.', '2024-01-17 14:07', 'Itaque inventore porro modi iusto dicta. Molestias sint nisi natus.',
        '2024-03-25 02:55', 'APPROVED', '3',
        '3', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis ipsam id enim facilis in iusto. Amet nihil voluptas. Velit voluptas ab distinctio.', '2024-03-22 21:54', 'Officia amet ratione necessitatibus accusantium. Repellat amet at nisi optio.',
        '2024-04-23 23:43', 'APPROVED', '3',
        '4', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Exercitationem officiis eos. Voluptates dolorem sint fuga amet.', '2024-03-31 21:57', 'Expedita mollitia officia iste quam.',
        '2024-05-29 04:51', 'APPROVED', '3',
        '5', 8, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident voluptatum labore.', '2024-04-17 00:24', 'Tempore quisquam fuga omnis consectetur esse labore excepturi. Esse quos reprehenderit.',
        '2024-05-17 06:51', 'APPROVED', '3',
        '1', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur quisquam numquam quod dolorum ratione. Deserunt et modi velit dolorum.', '2024-05-28 04:56', 'Aliquid consectetur natus tempora.',
        '2024-05-28 16:06', 'REJECTED', '3',
        '2', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ea mollitia quod ratione corrupti aperiam expedita. Eum sequi quasi officia. Labore in temporibus.', '2024-01-07 15:08', 'Tempora veritatis ipsum itaque fuga cum. Saepe ut esse eum.',
        '2024-03-25 04:46', 'APPROVED', '3',
        '3', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestias ad alias dignissimos. Aliquam consectetur minima veniam autem animi.', '2024-03-22 06:45', NULL,
        NULL, 'PENDING', '3',
        '4', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laudantium excepturi nostrum fugit dolorem inventore. Nostrum alias eum corrupti illum.', '2024-01-26 13:50', NULL,
        NULL, 'PENDING', '3',
        '5', 8, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum sint sed architecto porro illum eveniet. Voluptate assumenda nesciunt mollitia.', '2024-05-08 07:19', 'Vitae esse animi illum libero. Esse tenetur cumque fuga. Voluptate mollitia dolorum ab quasi.',
        '2024-05-12 11:56', 'APPROVED', '3',
        '1', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorum iure maxime.', '2024-04-29 01:53', 'Modi vitae libero neque distinctio. Ratione repellat dicta. Fugiat excepturi animi vel.',
        '2024-05-14 08:06', 'APPROVED', '3',
        '2', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam saepe itaque sit. Dolores quia voluptatem voluptate voluptatibus magni.', '2024-05-18 08:57', 'Iste voluptatibus esse asperiores. Vero nobis commodi repellendus in. Qui consequuntur sed dolores.',
        '2024-05-25 18:55', 'REJECTED', '3',
        '3', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus libero nisi. Porro molestias totam quibusdam quisquam modi.', '2024-01-27 08:39', 'Molestiae assumenda odit cum fugiat ab amet. Quae molestias animi non similique.',
        '2024-05-16 12:29', 'APPROVED', '3',
        '4', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus libero ratione minus assumenda culpa. Animi laudantium repellendus quae ipsa.', '2024-01-22 18:45', NULL,
        NULL, 'PENDING', '3',
        '5', 8, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolorum dicta ut id at dolorum unde. Ut praesentium soluta ipsam.', '2024-04-02 20:40', 'Atque qui facere aspernatur illum similique nemo. Odit cupiditate magnam cum eos veniam hic.',
        '2024-05-18 10:24', 'APPROVED', '3',
        '1', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime harum consectetur assumenda. Error illum occaecati necessitatibus debitis commodi.', '2024-01-29 00:03', NULL,
        NULL, 'PENDING', '3',
        '2', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum aspernatur voluptatibus ex laborum quas. Nam quae accusantium rem sequi voluptatibus eius.', '2024-04-12 22:38', 'Dolor dolore quos reprehenderit aut quisquam. Odit laboriosam illo adipisci alias corporis.',
        '2024-05-22 06:18', 'APPROVED', '3',
        '3', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa ratione eligendi tempora.', '2024-03-15 10:21', 'Iste rem dignissimos porro. Error minus dolore sequi odit.',
        '2024-04-07 11:20', 'REJECTED', '3',
        '4', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maiores voluptates nisi assumenda eos eos perspiciatis. Quisquam non natus eveniet.', '2024-03-05 09:38', 'Quod autem autem. Debitis animi perferendis ea et. Beatae eum atque quia.',
        '2024-05-07 14:42', 'REJECTED', '3',
        '5', 8, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Recusandae enim fuga quos adipisci.', '2024-04-03 23:49', 'Fugit nobis dolorem earum adipisci natus sed. Voluptas enim dolor necessitatibus possimus.',
        '2024-04-06 13:32', 'REJECTED', '3',
        '1', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum quia animi et ex beatae sapiente.', '2024-03-30 21:29', 'Ab veniam doloribus aut. Error mollitia porro inventore in.',
        '2024-04-10 20:36', 'REJECTED', '3',
        '2', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laudantium amet nam dignissimos. Quisquam iusto at ducimus.', '2024-03-14 00:09', 'Ratione tempore eligendi neque molestiae veniam.',
        '2024-05-19 04:46', 'APPROVED', '3',
        '3', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quas laborum placeat tempore qui. Earum quisquam odio natus eveniet molestiae facere.', '2024-04-15 09:55', 'Pariatur fuga quos cum similique sunt. Aliquam tempore eum quod.',
        '2024-05-01 01:50', 'REJECTED', '3',
        '4', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum similique natus sit distinctio unde voluptate corrupti. Alias error id vero iure.', '2024-04-09 14:25', NULL,
        NULL, 'PENDING', '3',
        '5', 8, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates sapiente beatae deserunt harum sit pariatur dolorem.', '2024-05-08 05:10', NULL,
        NULL, 'PENDING', '3',
        '1', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deleniti quo dolores explicabo. Minima mollitia doloribus dolore voluptates.', '2024-05-04 07:39', 'Aut laboriosam exercitationem dolorem pariatur illum. Nisi asperiores qui dolore.',
        '2024-05-16 07:56', 'APPROVED', '3',
        '2', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perferendis exercitationem dolore voluptatum temporibus odio. Quam voluptas possimus.', '2024-05-21 03:37', 'Dolorem excepturi veritatis sit consequuntur dolorem.',
        '2024-05-23 14:01', 'APPROVED', '3',
        '3', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Laborum id nulla autem optio. Voluptatem eius omnis aut illo.', '2024-04-27 00:46', 'Facilis nobis iusto rerum alias.
Voluptate culpa porro. Autem ut doloribus modi ipsam harum.',
        '2024-05-04 15:38', 'APPROVED', '3',
        '4', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae tenetur delectus corrupti quod dolorum.', '2024-04-04 19:34', 'Quisquam corrupti libero eum inventore. Voluptatum nulla quos ipsa fugiat.',
        '2024-04-13 18:56', 'REJECTED', '3',
        '5', 8, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam maxime sed a nulla mollitia cupiditate. Expedita a repellendus accusamus quidem.', '2024-04-25 01:29', 'Nam inventore explicabo dolore numquam. Quos sunt voluptatibus perferendis optio repudiandae.',
        '2024-05-13 03:32', 'REJECTED', '3',
        '1', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nihil minima laborum. Debitis consequuntur id. Quae ut saepe dolorum voluptates.
Alias esse eaque.', '2024-01-20 06:00', 'Rem temporibus optio nesciunt rerum fuga nemo. Aperiam nesciunt eos aut nam.',
        '2024-03-31 21:58', 'APPROVED', '3',
        '2', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempore quas voluptatibus ea.', '2024-05-13 01:16', 'Incidunt quaerat aliquid saepe soluta. Commodi delectus aspernatur.',
        '2024-05-21 08:48', 'REJECTED', '3',
        '3', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellendus tempora tempora fugit hic aliquid. Sapiente exercitationem modi eius impedit.', '2024-04-10 08:41', 'Ad quam maxime qui totam eum. Esse aperiam reprehenderit est. Eligendi odit at natus totam.',
        '2024-05-03 19:04', 'REJECTED', '3',
        '4', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reiciendis vitae recusandae cupiditate minima error.', '2024-01-08 16:30', 'Minus fuga dolor tempora. Deserunt laborum in ipsum. Eius eum hic similique incidunt aperiam id.',
        '2024-05-04 13:45', 'REJECTED', '3',
        '5', 8, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Totam quia doloremque illum itaque earum. Enim ad sint molestiae sit.', '2024-04-14 03:36', 'Eligendi eum numquam non a. Quisquam iure alias maxime nam cupiditate. Praesentium nulla porro.',
        '2024-05-07 20:18', 'APPROVED', '3',
        '1', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quod iste vel consectetur possimus quia. Provident ipsam aliquid nulla.', '2024-04-15 00:59', 'Repudiandae est voluptates aliquid quis. Natus explicabo quae commodi voluptatibus dolores.',
        '2024-04-18 08:42', 'APPROVED', '3',
        '2', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eum atque rerum quae tempore provident deleniti. Minima delectus id libero.', '2024-04-19 05:16', NULL,
        NULL, 'PENDING', '3',
        '3', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Modi odio itaque incidunt ipsa. Consequatur officiis vero.', '2024-04-06 01:13', 'Fugiat illum quidem blanditiis. Ut culpa magnam atque aut. Nemo ut eos voluptatem modi amet.',
        '2024-05-21 03:41', 'APPROVED', '3',
        '4', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Adipisci inventore earum ipsa.', '2024-03-04 04:08', 'Temporibus natus ea adipisci. Maxime quis magni et nihil dolor.',
        '2024-04-14 04:37', 'REJECTED', '3',
        '5', 8, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum dolor a repellendus deleniti ad dignissimos. Quaerat vitae sint soluta.', '2024-05-20 05:07', 'Quaerat corporis reprehenderit esse alias. At unde delectus est nam porro vitae fuga.',
        '2024-05-23 16:11', 'REJECTED', '3',
        '1', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugit saepe eveniet perferendis. Quis quia amet fuga optio vel excepturi tempore.', '2024-04-24 23:46', 'Repellat saepe error. Necessitatibus voluptate mollitia dolorem quod.',
        '2024-05-25 20:02', 'REJECTED', '3',
        '2', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quae fugiat corporis id vero id. Corporis quos sed ipsam doloribus.', '2024-03-21 16:05', NULL,
        NULL, 'PENDING', '3',
        '3', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Libero exercitationem magni eos est hic reiciendis. Modi praesentium aspernatur dicta.', '2024-05-18 15:29', 'Necessitatibus aliquid maiores enim. Repudiandae asperiores assumenda illum.',
        '2024-05-19 14:40', 'APPROVED', '3',
        '4', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolore neque assumenda quis. Labore id id quos. Sunt modi alias dolor nesciunt.', '2024-02-22 02:17', NULL,
        NULL, 'PENDING', '3',
        '5', 8, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellendus cum voluptatibus. Sapiente earum ipsum quisquam quas assumenda minima soluta.', '2024-04-05 17:38', 'Laborum iste labore eum illum sed. Eum molestiae suscipit non.',
        '2024-05-29 13:05', 'APPROVED', '3',
        '1', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Beatae qui ducimus quos voluptatum dolores. Velit et maxime excepturi culpa animi excepturi.', '2024-02-26 02:47', 'Tempore iste beatae commodi adipisci. Impedit aliquam commodi eaque doloremque.',
        '2024-05-06 08:49', 'REJECTED', '3',
        '2', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Delectus nobis labore necessitatibus sed. Fugit soluta amet officia laboriosam autem.', '2024-05-26 06:24', NULL,
        NULL, 'PENDING', '3',
        '3', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ut accusantium placeat eaque. Vitae delectus sequi praesentium. At eius rem quam nisi ea iste.', '2024-02-18 13:49', NULL,
        NULL, 'PENDING', '3',
        '4', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ullam nam ex maxime aliquid doloremque.', '2024-04-27 10:51', 'Iusto nobis qui repellat. Excepturi illum dolor laborum cupiditate esse sunt.',
        '2024-05-23 16:06', 'APPROVED', '3',
        '5', 8, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eaque minus optio corrupti. Aliquid nisi commodi dolore nisi. Corporis ipsa rerum iste saepe.', '2024-03-10 17:39', 'Eligendi voluptates voluptatibus nemo sed ducimus. Ullam totam itaque est facilis ut beatae.',
        '2024-03-16 19:01', 'APPROVED', '3',
        '1', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quaerat beatae praesentium quo nam modi.', '2024-02-18 17:04', 'Tenetur labore cumque accusamus. Commodi assumenda distinctio laborum quas.',
        '2024-04-02 14:11', 'REJECTED', '3',
        '2', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eius rem perspiciatis quidem ducimus. Culpa error excepturi adipisci qui accusamus eius recusandae.', '2024-05-03 01:50', 'Minus suscipit cumque culpa. Earum quis culpa.',
        '2024-05-19 02:38', 'REJECTED', '3',
        '3', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cum totam accusantium natus hic nisi.', '2024-04-26 11:39', NULL,
        NULL, 'PENDING', '3',
        '4', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Animi sit in voluptas expedita. Voluptas alias repellendus quas.', '2024-05-16 19:48', 'In labore laborum vel. Magni omnis voluptas optio doloremque sint quibusdam fuga.',
        '2024-05-18 17:00', 'REJECTED', '3',
        '5', 9, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos maxime optio totam voluptatem quae. Fuga qui sint deserunt ea explicabo assumenda.', '2024-04-12 11:20', 'Accusantium quod quod. Reiciendis provident mollitia deleniti blanditiis quisquam cum.',
        '2024-05-12 10:23', 'REJECTED', '3',
        '1', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perspiciatis nihil similique aut cum. Labore veniam nesciunt cumque.
Similique natus optio nobis.', '2024-02-29 14:40', 'Laborum provident sapiente doloribus. Temporibus asperiores reiciendis doloremque facilis quasi.',
        '2024-05-13 00:35', 'APPROVED', '3',
        '2', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Qui et quia exercitationem illum vero assumenda. Quia nesciunt ipsa pariatur.', '2024-03-05 09:38', NULL,
        NULL, 'PENDING', '3',
        '3', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos ullam atque unde. Dolor molestias iste consequuntur.', '2024-01-27 00:50', 'Odit natus impedit ea minima incidunt eos.',
        '2024-04-24 09:00', 'REJECTED', '3',
        '4', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aliquid deleniti rerum ab. Velit labore a amet.', '2024-03-23 06:34', 'Molestiae vero cupiditate iste expedita. Quam sed corrupti alias.',
        '2024-04-29 17:16', 'APPROVED', '3',
        '5', 9, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima numquam iusto consequuntur totam.
Illo cum doloribus aperiam. Sunt maxime nostrum enim.', '2024-02-10 09:19', 'Sed unde soluta natus. Minima mollitia ratione. Labore rem repellendus.',
        '2024-05-10 17:02', 'REJECTED', '3',
        '1', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nemo cumque nemo sit doloribus. Blanditiis sequi natus officia.', '2024-04-18 21:35', NULL,
        NULL, 'PENDING', '3',
        '2', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis incidunt nihil enim aspernatur. A in expedita sint.', '2024-01-18 07:45', 'Reiciendis quis quod quis iste eum. Libero sed fugiat earum quaerat molestias.',
        '2024-02-15 04:36', 'REJECTED', '3',
        '3', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rem corporis quas inventore neque delectus dignissimos. Esse iste veniam deleniti.', '2024-04-09 01:36', 'Officia a impedit omnis consectetur sint saepe. Cupiditate autem animi mollitia.',
        '2024-04-25 02:46', 'APPROVED', '3',
        '4', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nam tempora dolores qui nesciunt minus. Quidem libero sunt dolore.', '2024-02-23 23:40', 'Dolor laboriosam repellendus voluptate modi numquam. Distinctio at eveniet est voluptatibus.',
        '2024-03-14 05:00', 'REJECTED', '3',
        '5', 9, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio eos sint facere iure corporis cumque. Accusantium temporibus sapiente asperiores.', '2024-03-12 11:17', 'Fugiat ullam ab quaerat. Quo nemo aut error recusandae nobis facere voluptate.',
        '2024-04-09 09:15', 'REJECTED', '3',
        '1', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Perspiciatis pariatur aut totam. Ducimus quo veritatis dolores quos.', '2024-02-24 05:28', 'Voluptas temporibus libero placeat possimus.',
        '2024-04-07 13:25', 'REJECTED', '3',
        '2', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Porro magnam recusandae occaecati repudiandae inventore magni.', '2024-04-23 20:12', NULL,
        NULL, 'PENDING', '3',
        '3', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem dolores perferendis. Laboriosam repellat perferendis reiciendis fugiat corrupti.', '2024-02-26 15:50', 'Odit laborum tempora illum. Dicta animi commodi inventore.',
        '2024-04-27 00:19', 'APPROVED', '3',
        '4', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit ab totam repellat dicta culpa totam deleniti.', '2024-01-04 21:38', 'Laudantium cupiditate quaerat repellendus molestias.',
        '2024-02-14 11:16', 'REJECTED', '3',
        '5', 9, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sequi voluptatibus ea numquam eos. Vero incidunt autem voluptas.', '2024-05-12 07:00', 'Itaque laudantium dolorem quibusdam quisquam. Nisi omnis consectetur.',
        '2024-05-27 06:58', 'APPROVED', '3',
        '1', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugiat reiciendis nesciunt autem. Suscipit asperiores ea perferendis harum impedit.', '2024-04-29 11:39', 'Dolores excepturi similique maiores. Consequuntur magni pariatur. Ex consectetur suscipit.',
        '2024-05-11 05:13', 'APPROVED', '3',
        '2', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Provident possimus exercitationem perferendis qui natus. Error harum dignissimos natus.', '2024-02-17 15:04', NULL,
        NULL, 'PENDING', '3',
        '3', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptatem expedita maiores enim rem.', '2024-01-19 14:35', 'Inventore molestiae veniam eaque accusamus. Omnis dolores quisquam illum repellendus aperiam.',
        '2024-04-15 21:43', 'REJECTED', '3',
        '4', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iste delectus iure quaerat. Earum laudantium dignissimos qui. Facilis iste dolore iusto.', '2024-02-14 21:11', NULL,
        NULL, 'PENDING', '3',
        '5', 9, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dicta amet sed ipsa. Harum fugit commodi tenetur. Dolore mollitia reiciendis laborum ipsam fuga.', '2024-05-08 22:48', 'Necessitatibus ea expedita maxime ducimus. Sunt fugit aperiam nam.',
        '2024-05-24 13:57', 'APPROVED', '3',
        '1', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Mollitia eius nulla et officia sapiente molestiae. Tenetur suscipit blanditiis sapiente non.', '2024-01-07 22:22', 'Porro hic assumenda ut sunt aut. Dolor magni accusantium aliquam natus omnis.',
        '2024-03-08 23:55', 'APPROVED', '3',
        '2', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Excepturi in labore architecto. Porro sit corrupti asperiores modi odio.', '2024-03-10 11:49', 'Nesciunt corrupti commodi nam unde ad incidunt. Mollitia vero quasi laborum provident.',
        '2024-04-20 09:46', 'REJECTED', '3',
        '3', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Sint voluptate corporis quia similique vero dolores.', '2024-04-05 05:22', 'Molestias mollitia blanditiis praesentium. Voluptas a debitis eum.',
        '2024-04-23 23:06', 'APPROVED', '3',
        '4', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('At molestiae nobis sequi laboriosam a iusto. Magnam facere error consectetur dolores rerum.', '2024-01-10 14:40', NULL,
        NULL, 'PENDING', '3',
        '5', 9, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Deserunt labore officiis nobis. Laborum consequuntur ipsa perspiciatis.', '2024-01-15 07:27', 'Quaerat laboriosam voluptatem nam iste necessitatibus aut aspernatur. Iure nesciunt labore dolores.',
        '2024-03-27 06:55', 'APPROVED', '3',
        '1', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam expedita tempora iure. Tenetur vel voluptas voluptas.', '2024-05-16 03:26', 'Animi numquam nisi. Facilis aliquam possimus suscipit inventore quas deleniti.',
        '2024-05-17 23:13', 'APPROVED', '3',
        '2', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officiis culpa provident enim. Aspernatur omnis tempore minima voluptates fugiat qui.', '2024-02-03 15:20', 'Similique nostrum quo itaque. Ullam ipsum quae corrupti odio.',
        '2024-02-16 15:58', 'APPROVED', '3',
        '3', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repellat minus aperiam autem beatae saepe asperiores. Totam blanditiis saepe quam corporis.', '2024-02-18 03:03', 'Voluptatibus amet delectus dolor sequi mollitia dicta.',
        '2024-03-19 12:10', 'APPROVED', '3',
        '4', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Amet similique blanditiis eos quas. Libero nihil omnis quae repellat sed.', '2024-04-02 03:17', 'Iste magni eaque magnam. Ad aut reiciendis in quia nulla.',
        '2024-05-23 00:02', 'REJECTED', '3',
        '5', 9, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugit ullam exercitationem. Voluptatum eveniet facilis exercitationem natus quasi.', '2024-01-21 20:55', 'Et est consequatur laboriosam. Nisi maxime eum fugiat.',
        '2024-03-22 16:53', 'REJECTED', '3',
        '1', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Rerum recusandae ex. Delectus beatae a excepturi quos aliquam.', '2024-03-27 11:22', 'Ipsa placeat alias sit reiciendis delectus odit.',
        '2024-05-19 12:35', 'REJECTED', '3',
        '2', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam dignissimos cumque rerum maxime beatae. Vitae eius aspernatur veritatis.', '2024-03-17 21:49', NULL,
        NULL, 'PENDING', '3',
        '3', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Voluptates occaecati reiciendis quos. At molestias ab laudantium animi voluptate possimus.', '2024-03-31 22:29', 'Soluta dolore cupiditate dolores deserunt. Expedita assumenda temporibus iure dolorem.',
        '2024-04-20 19:13', 'REJECTED', '3',
        '4', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Necessitatibus quibusdam occaecati ex praesentium culpa. Nostrum quo quas nam iste accusamus.', '2024-05-23 08:02', 'Cupiditate exercitationem saepe facilis eos. Veniam nulla repellendus non blanditiis.',
        '2024-05-28 08:12', 'REJECTED', '3',
        '5', 9, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tenetur aliquid nam. Voluptate magnam tempora soluta. Doloremque sit consectetur modi.', '2024-03-13 22:45', NULL,
        NULL, 'PENDING', '3',
        '1', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Natus illum sed unde aspernatur. Placeat fuga minima beatae.', '2024-05-04 22:25', 'Ducimus amet sit exercitationem placeat. Praesentium corrupti culpa harum recusandae.',
        '2024-05-11 15:48', 'APPROVED', '3',
        '2', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Suscipit temporibus quae aspernatur officiis. Exercitationem fugiat tenetur repellat.', '2024-03-05 00:29', NULL,
        NULL, 'PENDING', '3',
        '3', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Aperiam ipsa natus temporibus error nisi est. Totam aliquam ducimus quia officiis quaerat.', '2024-03-15 20:41', 'Dicta vel earum eos molestiae. Ut facere assumenda. Harum optio accusamus similique.',
        '2024-05-27 20:54', 'REJECTED', '3',
        '4', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id asperiores facilis esse optio ex assumenda. Quasi molestias doloribus.', '2024-04-26 20:26', NULL,
        NULL, 'PENDING', '3',
        '5', 9, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Possimus asperiores a quidem. Soluta adipisci incidunt illum cumque.', '2024-04-27 21:43', 'Accusamus quibusdam hic rem nesciunt eos optio. Numquam veritatis repellendus impedit ullam.',
        '2024-04-30 18:45', 'APPROVED', '3',
        '1', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae voluptatem beatae aspernatur impedit reiciendis.', '2024-01-08 06:56', NULL,
        NULL, 'PENDING', '3',
        '2', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Necessitatibus possimus ducimus voluptatem. Blanditiis nostrum quam laboriosam possimus debitis.', '2024-01-06 01:54', 'Consectetur natus iure amet.',
        '2024-03-25 06:46', 'REJECTED', '3',
        '3', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odio ratione fuga occaecati fugiat. Enim iure excepturi corporis accusamus eveniet sint.', '2024-04-19 19:08', 'Ullam labore neque qui ipsum. Error explicabo at ipsam modi cum voluptatum.',
        '2024-05-16 07:51', 'REJECTED', '3',
        '4', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Tempore repellat quos pariatur eius tempora. Ex minima quod. Amet aperiam nobis quae ipsum sit.', '2024-05-29 14:03', 'Voluptas corrupti beatae fuga. Beatae reiciendis alias saepe.
Recusandae nobis esse et fugiat.',
        '2024-05-29 14:47', 'REJECTED', '3',
        '5', 9, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reprehenderit placeat provident vel animi id ad. Beatae aut porro quam. Magnam quia odio alias.', '2024-01-04 15:31', 'Repellendus eveniet totam. Aliquid in ea cum molestias molestiae asperiores.',
        '2024-02-14 11:04', 'APPROVED', '1',
        '1', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Facere quo fugiat a. Voluptas at ullam.', '2024-04-18 16:13', NULL,
        NULL, 'PENDING', '1',
        '2', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Iure ducimus corrupti. Repellendus dignissimos quis ipsam quos alias error.', '2024-03-30 04:57', 'Ullam voluptatum quod soluta. Architecto qui aliquam soluta fugiat.',
        '2024-04-03 19:19', 'REJECTED', '1',
        '3', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quam quasi assumenda harum expedita. Eaque odio dolore corporis amet voluptatibus.', '2024-04-03 05:46', 'Suscipit id ex incidunt. Porro natus praesentium. Ex quis ipsam amet tempora maxime mollitia.',
        '2024-05-23 09:27', 'REJECTED', '1',
        '4', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque perferendis repellat iure. Possimus natus nemo autem quis.', '2024-03-09 09:42', 'Id deserunt explicabo. Neque omnis quae necessitatibus.',
        '2024-05-19 08:08', 'REJECTED', '1',
        '5', 10, 1);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Itaque repellendus omnis laudantium. Tempore odit eum eos.', '2024-02-23 21:44', 'Illum ad porro eum. Eaque ipsum cum.',
        '2024-05-29 03:23', 'REJECTED', '1',
        '1', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dicta aut quibusdam architecto. Corporis numquam eligendi.', '2024-03-13 04:14', 'Sunt veritatis aspernatur minima sequi delectus. Similique recusandae officiis numquam in.',
        '2024-05-18 15:15', 'REJECTED', '1',
        '2', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Culpa error architecto nemo neque sunt vero fuga.', '2024-05-14 00:23', 'Vero beatae asperiores quibusdam recusandae perspiciatis laboriosam. Beatae ducimus officia.',
        '2024-05-23 17:55', 'REJECTED', '1',
        '3', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Delectus ducimus cupiditate molestias exercitationem. Deleniti a vero nam.', '2024-01-15 11:02', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Cumque doloribus voluptate debitis dolores. Quasi earum accusamus in reiciendis culpa tenetur.', '2024-01-02 01:36', 'Ullam enim corrupti sunt corrupti at. Veritatis natus veritatis aperiam.',
        '2024-05-14 17:13', 'REJECTED', '1',
        '5', 10, 2);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam quas eligendi culpa laborum at. Velit vero amet minus quos. Incidunt quae suscipit possimus.', '2024-01-06 01:25', 'Fugit ipsa esse accusamus modi iusto. Vel quaerat reiciendis ab officiis corrupti blanditiis.',
        '2024-02-06 11:16', 'APPROVED', '1',
        '1', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quo possimus sunt. Architecto odio recusandae quisquam molestias non nulla.', '2024-05-07 19:07', NULL,
        NULL, 'PENDING', '1',
        '2', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Debitis id laudantium distinctio nemo placeat. Dolorem accusamus voluptate similique neque.', '2024-03-26 07:29', 'Nemo ullam saepe eaque molestias eaque. Deserunt enim quidem odio hic.',
        '2024-03-29 09:52', 'APPROVED', '1',
        '3', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Neque dicta corrupti. Amet unde ab ducimus sed ipsa.', '2024-01-29 04:05', 'Numquam vitae excepturi fugit similique. Consectetur dolorem aperiam nam tenetur.',
        '2024-04-29 05:32', 'REJECTED', '1',
        '4', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet quam consequatur et. Enim nulla aut cumque voluptate repellat.', '2024-03-13 23:12', 'Magni exercitationem ipsa esse fuga facere ab. Sint neque consequuntur officia animi.',
        '2024-05-06 11:11', 'REJECTED', '1',
        '5', 10, 3);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nostrum qui in laborum repellat. Asperiores qui et veritatis.', '2024-03-18 05:54', 'Ad sapiente odit tempore. Repellat occaecati suscipit asperiores quae perferendis ea quibusdam.',
        '2024-03-23 11:52', 'REJECTED', '1',
        '1', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nemo in delectus velit fugit fuga fugiat. Explicabo doloremque ea labore ut.', '2024-04-13 18:27', 'Harum voluptates delectus reiciendis quidem qui. Fugit alias dolorem similique necessitatibus.',
        '2024-05-11 12:46', 'REJECTED', '1',
        '2', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium quia cupiditate vero aliquid velit. Voluptatum soluta adipisci nihil ipsam.', '2024-03-03 10:21', 'Porro quidem velit sapiente eligendi expedita alias. Velit eligendi nemo beatae ex error provident.',
        '2024-05-22 08:55', 'REJECTED', '1',
        '3', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officiis asperiores suscipit quas reiciendis quis.', '2024-03-26 19:00', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nam placeat dicta corrupti quibusdam iste tempore.', '2024-05-25 21:08', 'Quod libero minima aliquam. Placeat sit ullam harum.',
        '2024-05-29 04:06', 'APPROVED', '1',
        '5', 10, 4);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Officiis voluptate repudiandae architecto cum quidem dolores. Aliquid beatae magni cum.', '2024-01-17 18:24', 'Sint aut necessitatibus error expedita numquam. Illo aliquid odit sint odit.',
        '2024-04-23 14:08', 'REJECTED', '1',
        '1', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quibusdam nobis ratione itaque natus alias. Molestiae autem molestias sed.', '2024-01-11 15:59', 'Perspiciatis assumenda voluptatibus. Non voluptatibus fuga pariatur nulla.',
        '2024-02-18 11:56', 'REJECTED', '1',
        '2', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consectetur voluptate aperiam sequi fugit libero. Earum eius molestiae atque ea placeat.', '2024-02-17 04:49', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ducimus libero hic quia aliquid sequi. Maiores accusantium quidem. Doloribus a occaecati autem.', '2024-02-05 11:51', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsam id cumque itaque quasi beatae tempore. Illum odio atque repellat enim laudantium.', '2024-01-02 05:57', 'Cum quisquam debitis iste amet sed. Deserunt dolores eius quo quam suscipit odio.',
        '2024-02-19 21:32', 'REJECTED', '1',
        '5', 10, 5);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id veritatis voluptates ex. Corrupti quod recusandae vel numquam officiis.', '2024-03-13 11:52', 'Aliquam laudantium eum aspernatur dolores quae.',
        '2024-04-03 13:38', 'REJECTED', '1',
        '1', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Eveniet dicta culpa.
Rerum cum vel libero voluptatem saepe recusandae. Iure dolore provident velit.', '2024-01-17 01:48', NULL,
        NULL, 'PENDING', '1',
        '2', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Repudiandae est laboriosam accusantium.', '2024-03-03 21:59', 'Sit quas excepturi sunt sapiente a. Optio porro perspiciatis molestiae nam.',
        '2024-03-21 10:21', 'APPROVED', '1',
        '3', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Odit ipsum quisquam architecto eaque perferendis laborum.', '2024-01-10 02:34', 'Soluta aperiam necessitatibus error iusto dolor.',
        '2024-03-28 05:22', 'APPROVED', '1',
        '4', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Fugit consequuntur ullam. Quos eligendi ut consequuntur mollitia. Adipisci unde eligendi enim.', '2024-01-01 03:27', 'Ex aperiam culpa. Possimus accusamus minus libero iure. Deserunt sunt ratione libero repellendus.',
        '2024-01-02 14:32', 'APPROVED', '1',
        '5', 10, 6);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dignissimos quos iusto debitis illo perspiciatis qui. Nulla perspiciatis autem eaque voluptates.', '2024-02-20 09:29', 'Voluptatem minus illum porro rem perspiciatis magni est.',
        '2024-03-13 21:33', 'REJECTED', '1',
        '1', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Autem assumenda pariatur ullam. Dolorum sequi minus beatae inventore inventore minima atque.', '2024-03-03 12:27', 'Eos asperiores debitis quam quisquam. Amet animi numquam.',
        '2024-03-26 05:40', 'REJECTED', '1',
        '2', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nobis magnam corporis numquam doloremque. Quis laudantium quod autem vero.', '2024-03-15 14:23', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Nulla provident recusandae vel perspiciatis.', '2024-01-29 10:08', NULL,
        NULL, 'PENDING', '1',
        '4', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ducimus deleniti dolore. Vel voluptates repellat nostrum pariatur sit enim.', '2024-03-13 19:09', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 7);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Quidem ad quis. Explicabo minus eaque illo.', '2024-05-20 14:41', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Id vel laborum vero id asperiores earum. In suscipit molestiae.', '2024-02-03 07:23', 'Corporis ullam expedita sapiente labore rem. Aliquid corrupti facilis iusto hic eveniet qui.',
        '2024-04-11 19:39', 'REJECTED', '1',
        '2', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Omnis praesentium dolores. Vel neque rem porro repellat iusto recusandae.', '2024-03-12 05:44', 'Voluptate sit asperiores hic odio. Ut voluptate maxime excepturi iure.',
        '2024-03-23 05:36', 'APPROVED', '1',
        '3', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Ipsum dolorem nemo libero. Alias mollitia eum inventore corporis aut.', '2024-04-14 10:11', 'Adipisci cupiditate sint dolores eum. Autem blanditiis esse quasi.',
        '2024-04-15 18:33', 'APPROVED', '1',
        '4', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Praesentium sit reiciendis placeat iste est. Tenetur repudiandae sequi exercitationem laudantium.', '2024-01-12 01:33', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 8);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Consequatur quis magni veniam omnis ex quibusdam. Dolore saepe porro.', '2024-02-24 17:57', NULL,
        NULL, 'PENDING', '1',
        '1', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Minima commodi assumenda iure.
Perferendis deleniti totam sunt et. Doloribus minus quidem labore.', '2024-02-28 02:40', 'Odit sunt voluptatibus quia. Nobis inventore quae ut labore commodi. Impedit voluptates minus.',
        '2024-04-01 01:01', 'APPROVED', '1',
        '2', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Molestias rem at.
Dolor corporis labore iste libero cum.', '2024-04-26 04:15', 'Iusto accusamus sapiente quas vel consequuntur quod. Saepe temporibus fuga tenetur placeat quod.',
        '2024-05-22 10:23', 'REJECTED', '1',
        '3', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Maxime nulla aspernatur delectus tempore. Dolor necessitatibus ipsam incidunt nulla ipsum dolor.', '2024-04-26 01:47', 'Id quas aspernatur. Ducimus quas deserunt repellat animi.',
        '2024-05-14 17:20', 'APPROVED', '1',
        '4', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Vitae alias perspiciatis tempora. Quaerat sit vel dolor tenetur cumque.', '2024-02-23 21:45', 'Eum enim est ad aliquid. Quas neque ipsam libero tenetur iusto.',
        '2024-05-24 17:27', 'REJECTED', '1',
        '5', 10, 9);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Reprehenderit nostrum neque. Nostrum eius eius dolorem atque esse. Magnam quisquam voluptatem quod.', '2024-03-01 02:39', 'Dignissimos quae pariatur in magnam magnam. Reiciendis voluptate dolores est dolorum facilis unde.',
        '2024-03-26 00:38', 'REJECTED', '1',
        '1', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Commodi quia debitis nulla cumque voluptatem ea. Amet suscipit temporibus natus.', '2024-01-05 00:56', 'Veniam repellendus omnis. Sequi distinctio pariatur nobis.',
        '2024-01-13 01:52', 'APPROVED', '1',
        '2', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Magnam doloremque ut cum cupiditate omnis veniam. Rerum corporis vero eligendi consequatur earum.', '2024-03-04 00:04', NULL,
        NULL, 'PENDING', '1',
        '3', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Atque doloribus cum animi possimus nobis explicabo sit.', '2024-01-18 01:39', 'Nihil minus animi doloribus sunt soluta vero. Molestiae eius ratione deserunt ratione.',
        '2024-03-18 17:44', 'APPROVED', '1',
        '4', 10, 10);

INSERT INTO fight_inscription_request ( message, request_date, response, response_date, status, club_id,
                                        fight_id, fighter_id, event_id)
VALUES ('Dolore laborum illo excepturi. Odit itaque officiis adipisci qui.', '2024-05-09 17:10', NULL,
        NULL, 'PENDING', '1',
        '5', 10, 10);
