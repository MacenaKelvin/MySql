create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Linguagem Javascript", true);
insert into tb_categoria (descricao, ativo) values ("Linguagem Java", true);
insert into tb_categoria (descricao, ativo) values ("Linguagem Python", true);
insert into tb_categoria (descricao, ativo) values ("Word", true);
insert into tb_categoria (descricao, ativo) values (" Linguagem C", true);

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
qthoras int not null,
dtcompra date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript Primeiros Paços", 35.00, 44, '2019-08-01', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Java para Iniciantes", 29.00, 98, '2021-09-06', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Curso de Python em 2 semanas", 189.00, 110, '2021-07-21', 3);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Word para iniciantes", 249.90, 48, '2021-07-21', 4);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Linguagem C aplicada", 249.90, 24, '2018-05-25', 5);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Java Avançado", 69.90, 10, '2020-09-25', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript no mercado de trabalho", 189.90, 17, '2021-01-16', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Phyton básico", 39.90, 13, '2016-12-23', 3);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where produto like "J%";

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Linguagem Java";