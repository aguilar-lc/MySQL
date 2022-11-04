
## A instrução DELETE é usada para excluir registros existentes em uma tabela.
## Ao utilizar o DELETE é importante considerar a cláusula WHERE. Caso contrário, todos os registros podem ser deletados!

# Deletando um registro específico na Tabela:
DELETE FROM Pessoas
WHERE id = '10';

# Deletando todos os registros da Tabela:
TRUNCATE TABLE Pessoas;