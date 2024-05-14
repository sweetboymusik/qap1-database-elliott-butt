UPDATE staff
SET 
	last_name = 'Young',
	email = 'ellyoung@gmail.com',
	username = 'ellyoung',
	active = false
WHERE last_name = 'Butt' 
AND first_name = 'Elliott';

SELECT *
FROM staff;