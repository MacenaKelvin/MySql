create database db_generation_game_online;

use db_generation_game_online;


create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("Mago",true);
insert into tb_categoria (descricao, ativo) values ("Arqueiro",true);
insert into tb_categoria (descricao, ativo) values ("Caçador",true);
insert into tb_categoria (descricao, ativo) values ("Fada",true);
insert into tb_categoria (descricao, ativo) values ("Atirador",true);

select * from tb_categoria;
use db_generation_game_online;
create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
categoria_id bigint,
poder_defesa int not null,
poder_ataque int not null,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Ariah" , 2500, 3600, 1);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Caliu" , 2700, 3100, 3);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Nemesis" , 1500, 600, 2);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Wanda" , 5500, 7.600, 1);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Tempestade" , 12500, 4600, 5);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Lili" , 3500, 8600, 4);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Catastrofe" , 500, 3600,4);
insert into tb_personagem (nome, poder_defesa, poder_ataque, categoria_id) values ( "Jamal" , 2500, 300, 1);
select * from tb_personagem;

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome,tb_personagem.categoria_id 
from tb_personagem inner join tb_categoria on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome, tb_classe.descricao 

from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id and tb_classe.descricao = "Arqueiro";
