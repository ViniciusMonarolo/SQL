USE RecursosHumanos


SELECT nome, salario, salario * 1.30 AS salarioAcrescentado
FROM Funcionario

SELECT nome, salario, salario * 0.80 AS salarioDescontado
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
WHERE cargos= NULL

SELECT nome, salario
FROM Funcionario
WHERE salario BETWEEN 500 AND 1.500

SELECT nome, email
FROM Funcionario
WHERE email LIKE '%hotmail%'

SELECT nome, email
FROM Funcionario
WHERE email LIKE '%.br%'

SELECT nome, email
FROM Funcionario
WHERE email  NOT LIKE '%.com%'

SELECT nome, email
FROM Funcionario
WHERE nome LIKE '_r%'

SELECT nome, DAY(dataNascimento) AS Dia_do_nascimento
FROM Funcionario

SELECT nome, MONTH(dataNascimento) AS Mes_do_nascimento
FROM Funcionario

SELECT nome, YEAR(dataNascimento) AS Ano_do_nascimento
FROM Funcionario

select DAY(dataNasc) as 'Dia', MONTH(dataNasc) as 'Mes', YEAR(dataNasc) as 'Ano' from Funcionarios

SELECT DISTINCT DATE_FORMAT
(dataNascimento, '%M') AS mes_nascimento
FROM Funcionario
ORDER BY mes_nascimento;

SELECT idFuncionario, nome
FROM Funcionario
WHERE YEAR(dataNascimento) = 1987;

SELECT nome, DAY(dataNascimento) AS dia_nascimento
FROM Funcionario
WHERE YEAR(dataNascimento) = 1988 AND MONTH(dataNascimento) = 4;

SELECT nome, DATEADD(MONTH, INTERVAL 2 MONTH(dataNascimento)) AS nova_data_nascimento
FROM Funcionario;

SELECT nome, DATEDIFF(YEAR, dataNascimento, CURRENT_TIMESTAMP) AS idade
FROM funcionario;

SELECT idFuncionario, nome, YEAR(dataNascimento) AS ano_nascimento
FROM Funcionario
WHERE YEAR(dataNascimento) = 1990 AND MONTH(dataNascimento) BETWEEN 3 AND 5;

SELECT nome, YEAR(dataNascimento) AS ano_nascimento
FROM Funcionario
WHERE estado = 'SP';

SELECT nome, dataNascimento
FROM Funcionario
WHERE YEAR(dataNascimento) < 1990;

SELECT DISTINCT cidade, estado
FROM Funcionario
WHERE YEAR(dataNascimento) > 1989;

SELECT *
FROM Funcionario
WHERE YEAR(dataNascimento) IN (1988, 1990);

SELECT nome
FROM Funcionario
WHERE DAY(dataNascimento) = 30;

SELECT nome, salario + PI() AS salario_com_pi
FROM Funcionario

SELECT SQRT(DAY(dataNascimento)) AS raiz_quadrada_dia
FROM Funcionario
WHERE cidade = 'Valinhos';

SELECT LOG(MONTH(dataNascimento)) AS log_mes
FROM Funcionario
WHERE YEAR(dataNascimento) = 1990;

SELECT nome, DAY(dataNascimento) AS dia_nascimento
FROM Funcionario
WHERE POW(DAY(dataNascimento), 3) >= 1000;


SELECT ROUND(salario * 1.155) AS novo_salario
FROM Funcionario
WHERE salario > 1000;

SELECT ABS(1500 - salario) AS valor_absoluto
FROM Funcionario

SELECT idFuncionario, SQRT(idFuncionario) AS raiz_quadrada_id
FROM Funcionario
WHERE dataNascimento < '1989-04-01';

SELECT nome, ROUND(salario * 0.65, 1) AS salario_com_desconto
FROM Funcionario

SELECT LOG(idFuncionario) AS log_id
FROM Funcionario

SELECT idFuncionario, SQRT(idFuncionario) AS ID_Raiz_Quadrada
FROM Funcionario

SELECT idFuncionario, POWER(idFuncionario,2) AS Id_Potencia
FROM Funcionario

SELECT idFuncionario, ABS(-10) AS Id_Absoluto
FROM Funcionario

SELECT nome, UPPER(nome) AS Nome_Caps
FROM Funcionario

SELECT DISTINCT DATE_FORMAT(dataNascimento, '%M') AS mes_nascimento
LENGTH(DATE_FORMAT(dataNascimento, '%M')) AS quantidade_Characteres
FROM Funcionario

SELECT nome, REPLACE(nome, ' ', '-') AS Nome_Com_Traço
FROM Funcionario

SELECT SUBSTRING(nome, 1, 3) AS tres_primeiras_letras,
 SUBSTRING(nome, -3) AS tres_ultimas_letras
FROM Funcionario

SELECT nome, LENGTH(SQRT(nome))
AS Raiz_quadrada_Tamanho_Nome
FROM Funcionario

SELECT DISTINCT SUBSTRING(cidade, 3, 5) AS cidade_parte
FROM Funcionario

SELECT nome, REPLACE(nome, ' ','')
FROM Funcionario

SELECT nome, ASCII(idFuncionario) AS Nome_Por_ASCII
FROM Funcionario
WHERE cidade='Campinas'

SELECT nome, ASCII(SUBSTRING(nome, 1, 1)) AS ASCII_Character
FROM Funcionario
WHERE DAY(dataNascimento) >20

SELECT cidade, SUBSTRING(TRIM(cidade), 1, 4) AS Primeiros_quatro_caracteres
FROM Funcionario

