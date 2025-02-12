INSERT INTO person (name, experience, has_privileges, status)
values
('Иван Иванов', 5, TRUE, 'активный'),
('Петр Петров', 2, FALSE, 'активный');

INSERT INTO service (name, description, is_available)
values
('Консультация', 'Юридическая консультация', TRUE),
('Ремонт', 'Ремонт техники', TRUE);

INSERT INTO requests (person_id, service_id, status, created_at, approved_at)
VALUES 
(1, 2, 'новая', CURRENT_DATE, NULL),
(2, 1, 'одобрена', CURRENT_DATE - INTERVAL '1 day', CURRENT_DATE);
