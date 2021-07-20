create database db_Ecommerce;

use db_Ecommerce; 
create table tb_Produtos(
id bigint auto_increment,
Produto varchar(255),
Preco decimal,
GarantiaFábrica varchar(255),
Peso decimal,
primary key (id)
);

insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Geladeira", 4500.00, "Não Possui", 24.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Fogão", 2500.00, "Possui", 18.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Televisão 32' ", 4600.00, "Possui", 12.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Microondas", 525.00, "Possui", 18.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Notebook", 4800.00, "Não Possui", 16.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("PC Gamer", 8500.00, "Não Possui", 32.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("SmartPhone", 350.00, "Possui", 2.00);
insert into tb_Produtos(Produto, Preco, GarantiaFábrica, Peso)  values ("Mesa", 200.00, "Não Possui", 14.00);


select * from tb_Produtos where Preco < 2000;

select * from tb_Produtos where Preco > 2000; 

update tb_Produtos set Preco = 3000.00 where id = 3;

select * from tb_Produtos;
