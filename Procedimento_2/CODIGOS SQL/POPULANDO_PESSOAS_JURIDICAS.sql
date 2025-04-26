-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;


-- Criando uma pessoa juridica
DECLARE @cod_pessoa_juridica1 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_juridica1, 'Empresa XYZ Ltda.', 'Av. B, 456', '1133334444', 'contato@xyz.com','J');

-- Tabela pessoa_juridica
INSERT INTO Pessoa_Juridica (cod_pessoa, cnpj)
VALUES (@cod_pessoa_juridica1, '12345678000199');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_juridica1, 'op2', 'op2');


-- Criando uma pessoa juridica
DECLARE @cod_pessoa_juridica2 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_juridica2, 'Alpha Tech Ltda.', 'Av. Central,1000','1130000001','contato@alphatech.com', 'J');

-- Tabela pessoa_juridica
INSERT INTO Pessoa_Juridica (cod_pessoa, cnpj)
VALUES (@cod_pessoa_juridica2, '10000000000191');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_juridica2, 'op9', 'op9');


-- Criando uma pessoa juridica
DECLARE @cod_pessoa_juridica3 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_juridica3, 'Beta Comércio ME', 'Rua das Lojas, 200', '1130000002', 'vendas@beta.com', 'J');

-- Tabela pessoa_juridica
INSERT INTO Pessoa_Juridica (cod_pessoa, cnpj)
VALUES (@cod_pessoa_juridica3, '20000000000272');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_juridica3, 'op10', 'op10');


-- Criando uma pessoa juridica
DECLARE @cod_pessoa_juridica4 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_juridica4, 'Gama Indústria S.A.', 'Rua Industrial, 300', '1130000003', 'suporte@gama.com', 'J');

-- Tabela pessoa_juridica
INSERT INTO Pessoa_Juridica (cod_pessoa, cnpj)
VALUES (@cod_pessoa_juridica4, '30000000000353');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_juridica4, 'op11', 'op11');


-- Criando uma pessoa juridica
DECLARE @cod_pessoa_juridica5 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_juridica5, 'Delta Serviços LTDA', 'Av. Prestadores, 400', '1130000004', 'contato@delta.com', 'J');

-- Tabela pessoa_juridica
INSERT INTO Pessoa_Juridica (cod_pessoa, cnpj)
VALUES (@cod_pessoa_juridica5, '40000000000434');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_juridica5, 'op12', 'op12');
