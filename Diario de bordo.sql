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


