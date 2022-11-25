INSERT INTO roles (`name`) 
VALUES ('POST'), ('PUT'), ('DELETE'), ('GET');
SELECT * FROM roles;

INSERT INTO users_roles (user_id, role_id) VALUES (2, 4);
SELECT * FROM users_roles;

SELECT * FROM users;

SELECT id,
(SELECT id FROM roles ORDER BY rand() LIMIT 1) as qualquer 
FROM users; 

INSERT INTO users_roles (user_id, role_id) 
SELECT id, (SELECT id
	FROM roles 
	ORDER BY rand()
	LIMIT 1) AS qualquer 
FROM users;


INSERT IGNORE INTO users_roles (user_id, role_id) 
SELECT id, (SELECT id
	FROM roles 
	ORDER BY rand()
	LIMIT 1) AS qualquer 
FROM users
ORDER BY rand() LIMIT 5;

SELECT * FROM users_roles ORDER BY user_id;

DROP TABLE users_roles;