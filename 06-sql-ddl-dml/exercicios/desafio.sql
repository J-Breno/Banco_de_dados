CREATE TABLE tb_regiao(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	localidade_s FLOAT,
	localaidade_w FLOAT,
	descricao TEXT NOT NULL
);

CREATE TABLE tb_vinicola(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	fone INT,
	email VARCHAR(40) UNIQUE NOT NULL,
	regiao_id INT NOT NULL,
	FOREIGN KEY(regiao_id) REFERENCES tb_regiao(id)
);

CREATE TABLE tb_tipo_vinho(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL
);

CREATE TABLE tb_vinho(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	tipo_id INT NOT NULL,
	preco FLOAT,
	vinicola_id INT NOT NULL,
	FOREIGN KEY(tipo_id) REFERENCES tb_tipo_vinho(id),
	FOREIGN KEY(vinicola_id) REFERENCES tb_vinicola(id)
);


INSERT INTO tb_regiao(id, nome, localidade_s, localaidade_w, descricao) VALUES(1, 'Vale Central', 33.8088, 70.7644, 'Chile');
INSERT INTO tb_regiao(id, nome, localidade_s, localaidade_w, descricao) VALUES(2, 'Serra Gaúcha', 29.3746, 50.8764, 'Sul do Brasil');

INSERT INTO tb_vinicola(id, nome, fone, email, regiao_id) VALUES(1, 'Santa Rita', null, 'santa@gmail.com', 1);
INSERT INTO tb_vinicola(id, nome, fone, email, regiao_id) VALUES(2, 'Santa Carolina', 3395442, 'carolina@gmail.com', 1);
INSERT INTO tb_vinicola(id, nome, fone, email, regiao_id) VALUES(3, 'garibaldi', 98223344, 'garibaldi@gmail.com', 2);

INSERT INTO tb_tipo_vinho(id, nome) VALUES(1, 'Tinto');
INSERT INTO tb_tipo_vinho(id, nome) VALUES(2, 'Branco');
INSERT INTO tb_tipo_vinho(id, nome) VALUES(3, 'Rose');
INSERT INTO tb_tipo_vinho(id, nome) VALUES(4, 'Bordeaux');

INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(1, 'Amanda', 1, 100.0, 1);
INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(2, 'Belinha', 2, 200.0, 1);
INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(3, 'Camila', 4, 65.0, 2);
INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(4, 'Daniela', 3, 89.0, 2);
INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(5, 'Eduarda', 1, 55.0, 3);
INSERT INTO tb_vinho(id, nome, tipo_id, preco, vinicola_id) VALUES(6, 'Fernanda', 2, 70.0, 3);