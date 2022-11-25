-- LIMIT

SELECT * 
FROM users 
LIMIT 10; -- Limita quantas linhas(rows) serão consultadas/retornadas.

-- OFFSET

SELECT *
FROM users
LIMIT 5 OFFSET 2; -- Faz/Retorna a consulta a partir do número definido.
-- Só funciona com o LIMIT.

SELECT *
FROM users
LIMIT 2, 5; -- Faz a mesma coisa que o OFFSET, porém, como um 'shorthand'  -> LIMIT <offset>, <limit>

