CREATE TABLE tb_categoria(
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(30) NOT NULL
);

CREATE TABLE tb_atividade(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	descricao VARCHAR(30),
	preco FLOAT,
	categoria_id INT NOT NULL,
	FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_bloco(
	id SERIAL PRIMARY KEY,
	inicio TIMESTAMP,
	fim TIMESTAMP,
	atividade_id INT NOT NULL,
	FOREIGN KEY(atividade_id) REFERENCES tb_atividade(id)
);

CREATE TABLE tb_participante(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	email VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE tb_participacao(
	participante_id INT PRIMARY KEY,
	atividade_id INT PRIMARY KEY,
	FOREIGN KEY(participante_id) REFERENCES tb_participante(id),
	FOREIGN KEY(atividade_id) REFERENCES tb_atividade(id)
);

INSERT INTO tb_categoria(id, descricao) VALUES(1, 'Curso');
INSERT INTO tb_categoria(id, descricao) VALUES(2, 'Oficina');

INSERT INTO tb_atividade(id, nome, descricao, preco, categoria_id) VALUES(1, 'Curso de HTML', 'Curso HTML', 80.0, 1);
INSERT INTO tb_atividade(id, nome, descricao, preco, categoria_id) VALUES(2, 'Curso de Github','Controle versões', 50.0, 2);

INSERT INTO tb_bloco(id, inicio, fim, atividade_id) VALUES(1, '2017-09-25 08:00:00', '2017-09-25 11:00:00', 1);
INSERT INTO tb_bloco(id, inicio, fim, atividade_id) VALUES(2, '2017-09-25 14:00:00', '2017-09-25 18:00:00', 2);
INSERT INTO tb_bloco(id, inicio, fim, atividade_id) VALUES(3, '2017-09-26 08:00:00', '2017-09-25 11:00:00', 2);

INSERT INTO tb_participante(id, nome, email) VALUES(1, 'José Silva', 'jose@gmail.com');
INSERT INTO tb_participante(id, nome, email) VALUES(2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante(id, nome, email) VALUES(3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante(id, nome, email) VALUES(4, 'Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(1, 1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(1, 2);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(2, 1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(3, 1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(3, 2);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(4, 2);