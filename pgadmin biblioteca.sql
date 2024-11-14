CREATE TABLE estudantes(
	matricula SERIAL PRIMARY KEY,
	nome_completo VARCHAR(100) Not NULL,
	data_nascimento DATE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(15)
);

CREATE TABLE  livros(
	codigo SERIAL PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	editora VARCHAR(100) NOT NULL,
	ano INT,
	status VARCHAR(20) default 'disponível' NOT NULL
);

CREATE TABLE emprestimos(
	codigo SERIAL PRIMARY KEY,
	codigo_livro INT NOT NULL REFERENCES livros(codigo), 
	matricula_estudante INT NOT NULL REFERENCES estudantes(matricula),
	data_retirada DATE NOT NULL,
	devolucao BOOLEAN DEFAULT FALSE
);

INSERT INTO livros (titulo, autor, editora, ano, status) VALUES
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'HarperCollins', 1954, 'disponível'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, 'disponível'),
('A Canção de Gelo e Fogo: A Guerra dos Tronos', 'George R.R. Martin', 'Leya', 1996, 'disponível'),
('O Nome do Vento', 'Patrick Rothfuss', 'Arqueiro', 2007, 'disponível'),
('Mistborn: O Império Final', 'Brandon Sanderson', 'LeYa', 2006, 'disponível'),
('Eragon', 'Christopher Paolini', 'Rocco', 2002, 'disponível'),
('As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 'Martins Fontes', 1950, 'disponível'),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 1937, 'disponível'),
('A Roda do Tempo: O Olho do Mundo', 'Robert Jordan', 'Intrínseca', 1990, 'disponível'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, 'disponível');