SELECT id, first_name 
FROM users 
ORDER BY  first_name ASC; -- ASC é default no ORDER BY.

-- GROUP BY

SELECT first_name, count(id) AS total
FROM users
GROUP BY first_name
ORDER BY first_name ASC;


SELECT count(*) AS total, id, first_name
FROM users
GROUP BY first_name
ORDER BY total DESC;

SELECT u.first_name, count(*) AS total FROM users u 
JOIN profiles AS p
ON p.user_id = u.id
WHERE u.id IN (18, 58, 19)
GROUP BY first_name
ORDER BY total DESC
LIMIT 5;

SELECT id, first_name FROM users WHERE first_name = 'Xyla';