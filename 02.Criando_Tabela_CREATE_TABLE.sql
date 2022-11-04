
## A instrução CREATE TABLE é usada para criar uma nova Tabela em um Banco de Dados.

# Criando uma Tabela:
CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
sexo ENUM('M','F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

CREATE TABLE cursos(
idcurso int(11) NOT NULL DEFAULT '0',
nome varchar(30) NOT NULL,
descricao text,
carga int(10) unsigned DEFAULT NULL,
totaulas int(10) unsigned DEFAULT NULL,
ano year(4) DEFAULT '2016',
PRIMARY KEY (idcurso)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Visualizando a descrição da Tabela:
DESCRIBE pessoas;
DESCRIBE cursos;