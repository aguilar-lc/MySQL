
## A instrução SELECT é usada para selecionar dados de uma tabela;

# Selecionando todos os dados da Tabela:
SELECT * FROM pessoas;

# Selecionando todos os dados da Tabela por um campo em ordem crescente:
SELECT * FROM pessoas
ORDER BY nomes;

# Selecionando todos os dados da Tabela por um campo em ordem decrescente:
SELECT * FROM pessoas
ORDER BY nomes DESC;

# Selecionando alguns campos da Tabela:
SELECT id, nomes, nacionalidade FROM pessoas;

# Selecionando alguns campos ordenando primeiro com ano e depois com o nome:
SELECT id, nomes, nacionalidade FROM pessoas
ORDER BY id, nomes;

# Filtrando registros específicos da Tabela com operadores:
# operador =
SELECT * FROM pessoas
WHERE nacionalidade = 'Italia';

# operador >=
SELECT * FROM pessoas
WHERE peso >= '60';

# operador <=
SELECT * FROM pessoas
WHERE peso <= '60';

# operador <
SELECT * FROM pessoas
WHERE altura < '1.70';

# operador >
SELECT * FROM pessoas
WHERE altura > '1.70';

# Filtrando registros específicos da Tabela com BETWEEN:
SELECT * FROM pessoas
WHERE peso BETWEEN '60' AND '70';

# Filtrando registros específicos da Tabela com IN e NOT IN:
SELECT * FROM pessoas
WHERE nacionalidade IN ('Brasil', 'Italia');

SELECT * FROM pessoas
WHERE nacionalidade  NOT IN ('Brasil', 'Italia');

# Filtrando registros específicos da Tabela com AND:
SELECT * FROM pessoas
WHERE altura > 1.60 AND nacionalidade = 'Brasil';

# Filtrando registros específicos da Tabela com OR:
SELECT * FROM pessoas
WHERE altura > 1.60 OR nacionalidade = 'Brasil';

# Filtrando registros específicos da Tabela com LIKE:
# selecionar palavra ou letra no início:
SELECT * FROM pessoas
WHERE nomes LIKE 'ma%';

# selecionar palavra ou letra no final:
SELECT * FROM pessoas
WHERE nomes LIKE '%na';

# selecionar palavra ou letra em qualquer local:
SELECT * FROM pessoas
WHERE nomes LIKE '%dr%';

# Filtrando registro de campos específicos da tabela com funções COUNT, MAX, MIN, SUM, AVG, e GROUP BY:
# contar registros com COUNT
SELECT count(*) FROM pessoas
WHERE nacionalidade = 'Brasil';

# mostrar registro máximo com MAX:
SELECT max(peso) FROM pessoas
WHERE nacionalidade = 'Brasil';

# mostrar registro minímo com MIN:
SELECT min(peso) FROM pessoas
WHERE nacionalidade = 'Brasil';

# mostrar a soma dos registros com SUM:
SELECT sum(peso) FROM pessoas
WHERE nacionalidade = 'Brasil';

# mostrar a média dos registros com AVG:
SELECT avg(peso) FROM pessoas
WHERE nacionalidade = 'Brasil';

# Selecinando registros agrupados com GROUP BY:
SELECT nomes FROM PESSOAS
WHERE condição
GROUP BY nomes;