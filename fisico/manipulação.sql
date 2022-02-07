-------------- Manipulação de dados da Cervejaria ---------

-- O sistema deverá ser capaz de identificar as cervejas por país.
SELECT 
	pais.nome AS pais,
    group_concat(CONCAT(cerveja.marca, ' ', cerveja.nome)) AS cervejas 
FROM cerveja
JOIN fornecedor
	ON fornecedor.idFornecedor = cerveja.idFornecedor
JOIN pais
	ON pais.idPais = fornecedor.idPais
GROUP BY pais.idPais, pais.nome
ORDER BY pais.nome ASC;

-- O sistema deverá ser capaz de identificar o fornecedor por cerveja.
SELECT 
	cerveja.idCerveja, cerveja.marca, cerveja.nome, fornecedor.nome AS fornecedor
FROM cerveja
JOIN fornecedor
	ON fornecedor.idFornecedor = cerveja.idFornecedor;

-- O sistema deverá ser capaz de identificar o top N de cervejas mais vendidas.
SELECT
	cerveja.idCerveja,
	cerveja.marca,
	cerveja.nome,
    SUM(quantidade) As 'Nr de cervejas'
FROM cervejaVenda
INNER JOIN cerveja
	ON cervejaVenda.idCerveja = cerveja.idCerveja
GROUP BY cerveja.idCerveja, cerveja.marca, cerveja.nome
ORDER BY sum(quantidade) DESC
LIMIT 5;

-- O sistema deverá ser capaz do número as vendas realizadas por funcionário
SELECT funcionario.idFuncionario, funcionario.nome, COUNT(venda.idVenda) AS 'Nr de Vendas'
FROM funcionario
INNER JOIN 	venda
	ON funcionario.idFuncionario = venda.idFuncionario
GROUP BY funcionario.idFuncionario;

--  O sistema deverá ser capaz de identificar o nr de quantidades vendidas por produto.
SELECT
	cerveja.idCerveja,
	cerveja.marca,
	cerveja.nome,
    SUM(quantidade) As 'Nr de cervejas'
FROM cervejaVenda
INNER JOIN cerveja
	ON cervejaVenda.idCerveja = cerveja.idCerveja
GROUP BY cerveja.idCerveja, cerveja.marca, cerveja.nome
ORDER BY sum(quantidade) DESC;


-- O sistema deverá ser capaz de identificar a faturação total por mes e por ano.
SELECT month(data) AS mes, year(data) AS Ano, SUM(valor) AS Valor_total
FROM venda
GROUP BY MONTH(data), YEAR(data);

SELECT * FROM pais;
SELECT * FROM cerveja;
SELECT * FROM fornecedor;
SELECT * FROM cervejaVenda;
SELECT * FROM venda;
SELECT * FROM funcionario;
