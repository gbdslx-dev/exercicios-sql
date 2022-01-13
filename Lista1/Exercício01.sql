create database db_RH;

use db_RH;
Create table tb_funcionarios(
	id bigint(5) auto_increment not null,
    nome varchar(20) not null,
    email varchar(40) not null,
    cargo varchar(10) not null,
    salario decimal(10) not null,
    primary key (id)
);
insert into tb_funcionarios(nome, email, cargo, salario)
values ("Gabriela Lima", "gabriela@gabriela.com.br", "DEV-JR II", '2400.00'),
 ("Amelie", "amelie@gabriela.com.br", "DEV-JR I", '1400.00'),
 ("Thomas Mendes", "thomas@thomas.com.br", "DEV 3", '5300.00');

select * from tb_funcionarios where salario >2000;

select * from tb_funcionarios where salario <2000;

UPDATE tb_funcionarios SET
nome = "Jorginho"
WHERE id = 2;

select * from tb_funcionarios

