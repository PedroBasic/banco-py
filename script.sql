/*
A terceira forma normal (3FN) exige que cada coluna em uma tabela seja dependente apenas da chave primária da tabela, e não de
outras colunas. Isso ajuda a evitar problemas de redundância e inconsistência de dados em relação a informações desnecessárias ou
irrelevantes, e também ajuda a melhorar a eficiência de consultas ao banco de dados.
*/

-- tb_pedidos_itens

CREATE TABLE IF NOT EXISTS tb_pedidos_itens(
	pedido_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	valor_unitario REAL NOT NULL,
	qtd INTEGER NOT NULL,
	subtotal REAL NOT NULL,
	PRIMARY KEY (pedido_id, item_id)
);

INSERT INTO tb_pedidos_itens (pedido_id, item_id, valor_unitario, qtd, subtotal) VALUES
(1, 1, 100, 20, 100 * 20),
(1, 2, 20, 2, 20 * 2),
(2, 3, 50, 3, 50 * 3);

SELECT * FROM tb_pedidos_itens;


CREATE TABLE IF NOT EXISTS tb_itens(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL,
	valor_unitario REAL NOT NULL
);

INSERT INTO tb_itens (nome, valor_unitario) VALUES
("Desodorante", 25.48),
("Perfume: Malbeck", 250.90),
("Escova de Dente Eletrica", 320.50);

ALTER TABLE tb_pedidos_itens RENAME TO tb_pedidos_itens_3fn;

CREATE TABLE IF NOT EXISTS tb_pedidos_itens(	
	pedido_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	qtd INTEGER NOT NULL,
	PRIMARY KEY(pedido_id, item_id)
	FOREIGN KEY(item_id) REFERENCES tb_items(id)
);

-- DROP TABLE tb_pedidos_itens;

INSERT INTO tb_pedidos_itens (pedido_id, item_id, qtd) VALUES
(1, 1, 20),
(1, 2, 2),
(2, 3, 3);

SELECT * FROM tb_pedidos_itens;

SELECT ti.nome, ti.valor_unitario, tpi.qtd, ti.valor_unitario * tpi.qtd as "Subtotal"
FROM tb_itens ti
INNER JOIN tb_pedidos_itens tpi 
ON ti.id = tpi.item_id
ORDER BY subtotal DESC;


