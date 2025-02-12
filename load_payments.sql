\copy payments (amount, payment_date, purpose) FROM './payments.csv' DELIMITER ',' CSV HEADER;

UPDATE payments
SET request_id = subquery.request_id
FROM (
    SELECT id, CAST((REGEXP_MATCHES(purpose, 'заявка №(\d+)', 'i'))[1] AS INT) AS request_id
    FROM payments
    WHERE purpose ~* 'заявка №\d+'
) AS subquery
WHERE payments.id = subquery.id;
