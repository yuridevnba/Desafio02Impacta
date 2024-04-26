--criar a tabela
create database Desafio;
use Desafio;
 
--criar tabela
create table Aluno (
	idaluno int primary key identity(1,1),
	idade int check (idade>=18),
	matricula varchar(20) unique,
	nome varchar(30)
	

);
 
insert into Aluno (idade,matricula,nome) values
(25,'100A','Ana');
insert into Aluno (idade,matricula,nome) values
(28,'102B','Yuri');
 
select * from Aluno;


CREATE TABLE tblCurso
(
idCurso int identity
Constraint PK_tblCurso_idCurso
Primary Key(idCurso),

nome varchar(30),
idAluno int not null 

Constraint FK_tblCurso_tblAluno
Foreign Key(idAluno)
References Aluno(idAluno),
);

insert into tblCurso (nome,idAluno) values
('Biol',1);

insert into tblCurso (nome,idAluno) values
('Biol',2);


select * from Aluno;
select * from tblCurso;


SELECT tblCurso.idCurso,tblCurso.nome, Aluno.matricula
FROM tblCurso
INNER JOIN Aluno ON tblCurso.idCurso=Aluno.idaluno;





