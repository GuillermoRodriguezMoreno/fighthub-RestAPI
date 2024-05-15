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
                             ('Karate'),
                             ('Judo'),
                             ('Wrestling'),
                             ('Taekwondo'),
                             ('Kung Fu'),
                             ('Capoeira'),
                             ('Krav Maga'),
                             ('Aikido'),
                             ('Hapkido'),
                             ('Sambo'),
                             ('MMA');

-- USER
INSERT INTO user (birth_date, email, password, register_date, user_name, profile_photo_id) VALUES
                        ('1990-01-01', 'admin@example.com', '12345678', NOW(), 'admin', null),
                        ('1994-02-05', 'fighter1@example.com', '12345678', NOW(), 'fighter1', null),
                        ('1995-06-03', 'fighter2@example.com', '12345678', NOW(), 'fighter2', null),
                        ('1994-05-02', 'club1@example.com', '12345678', NOW(), 'club1', null),
                        ('1999-08-01', 'club2@example.com', '12345678', NOW(), 'club2', null);

-- ROLE
INSERT INTO role (role) values
                            ('ADMIN'),
                            ('FIGHTER'),
                            ('CLUB');

-- USER_ROLE
INSERT INTO user_role (user_id, role_id) VALUES
                                             (1, 1),
                                             (2, 2),
                                             (3, 2),
                                             (4, 3),
                                             (5, 3);

-- PHOTO
INSERT INTO photo (entity_type, upload_date, url, user_id) VALUES
                                                               ('User', NOW(), 'admin.jpg', 1),
                                                               ('Fighter', NOW(), 'fighter1.jpg', 2),
                                                               ('Fighter', NOW(), 'fighter2.jpg', 3),
                                                               ('Club', NOW(), 'club1.jpg', 4),
                                                               ('Club', NOW(), 'club2.jpg', 5);

-- RELATIONSHIP WITH USER
UPDATE user set profile_photo_id = 1 where id = 1;
UPDATE user set profile_photo_id = 2 where id = 2;
UPDATE user set profile_photo_id = 3 where id = 3;
UPDATE user set profile_photo_id = 4 where id = 4;
UPDATE user set profile_photo_id = 5 where id = 5;

-- CLUB
INSERT INTO club (city, country, postal_code, state, street, description, name, id, president_id)
VALUES
    ('Málaga', 'España', '29620', 'Andalucia', 'Juan de Pepito', 'Club 1 Description', 'Club1', 4, null),
    ('Almeria', 'España', '29630', 'Andalucia', 'Doña Pepita', 'Club 2 Description', 'Club2', 5, null);

-- FIGHTER
INSERT INTO fighter (active, biography, draws, gender, height, kos,
                     latitude, longitude, losses, name,number_of_fights,
                     weight, wins, wins_in_a_row, id, category_id, club_id)
VALUES
    (true, 'Biography for Fighter 1', 0, 'MALE', 174, 3, '132421', '12312', 2, 'Fighter1',
    8, 78, 6, 3, 2, 1, 4),
    (true, 'Biography for Fighter 2', 0, 'MALE', 174, 0, '132421', '12312', 2, 'Fighter2',
     9, 78, 6, 0, 3, 2, 5);

-- FOLLOW
INSERT INTO follow (follow_date, follower_fighter_id, followed_fighter_id) VALUES
                                                                               (NOW(), 2, 3),
                                                                               (NOW(), 3, 2);

-- FIGHTER_STYLE
INSERT INTO fighter_style (fighter_id, style_id) VALUES
                                                     (2, 1),
                                                     (3, 2),
                                                     (3, 1);

-- FIGHTER_FOLLOW_REQUEST
INSERT INTO fighter_follow_request (request_date, response_date, status, receiver_fighter_id, sender_fighter_id)
VALUES
    (NOW(), NOW(), 'APPROVED', 3, 2),
    (NOW(), NOW(), 'APPROVED', 2, 3);

-- EVENT
INSERT INTO event (city, country, postal_code, state, street, description, end_date, name, open_date, start_date, club_id, photo_id)
VALUES
    ('Málaga', 'España', '29450', 'Andalucia', 'Poligono La vega 9', 'Description of event 1', NOW(), 'Event1', NOW(), NOW(), 4, null),
    ('Cádiz', 'España', '29670', 'Andalucia', 'Playa Macarena 2', 'Description of event 2', NOW(), 'Event2', NOW(), NOW(), 5, null);

-- CLUB_MEMBERSHIP_REQUEST
INSERT INTO club_membership_request (request_date, response_date, status, club_id, fighter_id)
VALUES
    (NOW(), NOW(), 'APROVED', 4, 2),
    (NOW(), NOW(), 'APROVED', 5, 3);

-- CLUB_REVIEW
INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES
    ('Content of clubReview1', 5, NOW(), 4, 2),
    ('Content of clubReview2', 4, NOW(), 5, 3);

-- EVENT_REVIEW
INSERT INTO event_review (content, rating, review_date, event_id, user_id)
VALUES
    ('Content of eventReview1', 3, NOW(), 1, 4),
    ('Content of eventReview2', 5, NOW(), 2, 2);

-- FIGHT
INSERT INTO fight (fight_order, is_ko, is_title_fight, minutes, total, start_time, weight, blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id, winner_id)
VALUES
    (1, false, false, 3, 3, NOW(), 78, 2, 1, 1, 3, 1, null);

-- FIGHT_INSCRIPTION_REQUEST
INSERT INTO fight_inscription_request (message, request_date, response, response_date, status, club_id, fight_id, fighter_id)
VALUES
    ('I would like to fight', NOW(), 'OK', NOW(), 'APPROVED', 4, 1, 2),
    ('I would like to fight', NOW(), 'OK', NOW(), 'APPROVED', 5, 1, 3);











