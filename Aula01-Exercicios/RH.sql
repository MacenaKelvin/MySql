create database db_RH;

use db_RH; 
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
setor varchar(255),
salario decimal,
primary key (id)
);

insert into tb_funcionarios(nome, idade, setor, salario)  values ("Roberta", 30, "financeiro", 2500.00);
insert into tb_funcionarios(nome, idade, setor, salario)  values ("Juliana", 16, "MenorAprendiz" , 650.00);
insert into tb_funcionarios(nome, idade, setor, salario)  values ("Caio", 36, "Tesouraria", 2750.00);
insert into tb_funcionarios(nome, idade, setor, salario)  values ("Mariana", 25, "AuxEscritorio", 1800.00);
insert into tb_funcionarios(nome, idade, setor, salario)  values ("Mario", 18, "OfficeBoy", 1200.00);

select * from tb_funcionarios where salario < 2000;

select * from tb_funcionarios where salario > 2000; 

update tb_funcionarios set salario = 6000.00 where id = 1;

select * from tb_funcionarios;
