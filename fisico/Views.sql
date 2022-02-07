-------- Views -----
-- 
----------- CREATE VIEW resumo_vendas --------
-- O sistema deverá ser capaz de listar as quantidades vendidas e o respetivo valor por cerveja
CREATE VIEW resumo_venda AS 

SELECT cerveja.idCerveja, 
	cerveja.nome, 
	cerveja.marca, 
	SUM(cervejaVenda.quantidade) AS 'Quantidades vendidas', 
	SUM(cervejaVenda.valor) AS 'Valor total'
FROM cervejaVenda
INNER JOIN cerveja
	ON cerveja.idCerveja = cervejaVenda.idCerveja
GROUP BY cerveja.idCerveja, cerveja.nome, cerveja.marca
ORDER BY SUM(cervejaVenda.valor) DESC;


SELECT * FROM resumo_venda;


----------- CREATE VIEW cerveja_pais ------------
-- O sistema deverá ser capaz de identificar as cervejas por país.
CREATE VIEW cerveja_pais AS
SELECT pais.nome AS pais, 
	group_concat(CONCAT(cerveja.marca, ' ', cerveja.nome)) AS cervejas 
	FROM cerveja
INNER JOIN fornecedor
	ON fornecedor.idFornecedor = cerveja.idFornecedor
INNER JOIN pais
	ON pais.idPais = fornecedor.idPais
GROUP BY pais.idPais, pais.nome
ORDER BY pais.nome ASC;
 
 --
SELECT * FROM cerveja_pais;
