create database db_ecommerce;

use db_ecommerce;

Create table tb_produtos(
	id bigint auto_increment not null,
    produto varchar(60) not null,
    marca varchar(40) not null,
    cor varchar(60) not null,
    valor float not null,
    primary key (id)
);

insert into tb_produtos (produto, marca, cor, valor)
values ("Tênis", "NIKE", "ALL BLACK", '320.00'),
("Mochila", "Adidas", "Branco", '110.89'),
("Óculos de sol", "Rayban", "Marrom", '220.59'),
("Escova de cabelo rotatória", "NO-BAD-HAIR-DAY", "Pink", '500.00'),
("Caneca", "DecorMafra", "Verde com azul", '60.00'),
("Air Fryer", "Polishop", "Branco e vermelho", '559.90'),
("Moletom", "Vans", "Amarelo", '225.59'),
("Ventilador", "Mondial", "Lilás", '89.90');

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor < 500;

UPDATE tb_produtos SET
produto = "Garrafa d'água"
where id = 5;

select * from tb_produtos


