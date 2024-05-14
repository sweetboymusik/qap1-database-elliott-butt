SELECT 
	last_name || ', ' || first_name AS full_name,
	address || ', ' || district || ', ' || city AS full_address
FROM address
INNER JOIN city 
	ON city.city_id = address.city_id
INNER JOIN customer
	ON customer.address_id = address.address_id
ORDER BY last_name;