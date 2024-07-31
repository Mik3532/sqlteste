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
