
INSERT INTO instrumentos (nome) VALUES 
("violao"),("flauta"),("piano");

INSERT INTO pacotes_de_aula (descricao,valor) VALUES
("2 aulas semanais","160.00"),
("3 aulas semanais","240.00"),
("5 aulas semanais","400.00");

INSERT INTO alunos (nome,data_nascimento,cpf,rg,instrumento_id,pacote_de_aula_id) VALUES
("Maria Clara Oliveira","1998-11-21","042.951.320-80","45.451.353-7",1,1),
("Dayanne Oliveira","1995-05-12","948.775.730-97","25.828.950-8",3,2),
("Caio Marques","1990-03-10","848.725.860-07","15.854.478-5",2,3),
("Bruno Vieira","2009-03-25","722.358.460-25","43.823.996-9",3,2),
("Ana Maria Gomes","2019-06-15","894.353.458-85","41.125.546-9",1,3);

INSERT INTO pagamentos (data, aluno_id) VALUES
("2024-02-15",1),
("2024-01-20",3),
("2024-03-22",4),
("2024-04-05",5),
("2024-05-08",2);

INSERT INTO diario_aulas (frequencia,desempenho,aluno_id) VALUES
(1,"Aprendeu as primeiras noções do instrumento",1),
(1,"Facilidade com a teoria musical",3),
(1,"Aprendeu as primeiras noções do instrumento",2),
(1,"Aprendeu as primeiras notas musicais no instrumento",4),
(1,"Dificulade de manuseio do instrumento",5);

INSERT INTO aulas (dia,horario,aluno_id) VALUES
("Segunda","15h às 16h",2),
("Segunda","14h às 15h",3),
("Terça","15h às 16h",1),
("Quarta","16h às 17h",2),
("Quarta","15h às 16h",2);

INSERT INTO tipos_de_usuarios (descricao,instrumento_id) VALUES
("Professor",1),
("Professor",2),
("Professor",3),
("Administrador",null),
("Gestor",null);

INSERT INTO cadastro_de_usuarios (nome,data_nascimento,cpf,rg,tipo_usuario_id) VALUES
("Carlos Vicente","2000-05-12","044.459.840-51","43.823.996-9",1),
("Maria Vicent","1999-10-20","941.489.700-30","43.530.454-9",3),
("Joana Maria Bernard","1995-08-01","870.303.520-41","22.568.151-1",2),
("Carlos Vicente","2002-08-10","309.201.270-45","17.052.437-1",4),
("Bernard Campos","2005-11-18","197.008.630-00","15.127.239-6",5),
("João Marcos","2007-05-29","001.110.910-63","15.127.239-6",4);

