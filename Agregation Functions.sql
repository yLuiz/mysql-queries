-- Agregation Functions

-- MAX() -> Pega o maior.
-- MIN() -> Pega o menor.
-- SUM() -> Faz a soma.
-- AVG() -> Faz a média.
-- COUNT() -> Faz a contagem.

-- Others

-- ROUND() -> Tira as casas decimais ou as limita. 
-- 		Ex: round(avg(salary), 2) AS average    # iii.dd (Retorna n inteiros, porém, apenas duas casas decimais).
-- 		Ex: round(avg(salary)) AS average    # iii (Retorna n inteiros, porém, nenhuma casa decimal).

-- Estas funções não recebem apenas colunas como paramêtros, porém, é mais comum que isso aconteça.

SELECT
	max(salary) AS high_salary,  -- max(<column here>)
	min(salary) AS low_salary,  -- min(<column here>)
	sum(salary) AS total,-- sum(<column here>)
    count(salary) AS amount, -- count(<column here>)
    round(avg(salary), 2) AS average -- avg(<column here>)
FROM users
WHERE first_name = 'Carly';
 