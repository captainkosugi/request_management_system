INSERT INTO person (name, experience, has_privileges, status)
values
('Иван Иванов', 5, TRUE, 'активный'),
('Петр Петров', 2, FALSE, 'активный'),
('Мария Сидорова', 3, TRUE, 'активный'),
('Алексей Кузнецов', 4, FALSE, 'активный'),
('Елена Михайлова', 6, TRUE, 'активный');

INSERT INTO service (name, description, is_available)
values
('Консультация', 'Юридическая консультация', TRUE),
('Ремонт', 'Ремонт техники', TRUE),
('Обучение', 'Обучение работе ПО', TRUE);

INSERT INTO requests (person_id, service_id, status, created_at, approved_at)
VALUES 
(1, 2, 'одобрена', CURRENT_DATE - INTERVAL '30 days', CURRENT_DATE - INTERVAL '29 days'),
(2, 1, 'одобрена', CURRENT_DATE - INTERVAL '45 days', CURRENT_DATE - INTERVAL '44 days'),
(3, 3, 'одобрена', CURRENT_DATE - INTERVAL '60 days', CURRENT_DATE - INTERVAL '59 days'),
(4, 2, 'одобрена', CURRENT_DATE - INTERVAL '75 days', CURRENT_DATE - INTERVAL '74 days'),
(5, 1, 'одобрена', CURRENT_DATE - INTERVAL '90 days', CURRENT_DATE - INTERVAL '89 days');

INSERT INTO payments (request_id, amount, payment_date, purpose)
VALUES
(1, 500, CURRENT_DATE - INTERVAL '28 days', 'Предоплата, заявка №1'),
(1, 500, CURRENT_DATE - INTERVAL '27 days', 'Окончательная оплата, заявка №1');

INSERT INTO payments (request_id, amount, payment_date, purpose)
VALUES
(2, 500, CURRENT_DATE - INTERVAL '43 days', 'Предоплата, заявка №2'),
(2, 500, CURRENT_DATE - INTERVAL '42 days', 'Окончательная оплата, заявка №2');

INSERT INTO payments (request_id, amount, payment_date, purpose)
VALUES
(3, 500, CURRENT_DATE - INTERVAL '58 days', 'Предоплата, заявка №3'),
(3, 500, CURRENT_DATE - INTERVAL '57 days', 'Окончательная оплата, заявка №3');

INSERT INTO payments (request_id, amount, payment_date, purpose)
VALUES
(4, 500, CURRENT_DATE - INTERVAL '73 days', 'Предоплата, заявка №4');

INSERT INTO payments (request_id, amount, payment_date, purpose)
VALUES
(5, 500, CURRENT_DATE - INTERVAL '88 days', 'Предоплата, заявка №5'),
(5, 500, CURRENT_DATE - INTERVAL '87 days', 'Окончательная оплата, заявка №5');
