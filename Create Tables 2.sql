-- Criando tabelas

CREATE TABLE `profiles` (
	id int(11) auto_increment not null,
    bio varchar(255),
    `description` varchar(255),
    user_id int(11),
    
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) 
    REFERENCES users(id) 
    ON DELETE CASCADE -- Quando o usuário desta chave estrangeira for deletada, o perfil que corresponde a ele também será deletado, gerando um efeito cascata (CASCADE).
    
);

CREATE TABLE roles (
	id int(11) auto_increment not null,
    `name` varchar(100),
    primary key(id)
);

CREATE TABLE users_roles (
	user_id int(11) not null,
    role_id int(11) not null,
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

desc profiles;

SELECT * FROM profiles;
SHOW TABLES;