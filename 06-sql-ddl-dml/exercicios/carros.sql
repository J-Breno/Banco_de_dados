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

