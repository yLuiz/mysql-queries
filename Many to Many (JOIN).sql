-- INNER JOINs

SELECT u.id AS uid, u.first_name, r.name
FROM users AS u
LEFT JOIN profiles AS p 
ON u.id = p.user_id
INNER JOIN users_roles AS ur ON u.id = ur.user_id
INNER JOIN roles AS r ON ur.role_id = r.id 
ORDER BY uid ASC
;

-- MANY JOINs

SELECT u.id AS uid, u.first_name, r.name
FROM users AS u
LEFT JOIN profiles AS p 
ON u.id = p.user_id
INNER JOIN users_roles AS ur ON u.id = ur.user_id
INNER JOIN roles AS r ON ur.role_id = r.id 
WHERE u.id = 100
ORDER BY uid ASC
LIMIT 0,1
;

-- SELECT COM JOIN

SELECT u.first_name, p.bio FROM users u 
JOIN profiles AS p
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';

SELECT u.first_name, p.bio FROM users u 
LEFT JOIN profiles AS p
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';

-- UPDATE COM JOIN

UPDATE  users AS u 
JOIN profiles AS p
ON p.user_id = u.id
SET p.bio = concat(p.bio, ' Atualizado.')
WHERE u.first_name = 'Katelyn'; 

-- DELETE COM JOIN

DELETE p FROM users u 
JOIN profiles AS p
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';
