
## A instrução ALTER TABLE é usada para adicionar, excluir ou modificar colunas em uma Tabela.

# Adicionando um campo no inicio da Tabela:
ALTER TABLE essoas
ADD COLUMN codigo INT FIRST;

# Adicionando um campo após um campo específico:
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

# Adicionando um campo no final da Tabela:
ALTER TABLE pessoas
ADD COLUMN formacao VARCHAR(10);

# Excluindo um campo da Tabela:
ALTER TABLE pessoas
DROP COLUMN codigo;

# Modificando o tipo de dado de um campo da Tabela:
ALTER TABLE pessoas
MODIFY nome varchar(40);

# Renomeando o nome de um campo da Tabela:
ALTER TABLE pessoas
CHANGE nome nomes varchar(30);

# Renomeando o nome da Tabela:
ALTER TABLE pessoas
RENAME TO funcionarios;