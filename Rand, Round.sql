ALTER TABLE users 
ADD COLUMN (
	salary decimal(15, 2) NULL
);

desc users;

-- RAND() -> Gera um número aleatório.
-- ROUND() -> Arrondado um número.  Sintaxe:   ROUND(<numero>, <limite de casas decimais>).

SELECT ROUND(RAND() * 1000, 2) AS salary;

-- Gera salários aleatórios para 'users'.
UPDATE users set salary = ROUND(RAND() * 1000, 2);
SELECT * FROM users;

SELECT * FROM users
WHERE salary BETWEEN 200 AND 1000
ORDER BY salary ASC;

