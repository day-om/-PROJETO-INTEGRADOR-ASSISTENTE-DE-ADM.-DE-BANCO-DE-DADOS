CREATE DATABASE aulas_particulares;
USE aulas_particulares;

CREATE TABLE instrumentos (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45) NOT NULL);

CREATE TABLE pacotes_de_aula (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(200) NOT NULL,
valor DECIMAL (9,2) NOT NULL);

CREATE TABLE alunos (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL,
cpf VARCHAR(45) NOT NULL,
rg VARCHAR(45) NOT NULL,
instrumento_id INT NOT NULL,
pacote_de_aula_id INT NOT NULL,
FOREIGN KEY (instrumento_id) REFERENCES instrumentos (id),
FOREIGN KEY (pacote_de_aula_id ) REFERENCES pacotes_de_aula (id)
);

CREATE TABLE pagamentos (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
data DATE NOT NULL,
aluno_id INT NOT NULL,
FOREIGN KEY (aluno_id ) REFERENCES alunos (id)
);

CREATE TABLE diario_aulas (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
frequencia BIT NOT NULL,
desempenho VARCHAR(400) NOT NULL,
aluno_id INT NOT NULL,
FOREIGN KEY (aluno_id ) REFERENCES alunos (id)
);

CREATE TABLE aulas (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dia VARCHAR(45) NOT NULL,
horario VARCHAR(45) NOT NULL,
aluno_id INT NOT NULL,
FOREIGN KEY (aluno_id ) REFERENCES alunos (id)
);

CREATE TABLE tipos_de_usuarios (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(200) NOT NULL,
horario VARCHAR(45) NOT NULL,
instrumento_id INT,
FOREIGN KEY (instrumento_id ) REFERENCES instrumentos (id)
);

CREATE TABLE cadastro_de_usuarios (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL,
cpf VARCHAR(45) NOT NULL,
rg VARCHAR  (45) NOT NULL,
tipo_usuario_id INT NOT NULL,
FOREIGN KEY (tipo_usuario_id) REFERENCES tipos_de_usuarios (id)
);



