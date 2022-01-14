CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	idClasse INT PRIMARY KEY AUTO_INCREMENT,
    personagem varchar(20),
    origem varchar(30),
    ataque decimal,
    defesa decimal
);

INSERT INTO tb_classe(personagem, origem, ataque, defesa)
values("Goblins","Floresta Encantada",500,2000),
("Ogro","Pântano",3000,5000),
("Fadas","Pandora Glow",500,3000),
("Duende","Pandemônio",2000,2250),
("Bruxas","Far Far Away",500,3000);



CREATE TABLE tb_personagem (
	idPersonagem INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    magia varchar(30) NOT NULL,
    habilidadeTec float,
    forca float,
   idClasse int,
    FOREIGN KEY (idClasse) REFERENCES tb_classe(idClasse)
);



INSERT INTO tb_personagem(nome, magia, habilidadeTec, forca, idClasse)
values("Gupi", "Lama Mortal", '5.8', '5.3','1'),
("Fiona", "Soco barulhento", '6.7', '7','2'),
("Tinker","Bye Bye", '5.2', '6','3'),
("Zangado", "Dança da Chuva", '7.3', '8','4'),
("Malévola", "Não olhe no Espelho", '8.5', '8.9','5'),
("Gremlin", "Garras Venenosas", '8.3', '9','1'),
("Hisoka", "Manipulação da mente", '8.9', '9.8','5'),
("Killua", "Mãos Mortais", '8.8', '9.9','3');


SELECT * FROM tb_personagem;
SELECT * FROM tb_classe;


SELECT * FROM tb_classe
WHERE ataque >= 2000;


SELECT * FROM tb_classe 
WHERE defesa >= 1000 and  defesa <= 2000;

SELECT * FROM tb_personagem
WHERE nome like 'm%';


SELECT nome, magia, habilidadeTec, forca
FROM tb_personagem
inner join tb_classe
ON tb_personagem.idClasse = tb_classe.idClasse;


SELECT * FROM tb_personagem
WHERE idClasse = 2;