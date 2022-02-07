----------------------- POVOAMENTO da Base de Dados Cervejaria ------------
USE cervejaria;

----- Povoamento da tabela país
INSERT INTO pais
	(idPais, nome)
	VALUES 
	(1, 'Portugal'),
	(2, 'Espanha'),
	(3, 'França'),
	(4, 'Bélgica'),
	(5, 'Alemanha'),
    (6, 'Áustria'),
	(7, 'Irlanda'),
	(8, 'Itália'),
	(9, 'Suiça'),
    (10, 'Países Baixos'),
    (11, 'Hungria'),
    (12, 'Reino Unido');

----- Povoamento da tabela fornecedor   
INSERT INTO fornecedor
	(idFornecedor, nome, email, telefone, idPais)
    VALUES
    (1, 'Tuga Beer', 'company.tuga@hotmail.com', '252345769', 1), 
    (2, 'France Tastes Distribution', 'comercial@france-tastes.com', '33169816250' , 3),
	(3, 'Brasserie C', 'salesteam@brasseriec.com', '3242660692', 4),
    (4, 'Next Level Brewing', 'beer@nextlevelbrewing.at', '4319744627', 6),
    (5, 'Radeberger Gruppe KG', 'radeberger@guppekg.com', '4906960650' , 5),
    (6, 'Comans Beverages Limited', 'sales@comans.ie', '35314662700', 7),
    (7, 'Cerveza Galicia','galicia.cerveza@gmail.com', '352456489056', 2),
    (8, 'UKPubBeer', 'business.UK@gmail.com', '453985678234', 12),
    (9, 'Beer Factory', 'beer.factory@gmail.com', '545981234567', 10),
    (10, 'Birra Peroni', 'birra.peronin@gmail.com', '345984567124', 8),
    (11, 'Bier Vision', 'beer.vision@gmail.com', '456913456122', 9),
    (12, 'Hungary Beer', 'hungary.beer@gmail,com', '456123457864', 11);

----- Povoamento da tabela funcionario
INSERT INTO funcionario
	(idFuncionario, nome, telefone, funcao)
    VALUES
    (1, 'Ivone Costa', 913456786, 'gerente'),
    (2, 'Bruna Peixoto', 931231231, 'vendedor'),
	(3, 'Gonçalo Marques', 968918919,'vendedor'),
	(4, 'Joana Mota', 934564564, 'vendedor'),
	(5, 'Paulo Faria', 965675675, 'vendedor');

----- Povoamento da tabela cerveja 
INSERT INTO cerveja
	(idCerveja, nome, marca, teorAlcool, tamanho, preco, idFornecedor)
    VALUES
    (1, 'A', 'Letra', 4.6, 33, 3.50, 1),
    (2, 'Luzia In The Sky', 'Musa', 4.5, 25, 2.50, 1),
    (3, 'Amber', 'Sovina', 6, 33, 2.70, 1),
    (4, 'Dublin Porter', 'GUINNESS', 3.80, 50, 3.70, 6),
    (5, 'Porterhouse Yippy' , 'Porterhouse', 5.50 , 50, 4.30, 6),
    (6, 'Weissbbier', 'Erdinger', 5.3, 50, 4.50, 5),
    (7, 'Dunkel', 'Franziskaner', 5, 33, 2.70, 5),
    (8, '1906','Estrela Galicia', 6.5, 33, 3.00, 7),
    (9, 'Triple hop', 'Piraat', 10.5, 33, 4.65, 3),
    (10, 'Saison Dupont', 'Brasserie Dupont', 6.65 , 33,  2.60, 3),
    (11, 'Judas', 'Judas', 8.5, 33, 4.80, 3),
    (12, 'Tremens', 'Delirium', 8.5, 25, 5.50, 3),
    (13,'Castelain Fleur de Houblon', 'Basserie castelain', 6.5, 33, 4.30, 2),
    (14, 'Castelain Grand Cru', 'Basserie castelain', 8.5, 33, 4.15, 2), 
    (15, 'Granit' , 'Hofstetten', 11.5 , 33, 3.20, 4),
    (16, 'Peroni Lager', 'Peroni', 5.1, 75, 3.80, 10),
    (17, 'Schwarzer Kristall', 'Shwarzbier', 6.3, 75, 4.50, 11), 
    (18, 'Red Summer Rain', 'Mad Scientist', 5.2, 75, 5.00, 12), 
    (19, 'La Trappe Quadrupel', 'La Trappe', 10, 33, 3.90, 9), 
    (20, 'Golden Pride', 'Fullers', 8.5, 70, 5.50, 8),
    (21, '1698', 'Shepherd Neame', 6.5, 50, 4.50, 8); 

