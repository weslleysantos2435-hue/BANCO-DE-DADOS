CREATE DATABASE SGE;
USE SGE;

CREATE TABLE Cursos ( 
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
	nome_curso VARCHAR(50),
	carga_horaria INT,
	disciplinas VARCHAR(75), 
	horarios DATETIME,
	preco DECIMAL(10,2)
);


CREATE TABLE Alunos (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	data_nasc DATE,
	email VARCHAR(50),
	id_curso INT,
	CONSTRAINT fk_alunos_curso
	FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);


CREATE TABLE Professores (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR(50),
	salario DECIMAL(10,2),
	id_curso INT,
	CONSTRAINT fk_professores_curso
	FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);


CREATE TABLE Funcionarios (
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	cargo VARCHAR(50),
	salario DECIMAL(10,2),
	data_admissao DATE
);

/* ===============================
   INSERTS NA TABELA CURSOS
   =============================== */
INSERT INTO Cursos (nome_curso, carga_horaria, disciplinas, horarios, preco)
VALUES
("Engenharia da Computação", 3600, "Algoritmos, Física, Cálculo", '2025-01-10 08:00:00', 3518.10),
("Análise e Desenvolvimento de Sistemas", 2400, "Banco de Dados, Java, Web", '2025-01-10 19:00:00', 2758.00),
("Ciência da Computação", 3000, "Estrutura de Dados, SO, Redes", '2025-01-10 14:00:00', 1800.00);

/* ===============================
   INSERTS NA TABELA ALUNOS
   =============================== */
INSERT INTO Alunos (nome, data_nasc, email, id_curso)
VALUES
("oliveira", '2006-07-21', "wesley@gmail.com", 1),
("Luiz Nascimento", '2005-05-18', "luiz@gmail.com", 2),
("Camila Veloso", '1995-06-23', "camila@gmail.com", 3);

/* ===============================
   INSERTS NA TABELA PROFESSORES
   =============================== */
INSERT INTO Professores (nome, email, salario, id_curso)
VALUES
("Carlos Henrique", "carlos@faculdade.com", 4500.00, 1),
("Ana Paula", "ana@faculdade.com", 4200.00, 2),
("Marcos Silva", "marcos@faculdade.com", 4800.00, 3);


INSERT INTO Funcionarios (nome, cargo, salario, data_admissao)
VALUES
("João Pereira", "Secretário", 2200.00, '2022-03-10'),
("Maria Souza", "Bibliotecária", 2500.00, '2021-08-15'),
("Pedro Santos", "Auxiliar Administrativo", 2000.00, '2023-01-05');

SELECT 
	a.nome AS aluno,
	c.nome_curso
FROM Alunos a
JOIN Cursos c ON a.id_curso = c.id_curso;

/* Professores e cursos */
SELECT 
	p.nome AS professor,
	c.nome_curso
FROM Professores p
JOIN Cursos c ON p.id_curso = c.id_curso;

/* Funcionarios */
SELECT * FROM Funcionarios;

/* Cursos e preços */
SELECT nome_curso, preco FROM Cursos;

/* Professores com salário maior que 4500 */
SELECT nome, salario
FROM Professores
WHERE salario > 4500;
