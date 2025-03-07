CREATE TABLE tb_categoria (
	id SERIAL PRIMARY KEY,
	descricao TEXT,
	preco_diario FLOAT
);

CREATE TABLE tb_carro (
	id INT PRIMARY KEY,
	modelo VARCHAR(20) NOT NULL,
	placa VARCHAR(7) NOT NULL,
	cor VARCHAR(10),
	ano INT,
	data_aquisicao DATE,
	categoria_id INT NOT NULL,
	sede_id INT NOT NULL,
	FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_sede(
	codigo INT PRIMARY KEY,
	localidade_s FLOAT NOT NULL,
	localidade_w FLOAT NOT NULL
);

ALTER TABLE tb_carro ADD FOREIGN KEY(sede_id) REFERENCES tb_sede(codigo);

CREATE TABLE tb_endereco(
	id SERIAL PRIMARY KEY,
	logradouro VARCHAR(30) NOT NULL,
	numero INT NOT NULL,
	complemento VARCHAR(30) NOT NULL,
	bairro VARCHAR(30) NOT NULL,
	cep INT NOT NULL,
	cidade_id INT NOT NULL,
	FOREIGN KEY(id) REFERENCES tb_sede(codigo)
);

CREATE TABLE tb_cidade(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30),
	estado_id INT NOT NULL
);

CREATE TABLE tb_estado(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30)
)

ALTER TABLE tb_endereco ADD FOREIGN KEY(cidade_id) REFERENCES tb_cidade(id);

ALTER TABLE tb_cidade ADD FOREIGN KEY(estado_id) REFERENCES tb_estado(id);

CREATE TABLE tb_cliente(
	cpf INT PRIMARY KEY,
	nome VARCHAR(40),
	email VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE tb_telefone(
	cpf INT,
	numero INT,
	PRIMARY KEY(cpf, numero),
	FOREIGN KEY(cpf) REFERENCES tb_cliente(cpf)
);

CREATE TABLE tb_locacao(
	id SERIAL PRIMARY KEY,
	instante_locacao TIMESTAMP NOT NULL,
	instante_devolucao TIMESTAMP NOT NULL,
	cliente_id INT NOT NULL,
	carro_id INT NOT NULL,
	local_de_retirada_id INT NOT NULL,
	FOREIGN KEY(cliente_id) REFERENCES tb_cliente(cpf),
	FOREIGN KEY(carro_id) REFERENCES tb_carro(id),
	FOREIGN KEY(local_de_retirada_id) REFERENCES tb_sede(codigo)
);

CREATE TABLE tb_locacao_diaria(
	id SERIAL PRIMARY KEY,
	dias_previstos INT NOT NULL,
	FOREIGN KEY(id) REFERENCES tb_locacao(id)
);

CREATE TABLE tb_locacao_longo_periodo(
	id SERIAL PRIMARY KEY,
	porcentagem_desconto FLOAT NOT NULL,
	FOREIGN KEY(id) REFERENCES tb_locacao(id)
);

INSERT INTO tb_categoria(id, descricao, preco_diario) VALUES(1, 'Básico', 60.0);
INSERT INTO tb_categoria(id, descricao, preco_diario) VALUES(2, 'Luxo', 150.0);


INSERT INTO tb_carro(id, modelo, placa, cor, ano, data_aquisicao, categoria_id, sede_id) VALUES(1, 'Polo', 'HDD9383', 0, 2015, '2015-07-21', 1, 1);
INSERT INTO tb_carro(id, modelo, placa, cor, ano, data_aquisicao, categoria_id, sede_id) VALUES(2, 'Fusion', 'PEH3837', 1, 2016, '2016-12-25', 2, 1);

INSERT INTO tb_sede(codigo, localidade_s, localidade_w) VALUES(1, 18.28272, 23.38474);

INSERT INTO tb_endereco(id, logradouro, numero, complemento, bairro, cep, cidade_id) VALUES(1, 'Rua Flores', 205, 'Bloco C', 'Jardim', 38400282, 1);

INSERT INTO tb_cidade(id, nome, estado_id) VALUES(1, 'São Paulo', 1);

INSERT INTO tb_estado(id, nome) VALUES(1, 'São Paulo');


INSERT INTO tb_cliente(cpf, nome, email) VALUES(93838673, 'Maria Silva', 'maria@gmail.com');
INSERT INTO tb_cliente(cpf, nome, email) VALUES(58236392, 'Joaquim Jorge', 'joaquim@gmail.com');




INSERT INTO tb_telefone(cpf, numero) VALUES(93838673, 37635393);
INSERT INTO tb_telefone(cpf, numero) VALUES(93838673, 37636364);
INSERT INTO tb_telefone(cpf, numero) VALUES(58236392, 37636364);

INSERT INTO tb_locacao(id, instante_locacao, instante_devolucao, cliente_id, carro_id, local_de_retirada_id)
VALUES(1, '2017-09-30 10:34:00', '2017-10-04 11:10:00', 93838673, 1, 1);
INSERT INTO tb_locacao(id, instante_locacao, instante_devolucao, cliente_id, carro_id, local_de_retirada_id)
VALUES(2, '2017-11-11 09:00:00', '2017-11-15 10:00:00', 93838673, 2, 1);
INSERT INTO tb_locacao(id, instante_locacao, instante_devolucao, cliente_id, carro_id, local_de_retirada_id)
VALUES(3, '2017-12-25 00:00:00', '2018-07-31 00:00:00', 58236392, 2, 1);

INSERT INTO tb_locacao_diaria(id, dias_previstos) VALUES(1, 4);
INSERT INTO tb_locacao_diaria(id, dias_previstos) VALUES(2, 4);

INSERT INTO tb_locacao_longo_periodo(id, porcentagem_desconto) VALUES(3, 50.0);


