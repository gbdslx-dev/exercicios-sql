create database db_escola;

use db_escola;

Create table tb_estudantes(
	id bigint auto_increment not null,
    nome varchar(30) not null,
    matéria varchar(20) not null,
    professor varchar(30) not null,
    nota float not null,
    primary key (id)
);

insert into tb_estudantes (nome, matéria, professor, nota)
values ("Gabriela", "Banco de dados", "Boaz", '8.7'),
("Evelyn", "Java - POO", "Jeff", '6.1'),
("Edgar", "Lógica", "Jeff", '8.2'),
("Tiago", "MySQL", "Boaz", '5.4'),
("David", "Banco de dados", "Boaz", '6.3'),
("Fernanda", "Java", "Jeff", '4.5'),
("Lucas", "Lógica", "Jeff", '4.6'),
("Armando", "MySQL", "Boaz", '9.8');

select * from tb_estudantes where nota >7;

select * from tb_estudantes where nota <7;

UPDATE tb_estudantes SET
matéria = "Java - POO"
where id = 6


