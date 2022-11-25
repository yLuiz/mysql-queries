-- ORDER BY

SELECT id, first_name, email
FROM users
WHERE id > 40
ORDER BY first_name ASC; -- Ordena de forma crescente (Default)

SELECT id, first_name, email
FROM users
WHERE id > 40
ORDER BY first_name DESC; -- Orderna de forma descrescente