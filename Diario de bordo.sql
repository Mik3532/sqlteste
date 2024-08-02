CREATE DATABASE IF NOT EXISTS projetodiario1;

USE projetodiario1;

CREATE TABLE aluno (
	id int primary key auto_increment,
    ra char(8) not null unique
);

-- DMl
insert into aluno(ra)values('00000001');
insert into aluno(ra)values('00000002');
insert into aluno(ra)values('00000003');
insert into aluno(ra)values('00000004');
insert into aluno(ra)values('00000005');
insert into aluno(ra)values('00000006');
insert into aluno(ra)values('00000007');
insert into aluno(ra)values('00000008');
insert into aluno(ra)values('00000009');
insert into aluno(ra)values('00000010');
insert into aluno(ra)values('00000011');
insert into aluno(ra)values('00000012');
insert into aluno(ra)values('00000013');
insert into aluno(ra)values('00000014');
insert into aluno(ra)values('00000015');
insert into aluno(ra)values('00000016');
insert into aluno(ra)values('00000017');
insert into aluno(ra)values('00000018');
insert into aluno(ra)values('00000019');
insert into aluno(ra)values('00000020');
insert into aluno(ra)values('00000021');
insert into aluno(ra)values('00000022');
insert into aluno(ra)values('00000023');
insert into aluno(ra)values('00000024');
insert into aluno(ra)values('00000025');


-- DNL

select * from aluno;

create table diariobordo (
	id int primary key auto_increment,
    texto text not null,
    datahora datetime not null,
    fk_aluno_id int not null
);

show tables;

alter table diariobordo add constraint FK_diariobordo_2
	foreign key (fk_aluno_id)
    references aluno (id)
    On delete cascade;
    
select * from diariobordo;
select * from aluno;

insert diariobordo (texto,datahora,fk_aluno_id) values ('Aula de banco de dados','2024-08-01 09:16:00','1');

select * from diariobordo;

CREATE TABLE avaliacao (
    id int PRIMARY KEY AUTO_INCREMENT,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int NOT NULL,
    CONSTRAINT FK_avaliacao_aluno FOREIGN KEY (fk_aluno_id) REFERENCES aluno (id) ON DELETE CASCADE
);

select * from avaliacao;

insert into avaliacao (nota1,nota2,nota3,nota4,fk_aluno_id) values ('10','9','8','10','2');
insert into avaliacao (nota1,nota2,nota3,nota4,fk_aluno_id) values ('9','10','7','9','4');
insert into avaliacao (nota1,nota2,nota3,nota4,fk_aluno_id) values ('8','8','7','6','5');
insert into avaliacao (nota1,nota2,nota3,nota4,fk_aluno_id) values ('9','9','7','9','6');
insert into avaliacao (nota1,nota2,nota3,nota4,fk_aluno_id) values ('9','10','5','10','7');

select * from avaliacao;
select * from aluno;


select aluno.id, aluno.ra, avaliacao.nota1, avaliacao.nota2, avaliacao.nota3, avaliacao.nota4 , diariobordo.datahora
from aluno 
join avaliacao
on aluno.id = avaliacao.id
join diariobordo
on aluno.id = diariobordo.id;


ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 20),
ADD CONSTRAINT CHECK (nota2 <= 20),
ADD CONSTRAINT CHECK (nota3 <= 20),
ADD CONSTRAINT CHECK (nota4 <= 20);

show tables;


ALTER TABLE aluno ADD COLUMN Nome VARCHAR(80);
ALTER TABLE aluno ADD COLUMN tempoestudo INT NOT NULL;
ALTER TABLE aluno ADD COLUMN rendafamiliar DECIMAL(10, 2);

describe aluno;

select *  from aluno;

INSERT INTO aluno (ra, Nome, tempoestudo, rendafamiliar) VALUES
('00000026', 'Marcelo Silva', 11, 3100.00),
('00000027', 'Elaine Santos', 10, 2900.00),
('00000028', 'Roberto Souza', 8, 2800.00),
('00000029', 'Tatiana Lima', 7, 2500.00),
('00000030', 'Gustavo Oliveira', 12, 3200.00),
('00000031', 'Natália Rocha', 9, 2700.00),
('00000032', 'Thiago Ramos', 11, 2900.00),
('00000033', 'Cláudia Ribeiro', 10, 2500.00),
('00000034', 'Renato Martins', 8, 2700.00),
('00000035', 'Vanessa Nogueira', 7, 2300.00),
('00000036', 'Daniel Barbosa', 12, 3100.00),
('00000037', 'Simone Pereira', 9, 2900.00),
('00000038', 'Alex Cardoso', 10, 3000.00),
('00000039', 'Marcos Souza', 8, 2800.00),
('00000040', 'Renata Almeida', 7, 2500.00),
('00000041', 'Bruna Vieira', 12, 3200.00),
('00000042', 'César Mendes', 11, 2700.00),
('00000043', 'Denise Farias', 10, 2900.00),
('00000044', 'Fábio Lima', 8, 2400.00),
('00000045', 'Evelyn Ferreira', 7, 2600.00),
('00000046', 'Luiz Costa', 9, 2500.00),
('00000047', 'Cristina Oliveira', 12, 3000.00),
('00000048', 'Guilherme Gonçalves', 11, 3100.00),
('00000049', 'Priscila Silva', 10, 2900.00),
('00000050', 'Otávio Santos', 8, 2800.00),
('00000051', 'Alessandra Monteiro', 10, 2600.00),
('00000052', 'Roberto Azevedo', 11, 2700.00),
('00000053', 'Carolina Dias', 12, 2800.00),
('00000054', 'Sérgio Lopes', 9, 2900.00),
('00000055', 'Fernanda Melo', 8, 3000.00),
('00000056', 'Rogério Batista', 7, 3100.00),
('00000057', 'Adriana Teixeira', 10, 3200.00),
('00000058', 'Paula Castro', 11, 3300.00),
('00000059', 'Vinícius Neves', 12, 3400.00),
('00000060', 'Helena Correia', 9, 3500.00),
('00000061', 'Bruno Silva', 8, 3600.00),
('00000062', 'Mariana Moreira', 7, 3700.00),
('00000063', 'Anderson Rodrigues', 10, 3800.00),
('00000064', 'Patrícia Fernandes', 11, 3900.00),
('00000065', 'Thiago Martins', 12, 4000.00),
('00000066', 'Viviane Souza', 9, 4100.00),
('00000067', 'Cássio Oliveira', 8, 4200.00),
('00000068', 'Aline Almeida', 7, 4300.00),
('00000069', 'Fernando Costa', 10, 4400.00),
('00000070', 'Sabrina Lima', 11, 4500.00),
('00000071', 'Renato Ribeiro', 12, 4600.00),
('00000072', 'Juliana Santos', 9, 4700.00),
('00000073', 'Gustavo Araújo', 8, 4800.00),
('00000074', 'Camila Pires', 7, 4900.00),
('00000075', 'Daniela Nunes', 10, 5000.00);

SELECT * FROM aluno;