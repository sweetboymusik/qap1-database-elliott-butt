SELECT 
	last_name,
	address || ', ' || district || ', ' || city AS full_address,
	COUNT(customer_id) AS num_family_members
FROM address
INNER JOIN city 
	ON city.city_id = address.city_id
INNER JOIN customer
	ON customer.address_id = address.address_id
WHERE last_name LIKE 'Bl%'
GROUP BY 
	last_name, 
	full_address
ORDER BY num_family_members DESC;