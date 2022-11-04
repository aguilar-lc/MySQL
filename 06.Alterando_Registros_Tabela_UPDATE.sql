
# A instrução UPDATE é usada para modificar os registros existentes em uma Tabela.
# Deve-se considerar sempre a utilização da cláusula WHERE na declaração para especificar quais registros devem ser atualizados. 
# Se não for utilizado o WHERE, todos os registros da tabela serão atualizados!

# Atualizando um dado específico na Tabela:
UPDATE pessoas
SET nome = 'Mariana'
WHERE id = '1';

# Atualizando mais de um dado específico na Tabela:
UPDATE pessoas
SET nome = 'Juliana', nacionalidade = 'EUA'
WHERE id = '5';
