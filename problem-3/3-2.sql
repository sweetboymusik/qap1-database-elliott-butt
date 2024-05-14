INSERT INTO address (address, district, postal_code, city_id, phone)
VALUES ('987 Second Street', 'British Columbia', 'VCA1E1', 565, '18889382741')
RETURNING address_id;

UPDATE customer
SET address_id = 611
WHERE address_id = 610;

SELECT *
FROM customer
WHERE last_name = 'Bluth';