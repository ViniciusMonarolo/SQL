USE RecursosHumanos
-- DATA E HORA
/*
Por padr�o as datas est�o no formato
ano, m�s e dia (YMD)
pra alterar pro formato brasileiro
comando:
SET DATEFORMAT DMY
*/
SET LANGUAGE
SET DATEFORMAT DMY
-- PEGAR DATA ATUAL
SELECT GETDATE()
SELECT * FROM Funcionario
--PEGAR DIA
SELECT nome, DAY(dataNascimento) AS Dia_do_nascimento FROM Funcionario
--PEGAR M�S
SELECT nome, MONTH(dataNascimento) AS M�s_do_nascimento FROM Funcionario
--PEGAR ANO
SELECT nome, YEAR(dataNascimento) AS Ano_do_nascimento FROM Funcionario

--DateAdd => ADICIONA UM VALOR NUM�RICO A PARTIR DAQUELA DATA
SELECT dataNascimento, DATEADD(DAY, 5, dataNascimento) AS newData
FROM Funcionario
SELECT dataNascimento, DATEADD(MONTH, 2, dataNascimento) AS newData
FROM Funcionario
SELECT dataNascimento, DATEADD(YEAR, 3, dataNascimento) AS newData
FROM Funcionario


-- DATEDIFF
SELECT nome, DATEDIFF(DAY, dataNascimento, GETDATE())
FROM Funcionario
SELECT nome, DATEDIFF(MONTH, dataNascimento, GETDATE())
FROM Funcionario
SELECT nome, DATEDIFF(YEAR, dataNascimento, GETDATE())
FROM Funcionario

--DATENAME
SELECT nome, dataNascimento, DATENAME(MONTH, dataNascimento) AS NOME_DO_M�S
FROM Funcionario
--TR�S O NOME DO DIA DA SEMANA
SELECT nome, dataNascimento, DATENAME(WEEKDAY, dataNascimento) AS NOME_DO_DIA
FROM Funcionario
--TR�S O NUMERO DA SEMANA NO ANO
SELECT nome, dataNascimento, DATENAME(WEEK, dataNascimento) AS NUMERO_DA_SEMANA
FROM Funcionario


-- MATH
--N�MERO ABSOLUTO
SELECT ABS(-10)
--POT�NCIA 2�
SELECT POWER(2,3)
--SQUAR ROOT = RAIZ QUADRADA
SELECT SQRT(25)
--ARREDONDAMENTO
SELECT ROUND(7.56, 1)
--LOGARITMO
SELECT LOG(4)
--CONSTANTE DE PI
SELECT PI()
SELECT ROUND(LOG(SQRT(9)),2)
SELECT PI()/2
SELECT ROUND(PI(),4)


--ARREDONDANDO N�MEROS PARA INTEIROS
SELECT ROUND(salario,0)
FROM Funcionario


-- STRING
SELECT ASCII('A')
SELECT ASCII('a')
SELECT CHAR(90)
SELECT LEN('amor')
SELECT LEFT('VINICIUS', 2)
SELECT RIGHT('VINICIUS', 3)
SELECT LOWER('VINICIUS')
SELECT UPPER('vinicius')
SELECT SUBSTRING('panela', 2, 4)
SELECT REPLACE('guarda-chuva', 'a','4')
SELECT TRIM('  VINICIUS   ')
SELECT LTRIM('   VINICIUS   ')

-- AGREGA��O
--CONTA QUANTAS LINHA H� NA TABELA
SELECT COUNT(*) 
FROM Funcionario

-- quantos registros �nicos de cidade existem na tabela
SELECT COUNT(DISTINCT cidade)
FROM Funcionario

--SOMA
SELECT SUM(salario)
FROM Funcionario

--M�DIA ARITM�TICA
SELECT AVG(salario)
FROM Funcionario

--M�XIMO
SELECT MAX(salario)
FROM Funcionario

--M�NIMO
SELECT MIN(salario)
FROM Funcionario

--ERRADO
SELECT cidade, COUNT(*) AS Qtd_Funcionario_Cidade
FROM Funcionario
--CERTO
SELECT cidade, COUNT(*) AS Qtd_Funcionario_Cidade
FROM Funcionario
GROUP BY cidade
SELECT * FROM Funcionario

INSERT INTO Funcionario
VALUES(13,
'Diego Ramos',
'R. dos Vencedores,171',
'Jundia�',
'SP',
'didi.ramos@gmail.com',
'1997-03-29',
4.750,
'AL')

--MOSTRAR TODOS OS VALORES QUE S�O ACIMA DE 2
SELECT cidade, COUNT(*) AS Qtd_Funcionario_Cidade
FROM Funcionario
--WHERE COUNT(*) > 2
GROUP BY cidade 
HAVING COUNT(*) > 2 --MEIO CORRETO QUANTO H� AGRUPAMENTO



-- TOP
--MOSTRA TODOS
SELECT * 
FROM fUNCIONARIO

--MOSTRAR APENAS OS 3 PRIMEIROS
SELECT TOP 3 *
FROM Funcionario

SELECT TOP 50 PERCENT * 
FROM Funcionario

SELECT TOP 4 nome, dataNascimento
FROM Funcionario
ORDER BY nome DESC
