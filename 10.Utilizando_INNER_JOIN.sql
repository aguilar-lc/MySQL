
# Criando uma Tabela de relacionamento entidades:
CREATE TABLE pessoaassistecurso (
	id INT NOT NULL AUTO_INCREMENT,
    data DATE, 
    idpessoa INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idpessoa) REFERENCES pessoas(id),
    FOREIGN KEY (idcurso) REFERENCES cursos (idcurso)
) DEFAULT CHARSET = utf8;

# Inserindo dados na nova Tabela:
INSERT INTO pessoaassistecurso VALUES
(DEFAULT, '2022-08-11', '1', '7'),
(DEFAULT, '2022-11-12', '3', '10'),
(DEFAULT, '2022-03-21', '9', '8'),
(DEFAULT, '2022-08-22', '10', '5');

SELECT * FROM pessoaassistecurso;

# Juntando as Tabelas relacionadas:
SELECT * FROM pessoas g
JOIN pessoaassistecurso a
ON p.id = a.idpessoa;

SELECT p.nome, idcurso FROM pessoas p
JOIN pessoaassistecurso a
ON p.id = a.idpessoa
ORDER BY p.nome;

# Atualizando os dados de uma terceira Tabela com Join:
SELECT p.nome, c.nome FROM pessoas p
JOIN pessoaassistecurso a
ON p.id = a.idpessoa
JOIN cursos c
ON a.idcurso = c.idcurso
ORDER BY p.nome;