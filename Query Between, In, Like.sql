desc users;
select * from users;

-- BETWEEN 
select * from users
where created_at between '2021-11-23 10:01:26' and '2022-11-23 10:01:28';

select * from users
where created_at between '2021-11-23 10:01:26' and '2022-11-23 10:01:28'
and id between 3 and 100;

-- IN
SELECT * FROM users 
WHERE id IN (23, 80, 70);

