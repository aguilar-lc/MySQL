
# Inserindo o campo cursopreferido na Tabela pessoas:
ALTER TABLE pessoas ADD COLUMN cursopreferido int;

# Transformando o campo cursopreferido em chave estrangeira na Tabela pessoas:
ALTER TABLE pessoas
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

# Atualizando o campo cursopreferido na Tabela pessoas:
UPDATE pessoas SET cursopreferido = '8' WHERE id = '1';
UPDATE pessoas SET cursopreferido = '1' WHERE id = '2';
UPDATE pessoas SET cursopreferido = '9' WHERE id = '3';
UPDATE pessoas SET cursopreferido = '2' WHERE id = '4';
UPDATE pessoas SET cursopreferido = '5' WHERE id = '5';
UPDATE pessoas SET cursopreferido = '4' WHERE id = '6';
UPDATE pessoas SET cursopreferido = '1' WHERE id = '7';
UPDATE pessoas SET cursopreferido = '10' WHERE id = '8';
UPDATE pessoas SET cursopreferido = '7' WHERE id = '9';
UPDATE pessoas SET cursopreferido = '6' WHERE id = '10';

# Juntando todos os cursos sem filtro com JOIN:
SELECT pessoas.nome, pessoas.cursopreferido, cursos.nome, cursos.ano 
FROM pessoas
JOIN cursos;

# Filtrar os dados com precisa a cláusula ON:
SELECT pessoas.nome, cursos.nome, cursos.ano 
FROM pessoas JOIN cursos
ON cursos.idcurso = pessoas.cursopreferido
ORDER BY pessoas.nome;

# Utilizando apelidos de colunas -> opção para deixar o código mais enxuto:
SELECT p.nome, c.nome, c.ano 
FROM pessoas AS p JOIN cursos AS c 
ON c.idcurso = p.cursopreferido
ORDER BY p.nome;

# Preferência à esquerda
SELECT p.nome, c.nome, c.ano 
FROM pessoas AS p LEFT JOIN cursos AS c
ON c.idcurso = p.cursopreferido;

# Preferência à direita
SELECT p.nome, c.nome, c.ano 
FROM pessoas AS p RIGHT JOIN cursos AS c
ON c.idcurso = p.cursopreferido;

SELECT * FROM pessoas;
SELECT * FROM cursos;