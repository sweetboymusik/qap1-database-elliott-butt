SELECT 
	district,
	COUNT(district) as num_addresses
FROM address
GROUP BY district
ORDER BY 
	num_addresses DESC,
	district ASC;