SELECT cidade, SUBSTRING(TRIM(cidade), -6) AS Seis_ultimos_caracteres
FROM Funcionario

SELECT DISTINCT LOWER(cidade) As Cidades_minusculas
FROM Funcionario

SELECT MAX(salario) AS Salario_maximo, MIN(salario) AS Salario_minimo
FROM Funcionario
WHERE estado='SP'

SELECT SUM(salario) AS Salarios_Somados
FROM Funcionario
WHERE nome='Cunha'

SELECT AVG(salario) AS Media_de_salarios
FROM Funcionario
WHERE email LIKE '%yahoo'

SELECT COUNT(*) AS Quantidade_de_Funcionarios
FROM Funcionario
WHERE email NOT LIKE '%br'

SELECT MIN(dataNascimento) AS Menor_Nascimento
FROM Funcionario

SELECT MAX(dataNascimento) AS Maior_Nascimento
FROM Funcionario

SELECT COUNT(*) AS Quantidade_de_Valinhos
FROM Funcionario
WHERE cidade='Valinhos'

SELECT SUM(salario) AS Soma_Campinas
FROM Funcionario
WHERE cidade='Campinas'

SELECT AVG(salario) AS Media_de_SP
FROM Funcionario
WHERE cidade='São Paulo'

SELECT SUM(salario) AS Soma_das_Anas
FROM Funcionario
WHERE nome LIKE '%Ana%'

SELECT COUNT(*) AS Soma_dos_Luis
FROM Funcionario
WHERE nome LIKE'Luis%'

SELECT MIN(salario) AS Menor_Salario, MAX(salario) AS Maior_Salario
FROM Funcionario
WHERE endereco Like 'Av. São Paulo'

SELECT cargos, COUNT(*) AS quantidade
FROM Funcionario
GROUP BY cargos
ORDER BY quantidade

SELECT cargos, COUNT(*) AS Quantidade_por_Cargos
FROM Funcionario
WHERE cargos IS NOT NULL
GROUP BY cargos

SELECT cargos, AVG(salario) AS Media_Salarios_Cargos
FROM Funcionario
GROUP BY cargos

SELECT cargos, SUM(salario) AS soma_salarios
FROM funcionario
GROUP BY cargos
HAVING soma_salarios > 3000.00

SELECT cargos, SUM(salario) AS Soma_SP
FROM Funcionario
WHERE estado='SP'
GROUP BY cargos

UPDATE Funcionario
SET ativo = 1
WHERE cidade IN ('Jundiaí', 'São Paulo')

UPDATE Funcionario
SET ativo = 0
WHERE cidade NOT IN ('Jundiaí', 'São Paulo')

SELECT ativo, SUM(CASE WHEN ativo = 1 THEN 1 ELSE 0 END) AS quantidade_ativos, SUM(CASE WHEN ativo = 0 THEN 1 ELSE 0 END) AS quantidade_nao_ativos
FROM Funcionario
GROUP BY ativo

SELECT cidade, SUM(salario) AS soma_salarios
FROM Funcionario
GROUP BY cidade

SELECT cidade, AVG(salario) AS media_salarios
FROM Funcionario
WHERE salario IS NOT NULL
GROUP BY cidade

SELECT cargos, SUM(salario) AS soma_salarios, AVG(salario) AS media_salarios
FROM Funcionario
GROUP BY cargos
HAVING soma_salarios < 5000

SELECT cidade, cargos, SUM(salario) AS soma_salarios, AVG(salario) AS media_salarios
FROM Funcionario
GROUP BY cidade, cargos

SELECT nome
FROM Funcionario
LIMIT 4

SELECT *
FROM Funcionario
WHERE cidade='Valinhos'
LIMIT 2

SELECT nome, dataNascimento
FROM Funcionario
ORDER BY dataNascimento DESC
LIMIT 1

SELECT cidade, COUNT(*) AS quantidade_funcionarios
FROM Funcionario
WHERE cidade IN ('Cidade1', 'Cidade2')  -- Substitua 'Cidade1' e 'Cidade2' pelas cidades desejadas
GROUP BY cidade

SELECT cargos, COUNT(*) AS quantidade_funcionarios
FROM Funcionario
WHERE cargos IN ('Cargo1', 'Cargo2')  -- Substitua 'Cargo1' e 'Cargo2' pelos cargos desejados
GROUP BY cargos

SELECT *
FROM Funcionario
ORDER BY RAND()
LIMIT (SELECT CEIL(COUNT(*) * 0.30) FROM Funcionario)

SELECT nome, email
FROM Funcionario
LIMIT 6

SELECT idFuncionario, cargos, ativo
FROM Funcionario
ORDER BY RAND()
LIMIT (SELECT CEIL(COUNT(*) * 0.70) FROM Funcionario)

-- Menor salário não nulo de um funcionário
SELECT idFuncionario, salario
FROM Funcionario
WHERE salario IS NOT NULL
ORDER BY salario ASC
LIMIT 1;

-- Maior salário de um funcionário
SELECT nome, salario
FROM Funcionario
ORDER BY salario DESC
LIMIT 1

SELECT *
FROM Funcionario
LIMIT 1

SELECT *
FROM Funcionario
LIMIT (SELECT CEIL(COUNT(*) * 0.90) FROM Funcionario)

SELECT * 
FROM Funcionario
WHERE cidade='São Pualo'
LIMIT 1

SELECT *
FROM FUncionario
LIMIT (SELECT CEIL(COUNT(*) * 0.2) FROM Funcionario)

SELECT *
FROM Funcionario
WHERE YEAR(dataNascimento) = 1988
LIMIT 2
















































