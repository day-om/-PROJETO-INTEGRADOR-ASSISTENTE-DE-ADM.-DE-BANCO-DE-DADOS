/*01 - Ajuste questões de segurança, incluindo usuários, papéis e permissões.*/
/*DOIS AUXILIARES ADMINISTRATIVOS:*/
CREATE USER "aux_adm01"@"localhost" IDENTIFIED BY "aux123";
CREATE USER "aux_adm02"@"localhost" IDENTIFIED BY "aux123";

CREATE ROLE "aux_adm";

GRANT INSERT, SELECT, UPDATE ON aulas_particulares.* TO "aux_adm";
GRANT "aux_adm" TO "aux_adm01"@"localhost";
GRANT "aux_adm" TO "aux_adm02"@"localhost";

/*TRÊS PROFESSORES:*/
CREATE USER "prof_01"@"localhost" IDENTIFIED BY "prof123";
CREATE USER "prof_02"@"localhost" IDENTIFIED BY "prof123";
CREATE USER "prof_03"@"localhost" IDENTIFIED BY "prof123";

CREATE ROLE "prof";

GRANT SELECT, UPDATE ON aulas_particulares.* TO "prof";
GRANT "prof" TO "prof_01"@"localhost";
GRANT "prof" TO "prof_02"@"localhost";
GRANT "prof" TO "prof_03"@"localhost";

/*GESTOR DA EMPRESA:*/
CREATE USER "gestor_01"@"localhost" IDENTIFIED BY "gestor123";
GRANT ALL PRIVILEGES ON *.* TO "gestor_01"@"localhost";

/*02 - Crie visões no banco de dados para consultas mais frequentes:*/

CREATE VIEW view_aulas AS SELECT a.dia, a.horario, al.nome AS aluno FROM 
aulas a JOIN alunos al ON a.aluno_id = al.id;

CREATE VIEW view_pagamentos AS SELECT p.data, a.nome AS aluno FROM
pagamentos p JOIN alunos a ON p.aluno_id = a.id;

CREATE VIEW view_pacotes AS SELECT * FROM pacotes_de_aula;

CREATE VIEW view_diario AS SELECT d.frequencia, d.desempenho, a.nome AS aluno FROM
diario_aulas d JOIN alunos a ON d.aluno_id = a.id;

/*03 - Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados, selecionando uma funcinalidade que seja adequada para tanto.*/

/*STORED PROCEDURE*/
DELIMITER //
CREATE PROCEDURE historico (IN id_aluno INT)
BEGIN    
    SELECT a.nome AS aluno, a.cpf, i.nome AS instrumento, d.frequencia, d.desempenho FROM
    alunos a JOIN instrumentos i ON a.instrumento_id = i.id JOIN
    diario_aulas d ON d.aluno_id = a.id
    WHERE id_aluno = aluno_id;
END //
DELIMITER ;

/*STORED FUNCTION*/
  DELIMITER //
  CREATE FUNCTION agendamento (id_aluno INT)
  RETURNS VARCHAR(10) DETERMINISTIC 
  BEGIN
	DECLARE funcao_data DATE;
    DECLARE dias INT;
    DECLARE liberacao VARCHAR (10);
    SET funcao_data = (SELECT data FROM pagamentos WHERE aluno_id = id_aluno);
    SET dias = CURDATE() - funcao_data;
    IF dias < 30 THEN
		SET liberacao = 'APROVADA';
	ELSE
		SET liberacao = 'REPROVADA';
	END IF;
        
	RETURN liberacao;
  END //
  DELIMITER ;

/*TRIGGER*/
 DELIMITER //
 CREATE trigger desligamento_alunos BEFORE DELETE ON alunos
 FOR EACH ROW
BEGIN
INSERT INTO alunos_saida (id, nome, data_nascimento, cpf, rg, instrumento_id, pacote_de_aula_id) VALUES
(OLD.id, OLD.nome, OLD.data_nascimento, OLD.cpf, OLD.rg, OLD.instrumento_id, OLD.pacote_de_aula_id);
END //
DELIMITER ;

/*04 - Crie ao menos um índice composto para uma das tabelas.*/

CREATE INDEX idx_usuario ON cadastro_de_usuarios(nome,cpf,tipo_usuario_id);

/*05 - Descreva textualmente uma rotina de administração de banco de dados, prevendo backups, restore e checagem de integridade periódica

O banco de dados contará com um sistema de backup automatizado através da ferramenta SQLBackupAndFTP, que executará um backup do sistema diariamente. 
O backup será salvo em um SSD externo e um outro na nuvem, para se ter mais opções de resgate caso haja problemas com o SSD. Uma vez por mês será feita 
uma checagem da integridade dos dados com análise de movimentação dos usuários. 




