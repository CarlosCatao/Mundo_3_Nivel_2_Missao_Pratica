-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

-- 1. Ana Souza compra notebook da Beta Comércio
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (2, 10, 1, 1, 3500.00, GETDATE(), 'C');

-- 2. Maria Oliveira compra mouse da Gama Indústria
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (3, 11, 2, 2, 65.90, GETDATE(), 'C');

-- 3. Pedro Lima compra teclado da Gama Indústria
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (6, 11, 3, 1, 250.00, GETDATE(), 'C');

-- 4. Alpha Tech vende headset para João da Silva
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (1, 9, 5, 1, 379.90, GETDATE(), 'V');

-- 5. Empresa XYZ compra monitor da Delta Serviços
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (8, 12, 4, 1, 899.99, GETDATE(), 'C');

-- 6. Carlos Souza compra notebook da Delta Serviços
INSERT INTO Operacao (cod_comprador, cod_vendedor, cod_produto, quantidade_operacao, preco_unitario_operacao, data_operacao, tipo_operacao)
VALUES (4, 12, 1, 1, 3450.00, GETDATE(), 'C');
