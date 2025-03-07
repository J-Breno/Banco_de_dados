-- DDL
CREATE TABLE tb_cargo(
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	nivel VARCHAR(10),
	salario FLOAT
);

CREATE TABLE tb_departamento(
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	sigla VARCHAR(10)
);

CREATE TABLE tb_funcionario(
	id INT,
	nome VARCHAR(30) NOT NULL,
	data_adm DATE,
	sexo CHAR(1),
	cod_cargo INT NOT NULL,
	cod_depto INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(cod_cargo) REFERENCES tb_cargo(id) ON DELETE RESTRICT,
	FOREIGN KEY(cod_depto) REFERENCES tb_departamento(id) ON DELETE RESTRICT
);

DROP TABLE tb_funcionario;

ALTER TABLE tb_funcionario ADD data_nasc DATE;
ALTER TABLE tb_funcionario ADD contact_email VARCHAR(10) NOT NULL;

ALTER TABLE tb_funcionario DROP COLUMN data_nasc;

ALTER TABLE tb_funcionario RENAME contact_email TO email;
ALTER TABLE tb_funcionario ALTER email TYPE VARCHAR(20);

CREATE TABLE table_example(
	id INT,
	name VARCHAR(40)
);

ALTER TABLE table_example ADD PRIMARY KEY(id);
ALTER TABLE table_example DROP CONSTRAINT table_example_pkey; -- mesmo jeito para chave estrangeira

DROP TABLE table_example;

ALTER TABLE tb_funcionario DROP CONSTRAINT tb_funcionario_cod_cargo_fkey;
ALTER TABLE tb_funcionario ADD FOREIGN KEY(cod_cargo) REFERENCES tb_cargo(id);

-- DML

INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(1, 'Analista de Sistemas', 'JR', 3000.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(2, 'Desenvolvedor', 'JR', 2500.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(3, 'Desenvolvedor', 'Pleno', 5200.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(4, 'Atendente', NULL, 1212.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(5, 'Contador', NULL, 5000.0);

INSERT INTO tb_departamento(id, nome, sigla) VALUES(1, 'Informática', 'INF');
INSERT INTO tb_departamento(id, nome, sigla) VALUES(2, 'Financeiro', 'FIN');
INSERT INTO tb_departamento(id, nome, sigla) VALUES(3, 'Recursos Humanos', 'RH');

ALTER TABLE tb_funcionario DROP email;

INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(1, 'Pedro Nogueira', '2021-03-12', 'M', 1, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(2, 'Maria Silva', '2021-04-22', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(3, 'Rafaela Silveira', '2020-07-05', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(4, 'Ricardo Oliveira', '2019-04-06', 'M', 5, 2);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(5, 'Tamara Junqueira', '2015-11-01', 'F', 3, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(6, 'Janete Rosa', '2021-10-01', 'F', 4, 3);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(7, 'Fernando Silva', '2022-04-02', 'M', 3, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(8, 'Rosando Vieira', '2018-08-07', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(9, 'Leandro Chaves', '2017-05-13', 'M', 5, 2);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES(10, 'João Marques', '2021-03-15', 'M', 3, 1);


UPDATE tb_funcionario SET nome = 'Ricardo Fernandes Oliveira' WHERE id = 4;
UPDATE tb_funcionario SET cod_cargo = 3 WHERE id = 3;

DELETE FROM tb_funcionario WHERE id = 10;

-- CASCADE deleta todos relacionados; RESTRICT não deleta se tiver mais de um