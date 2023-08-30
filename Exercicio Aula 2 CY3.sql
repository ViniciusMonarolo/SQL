CREATE DATABASE RecursosHumanos(

USE RecursosHumanos

CREATE TABLE Funcionario (
idFuncionario INT NOT NULL,
nome VARCHAR(50) NULL,
endereco VARCHAR(100) NULL,
cidade VARCHAR(50) NULL,
estado CHAR(2) NULL,
email VARCHAR(50) NULL UNIQUE,
dataNascto DATE NULL,
PRIMARY KEY(idFuncionario)
)
ALTER TABLE Funcionario ADD
salarrio DECIMAL(7,2) NULL,
cargos VARCHAR(2) NULL

INSERT INTO Funcionario
VALUES(
1,
'Vinicius',
'R. Zuferey, 976',
'Jundiaí',
'SP',
'vinico.slaoq@gmail.com',
'2005-07-29',
800.00,
'DV')

INSERT INTO Funcionario
VALUES(2,
'Luiz Roberto', 
'Rua de Sla, 566', 
'Varzea Paulista', 
'SP',
'pimentalandra@gmail.com', 
'2000-07-29', 
3000.00, 
'AD'),
(4, 'Mario do armario', 
'Rua do Cogumelo, 777', 
'Campo Limpo Paulista', 
'SP', 
'marioeluigi@gmail.com', 
'1969-04-24', 
1500, 
'EN')

UPDATE funcionario SET cidade= 'Varzea Paulista' WHERE cidade= 'São Paulo'

SELECT * FROM Funcionario ORDER BY nome ASC

SELECT nome, email FROM Funcionario WHERE cidade= 'Jundiaí'

SELECT DISTINCT cidade FROM Funcionario

--OPERADORES ARITMÉTICOS
-- + - Adição
-- - = Subtração
--/ - Divisão
-- * - MUltiplicação
-- % - Resto da Divisão
SELECT salario, salario * 1.15 AS SalarioDobrado FROM Funcionario

--Operadores Diferenças
SELECT nome, salario, cargos, cidade
FROM Funcionario
WHERE salario >= 2000

-- Operadores Lógicos
/*
AND E
OR OU 
NOT NÃO
*/

SELECT *
FROM Funcionario
WHERE NOT cidade= 'Jundiaí'

SELECT *
FROM Funcionario
WHERE cidade= 'Jundiaí' AND cargos='AD'


-- OPERADORES AUXILIARES
/*
IS NULL => VERIFICAR SE A COLUNA OU CAMPO É VAZIO
BETWEEN => VERIFICAR ENTRE UMA FAIXA DE VALORES
IN => VERIFICA SE UM VALOR EXISTE
LIKE => VERIFICA SE HÁ VALOR SEMELHANTES
*/

SELECT *
FROM Funcionario
WHERE NOT cargos IS NULL

SELECT *
FROM Funcionario
WHERE salario BETWEEN 1000 AND 2000

SELECT * 
FROM Funcionario
WHERE cargos IN('AD', 'SP')

SELECT nome
FROM FUncionario
WHERE nome LIKE '%d%'

INSERT INTO Funcionario
VALUES (5,
'Carlos Dias', 'Av.Lapa,121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31', 5000.00, 'PC' )
INSERT INTO Funcionario
VALUES (6,
'Ana Maria da Cunha', 'Av.São Paulo,388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12', 8000.00, 'TI')
INSERT INTO Funcionario
VALUES (7,
'Cláudia Regina Martins', 'Rua Holanda,98', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04', 10000.00, 'AI')
INSERT INTO Funcionario
VALUES(8,
'Marcela Tatho', 'Rua Bélgica,43', 'Campinas', 'SP', 'marctatho@gmail.com', '1987-11-09', 6000.00, 'PC')
INSERT INTO Funcionario
VALUES(9,
'Jorge Luiz Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05', 5.500, 'TI')
INSERT INTO Funcionario
VALUES(10,
'Ana Paula Camargo', 'Rua Costa e Silva,33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '1991-06-30', 7.650, 'AI')
INSERT INTO Funcionario
VALUES(11,
'Ivo Cunha', 'Av. Raio de Luz,100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11', 3000.00, 'AD')
INSERT INTO Funcionario
VALUES(12,
'Carlos Luís de Souza', 'Rua Nicolau Coelho,22', 'São Paulo', 'SP', 'cls@bol.com.br', '1988-04-30', 2000.00, 'PC')

UPDATE Funcionario SET cidade='Valinhos' WHERE cidade='Itu'

UPDATE Funcionario SET salario=1.100 WHERE cidade='Valinhos'
UPDATE Funcionario SET cargos='AI' WHERE cidade='Valinhos'

UPDATE Funcionario SET salario=1.700 WHERE cidade='Campinas'
UPDATE Funcionario SET cargos='PC' WHERE cidade='Campinas'

UPDATE Funcionario SET salario=750 WHERE cidade='Jundiaí'
UPDATE Funcionario SET cargos='PC' WHERE cidade='Jundiaí'

SELECT nome, cargos FROM Funcionario
SELECT idFuncionario, cargos FROM Funcionario WHERE estado='SP'
DROP idFuncionario 5 FROM Funcionario

SELECT cidade, estado FROM Funcionario WHERE cargos='PC'

SELECT salario, salario * 1.3 AS salario_Acrescimo
from Funcionario

SELECT salario, salario * 0.80 AS salario_Descontado
FROM Funcionario

SELECT nome, salario
FROM Funcionario
WHERE salario >1500

SELECT nome, cidade
FROM Funcionario
WHERE NOT cidade='Valinhos'

SELECT idFuncionario, cidade
FROM Funcionario
WHERE cidade='Valinhos' OR cidade='Campinas'

SELECT idFuncionario, cargos, salario
FROM Funcionario
WHERE NOT cidade='São Paulo' AND salario >=1000

SELECT nome
FROM Funcionario
WHERE cargos IS NULL

SELECT nome, salario
FROM Funcionario
WHERE salario BETWEEN 500 AND 1000

SELECT nome, email
FROM Funcionario
WHERE email LIKE '%hotmail%'

INSERT INTO Funcionario
VALUES(13,
'Angélica da Silva',
'R. Amado Coelho', 'Jundiaí', 'SP', 'angel@hotmail.com', '2009-02-26', 1000, '')

SELECT nome, email
FROM Funcionario
WHERE email LIKE '%.br%'

SELECT nome, email
FROM Funcionario
WHERE email  NOT LIKE '%.com%'

INSERT INTO Funcionario
VALUES(14,
'Renato Garcia',
'R. Av. Doutor da Costa', 'Londrina', 'PR', 'renaitnhogaga@gmail.gov', '1997-05-30', 9.999, '')


SELECT nome, email
FROM Funcionario
WHERE nome LIKE '_r%'



