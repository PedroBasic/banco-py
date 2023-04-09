CREATE TABLE tb_diretores(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL
);

CREATE TABLE tb_atores(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome_ator TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_filmes(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	diretor_id INTEGER NOT NULL,
	nome TEXT NOT NULL,
	ano_de_lancamento INTEGER NOT NULL,
	FOREIGN KEY(diretor_id) REFERENCES tb_diretores(id)
);

CREATE TABLE IF NOT EXISTS tb_atores_filmes(
	autor_id INTEGER NOT NULL,
	filme_id INTEGER NOT NULL,
	PRIMARY KEY(autor_id, filme_id),
	FOREIGN KEY(autor_id) REFERENCES tb_atores(id)
	FOREIGN KEY(filme_id) REFERENCES tb_filmes(id)
);

SELECT * FROM tb_filmes ;

-- PRIMEIRO EXERCICIO DE 2FN

CREATE TABLE IF NOT EXISTS tb_produtos(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL,
	categoria TEXT NOT NULL,
	preco REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_pedidos(
	id INTEGER,
	produto_id INTEGER NOT NULL,
	qtd INTEGER NOT NULL,
	PRIMARY KEY (id, produto_id),
	FOREIGN KEY(produto_id) REFERENCES tb_produtos(id)
);

-- Segundo exercicio 3FN

CREATE TABLE IF NOT EXISTS tb_alunos(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_disciplinas(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_alunos_disciplinas(
	aluno_id INTEGER NOT NULL,
	disciplina_id INTEGER NOT NULL,
	nt1 REAL NOT NULL,
	nt2 REAL NOT NULL,
	nt3 REAL NOT NULL,
	PRIMARY KEY (aluno_id, disciplina_id),
	FOREIGN KEY (aluno_id) REFERENCES tb_alunos(id),
	FOREIGN KEY (disciplina_id) REFERENCES tb_discplinas(id)
);

SELECT * FROM 

