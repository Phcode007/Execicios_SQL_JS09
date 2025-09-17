create database bd_escola;

use bd_escola;

create table estudantes(
 id int primary key auto_increment,
 nome varchar (50) not null,
 turma varchar (50) not null,
 materia varchar (10) not null,
 nota varchar (10.2) not null
);

INSERT INTO estudantes (nome, turma, materia, nota) VALUES
('Ana Silva', '3º Ano A', 'Matemática', '8.5'),
('João Santos', '2º Ano B', 'Português', '7.2'),
('Maria Oliveira', '1º Ano C', 'História', '9.0'),
('Pedro Costa', '3º Ano A', 'Física', '6.8'),
('Lucia Ferreira', '2º Ano B', 'Química', '8.9'),
('Carlos Mendes', '1º Ano C', 'Geografia', '7.5'),
('Beatriz Lima', '3º Ano A', 'Biologia', '9.3'),
('Rafael Souza', '2º Ano B', 'Matemática', '6.4');

select * from estudantes;

select id, nome, turma, materia, nota from estudantes where nota > 7 order by nota desc;

select id, nome, turma, materia, nota from estudantes where nota < 7 order by nota asc;

update estudantes set nota= "8.0" where id =8;

select * from estudantes;