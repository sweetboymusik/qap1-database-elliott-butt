SELECT 
	district,
	COUNT(district) as num_addresses
FROM address
GROUP BY district;