-- Seleciona a base de dados
use sql_aulas;
-- Mostra as tabelas da base de dadose
show tables;
-- Descreve as colunas da tabela
describe users;
-- Inserir registros na base de dados

create table users (
 id int(11) auto_increment not null,
 first_name varchar(255),
 last_name varchar(255),
 email varchar(255),
 password_hash varchar(255),
 primary key(id)
);

insert into users 
(first_name, last_name, email, password_hash) values
("Helena", "A.", "1@email.com", "3_hash"),
("Joana", "B.", "2@email.com", "4_hash"),
("Rosana", "C.", "3@email.com", "5_hash");

alter table users 
drop column created_at;

alter table users 
add column created_at timestamp default current_timestamp;