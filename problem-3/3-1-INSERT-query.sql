INSERT INTO address (address, district, postal_code, city_id, phone)
VALUES ('123 First Street', 'British Columbia', 'V0A1E1', 565, '18881234567');

INSERT INTO customer (store_id, first_name, last_name, email, address_id)
VALUES 
	(2, 'George', 'Bluth', 'georgebluthnotoscar@gmail.com', 610),
	(2, 'Michael', 'Bluth', 'michaelbluth@aol.com', 610),
	(2, 'George Michael', 'Bluth', 'michealcera@yahoo.com', 610),
	(2, 'Lucille', 'Bluth', 'lucille1@gmail.com', 610);
	
SELECT *
FROM customer
WHERE last_name = 'Bluth';