-- INSERT SELECT -> Insere valores em uma tabela utilizando outra.
USE sql_aulas;

DELETE FROM profiles;

INSERT INTO profiles (bio, `description`, user_id) 
	SELECT concat('Bio de ', users.first_name), concat('Descrição de ', users.first_name), id FROM users;

SELECT * FROM profiles;

SELECT first_name FROM users, (
	SELECT user_id 
	FROM profiles
) p WHERE users.id = p.user_id;

SELECT * FROM users WHERE id = 100;