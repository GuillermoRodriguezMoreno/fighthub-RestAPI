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

-- FIGHTER
INSERT INTO fighter (birth_date, email, password, register_date,
                     user_name, profile_photo_id,
                     active, biography, draws, gender, height, kos,
                     latitude, longitude, losses, name,number_of_fights,
                     weight, wins, wins_in_a_row, category_id, club_id)
VALUES
    ('1990-01-01', 'admin@example.com', '12345678', NOW(), 'admin', null, true,
     'Biography for Fighter 1', 0, 'MALE', 174, 3, '132421', '12312', 2, 'Fighter1',
     8, 78, 6, 2, 1, null),
    ('1994-02-05', 'fighter1@example.com', '12345678', NOW(), 'fighter1', null, true,
     'Biography for Fighter 2', 0, 'MALE', 174, 0, '132421', '12312', 2, 'Fighter2',
     9, 78, 6, 3, 2, null),
    ('1996-05-08', 'fighter2@example.com', '12345678', NOW(), 'fighter2', null, true,
     'Biography for Fighter 3', 0, 'MALE', 174, 0, '132421', '12312', 2, 'Fighter3',
     9, 78, 6, 3, 2, null);

-- ROLE
INSERT INTO role (role) values
                            ('ADMIN'),
                            ('FIGHTER'),
                            ('CLUB_ADMIN');

-- FIGHTER_ROLE
INSERT INTO fighter_role (fighter_id, role_id) VALUES
                                             (1, 1),
                                             (2, 2),
                                             (3, 3);

-- PHOTO
INSERT INTO photo (entity_type, upload_date, url, fighter_id) VALUES
                                                               ('Fighter', NOW(), 'admin.jpg', 1),
                                                               ('Fighter', NOW(), 'fighter1.jpg', 2),
                                                               ('Fighter', NOW(), 'fighter2.jpg', 3);

-- RELATIONSHIP WITH FIGHTER
UPDATE fighter set profile_photo_id = 1 where id = 1;
UPDATE fighter set profile_photo_id = 2 where id = 2;
UPDATE fighter set profile_photo_id = 3 where id = 3;

-- CLUB
INSERT INTO club (city, country, postal_code, state, street, phone, description, name, president_id)
VALUES
    ('Málaga', 'España', '29620', 'Andalucia', 'Juan de Pepito', '664345323', 'Club 1 Description', 'Club1', 3),
    ('Almeria', 'España', '29630', 'Andalucia', 'Doña Pepita', '678986545', 'Club 2 Description', 'Club2', null);

-- RELATIONSHIP WITH FIGHTER
UPDATE fighter set club_id = 1 where id = 3;
UPDATE fighter set club_id = 2 where id = 2;

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
    ('Málaga', 'España', '29450', 'Andalucia', 'Poligono La vega 9', 'Description of event 1', NOW(), 'Event1', NOW(), NOW(), 1, null),
    ('Cádiz', 'España', '29670', 'Andalucia', 'Playa Macarena 2', 'Description of event 2', NOW(), 'Event2', NOW(), NOW(), 2, null);

-- CLUB_MEMBERSHIP_REQUEST
INSERT INTO club_membership_request (request_date, response_date, status, club_id, fighter_id)
VALUES
    (NOW(), NOW(), 'APPROVED', 1, 2),
    (NOW(), NOW(), 'APPROVED', 2, 3);

-- CLUB_REVIEW
INSERT INTO club_review (content, rating, review_date, club_id, fighter_id)
VALUES
    ('Content of clubReview1', 5, NOW(), 1, 2),
    ('Content of clubReview2', 4, NOW(), 2, 3);

-- EVENT_REVIEW
INSERT INTO event_review (content, rating, review_date, event_id, fighter_id)
VALUES
    ('Content of eventReview1', 3, NOW(), 1, 3),
    ('Content of eventReview2', 5, NOW(), 2, 2);

-- FIGHT
INSERT INTO fight (fight_order, is_ko, is_title_fight, minutes, total, start_time, weight,
                   blue_corner_fighter_id, category_id, event_id, red_corner_fighter_id, style_id, winner_id)
VALUES
    (1, false, false, 3, 3, NOW(), 78, 2, 1, 1, 3, 1, null);

-- FIGHT_INSCRIPTION_REQUEST
INSERT INTO fight_inscription_request (message, request_date, response, response_date, status, club_id,
                                       fight_id, fighter_id, event_id)
VALUES
    ('I would like to fight', NOW(), 'OK', NOW(), 'APPROVED', 1, 1, 2, 1),
    ('I would like to fight', NOW(), 'OK', NOW(), 'APPROVED', 2, 1, 3, 2);











