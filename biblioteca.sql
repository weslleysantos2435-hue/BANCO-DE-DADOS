CREATE DATABASE db_biblioteca;

use db_biblioteca;

create table livros(
	id int auto_increment primary key,
    titulo varchar(100),
    autor  varchar(50),
    ano_publicacao int
    );
    
insert into livros (id, titulo, autor, ano_publicacao)
values
(1,'Dom Casmurro','Machado de Assis',1899),
(2,'O alienista','Machado de Assis',1882),
(3,'Memórias Póstumas de Brás Cubas','Machado de Assis',1881),
(4,'Capitães de Areia','Jorge Amado',1937);    

select * from livros;

select titulo, autor from livros;

select * from livros where autor = 'Machado de Assis'

UPDATE livros
set ano_publicacao = 1938
where titulo = 'Capitães de Areia';

use db_biblioteca;

SET SQL_SAFE_UPDATES=0;

DELETE FROM livros where id=2;
delete from livros;
drop table livros;

CREATE TABLE usuarios (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
idade INT
)

INSERT INTO usuarios (nome, email, idade)
VALUES
('Maria Silva', 'maria@gmail.com', 30),
('João Pereira', 'joao@gmail.com', 25),
('Ana Costa', 'ana@gmail.com', 22);

SELECT * FROM usuarios;