----- Povoamento da tabela venda
INSERT INTO venda
	(idVenda, tipoPagamento, valor, data, idFuncionario)
    VALUES
    (1, 'multibanco', 14.00, '2021-05-14', 2),
    (2, 'multibanco', 28.50, '2021-06-20', 4),
    (3, 'multibanco', 9.30, '2021-06-20', 3),
    (4, 'dinheiro', 5.20, '2021-07-11', 5),
    (5, 'multibanco', 16.50, '2021-07-12', 2),
    (6, 'dinheiro', 13.90, '2021-06-22', 3),
    (7, 'multibanco', 15.20, '2021-08-03', 4),
    (8, 'multibanco', 9.50, '2021-05-28', 5),
    (9, 'multibanco', 15.70, '2021-07-25', 2),
    (10, 'multibanco', 12.10, '2021-07-12', 4),
    (11, 'dinheiro', 7.85, '2021-06-29', 5),
    (12, 'multibanco', 13.70, '2021-09-03', 3),
    (13, 'dinheiro', 18.80, '2021-09-03', 2),
    (14, 'multibanco', 16.00, '2021-07-12', 4), 
    (15, 'multibanco', 25.15, '2021-08-04', 5),
    (16, 'multibanco', 16.20, '2021-08-04', 3),
    (17, 'multibanco', 16.60, '2021-08-03', 2),
    (18, 'multibanco', 30.15, '2021-06-30', 4),
    (19, 'multibanco', 18.90, '2021-07-14', 2),
    (20, 'multibanco', 25.50, '2021-08-01', 3);

----- Povoamento da tabela cervejaVenda
INSERT INTO cervejaVenda
	(idVenda, idCerveja, preco, quantidade, valor)
    VALUES
    (1, 5, 4.30, 2, 8.60),
    (1, 3, 2.70, 2, 5.40),
    (2, 6, 4.50, 5, 22.50),
    (2, 8, 3, 2, 6.00),
    (3, 9, 4.65, 2, 9.30),
    (4, 18, 5.20, 1, 5.20),
    (5, 20, 5.50, 3, 16.50),
    (6, 11, 4.80, 2, 9.60),
    (6, 13, 4.30, 1, 4.30),
    (7, 16, 3.80, 1, 3.80),
    (7, 8, 3.00, 3, 11.40),
    (8, 21, 4.50, 1, 4.50),
    (8, 2, 2.50, 2, 5.00),
	(9, 1, 3.50, 3, 10.50),
    (9, 2, 2.50, 1, 2.50),
    (9, 3, 2.70, 1, 2.70),
    (10, 19, 3.90, 1, 3.90),
    (10, 17, 4.50, 1, 4.50),
    (10, 4, 3.70, 1, 3.70),
    (11, 15, 3.20, 1, 3.20),
    (11, 9, 4.65, 1, 4.65),
    (12, 14, 4.15, 2, 8.30),
    (12, 7, 2.70, 2, 5.40),
    (13, 10, 2.60, 3, 7.80),
    (13, 12, 5.50, 2, 11.00),
    (14, 2, 2.50, 1, 2.50),
    (14, 6, 4.50, 3, 13.50),
    (15, 9, 4.65, 1, 4.65),
    (15, 1, 3.50, 2, 7.00),
    (15, 6, 4.50, 3, 13.50),
    (16, 3, 2.70, 4, 10.80),
    (16, 7, 2.70, 2, 5.40),
    (17, 4, 3.70, 3, 11.10), 
    (17, 12, 5.50, 1, 5.50),
    (18, 20, 5.50, 3, 16.50),
    (18, 6, 4.50, 2, 9.00),
    (18, 12, 4.65, 1, 4.65),
    (19, 11, 4.80, 2, 9.60),
    (19, 9, 4.65, 2, 9.30),
    (20, 1, 4.50, 3, 13.50),
    (20, 5, 4.30, 1, 4.30),
    (20, 16, 3.80, 1, 3.80),
    (20, 19, 3.90, 1, 3.90);


