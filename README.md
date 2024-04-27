# Desafio 02 Impacta/Avanade

<h1 align="center"> Projetinho "Curso/Aluno" </h1>
<header>
🌟🚀

 

</header>
<body>
<label>Link do Azure Devops</label>
 <strong>https://dev.azure.com/ImpactaAula01/CursoImpacta/_boards/board/t/CursoImpacta%20Team/Issues</strong>
	
 <hr/>
 <hr/>

 ![image](https://github.com/yuridevnba/Desafio02Impacta/assets/100159089/f4a7c180-eed7-4c1f-a2e0-4efa0ad38c2d)

<hr/>
<hr/>

 <h3>Query do Banco de dados</h3>
 🖥️
 <hr/>
 <h5>
   
 <H3>-------CRIAR O BD -------</H3>  
create database Desafio;

use Desafio;


  <hr/>
  <H3>------CRIAR A TABELA------</H3>

create table Aluno (
	idaluno int primary key identity(1,1),
 
	idade int check (idade>=18),
 
	matricula varchar(20) unique,
 
	nome varchar(30)
	

);
 

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
 <hr/>
 
 <H3>-------INSERIR OS DADOS------</H3>
 
insert into Aluno (idade,matricula,nome) values
(25,'100A','Ana');

insert into Aluno (idade,matricula,nome) values
(28,'102B','Yuri');


insert into tblCurso (nome,idAluno) values
('Biol',1);

insert into tblCurso (nome,idAluno) values
('Biol',2);
 <hr/>
 
 <H3>-------- SELECIONAR DADOS -----</H3>


select * from Aluno;

select * from tblCurso;
 <hr/>

 <H3>------INNER JOIN---------</H3>


SELECT tblCurso.idCurso,tblCurso.nome, Aluno.matricula

FROM tblCurso

INNER JOIN Aluno ON tblCurso.idCurso=Aluno.idaluno;

 <hr/>
</h5>
<hr/>


