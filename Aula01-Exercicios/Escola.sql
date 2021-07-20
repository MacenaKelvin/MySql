create database db_Escola;

use db_Escola; 
create table tb_Alunos(
RA int,
Nome varchar(255),
Turma varchar(255),
Matéria varchar(255) ,
Média decimal,
primary key (RA)
);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4256, "Julia", "7ºC", "Portugês", 7.5);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4257, "Marta", "7ºA", "Geografia", 7.50);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4258, "Késia", "7ºB", "Inglês", 8.50);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4259, "Lucia", "7ºD", "Portugês", 9.50);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4260, "Fabiana", "7ºA", "Quimica", 10.00);
insert into tb_Alunos(RA, Nome , Turma, Matéria , Média)  values (4261, "Juliana", "7ºB", "Matemática", 2.50);

select * from tb_Alunos where Média < 7;

select * from tb_Alunos where Média > 7; 

update tb_Alunos set Média = 5.00 where RA = 4257;

select * from tb_Alunos;