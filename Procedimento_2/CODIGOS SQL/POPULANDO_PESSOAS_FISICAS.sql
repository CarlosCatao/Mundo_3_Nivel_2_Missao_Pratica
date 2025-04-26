-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;


-- Criando uma pessoa fisica
DECLARE @cod_pessoa_fisica1 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica1, 'João da Silva', 'Rua A, 123', '11999998888', 'joao@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica1, '12345678901');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica1, 'op1', 'op1');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica2 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica2, 'Ana Souza', 'Rua das Flores, 123', '11988887777', 'ana@gmail.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica2, '12345678901');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica2, 'op3', 'op3');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica3 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica3, 'Maria Oliveira', 'Rua B, 200', '11922220002', 'maria@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica3, '22222222202');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica3, 'op4', 'op4');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica4 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica4, 'Carlos Souza', 'Rua C, 300', '11933330003', 'carlos@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica4, '12345678901');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica4, 'op5', 'op5');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica5 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica5, 'Ana Costa', 'Rua D, 400', '11944440004', 'ana@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica5, '44444444404');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica5, 'op6', 'op6');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica6 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica6, 'Pedro Lima', 'Rua E, 500', '11955550005', 'pedro@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica6, '55555555505');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica6, 'op7', 'op7');


-- Criando Pessoa Física
DECLARE @cod_pessoa_fisica7 INT = NEXT VALUE FOR seq_pessoa;

-- Tabela pessoa
INSERT INTO Pessoa (cod_pessoa, nome, endereco, telefone, email, tipo_pessoa)
VALUES (@cod_pessoa_fisica7, 'Pedro Lima', 'Rua E, 500', '11955550005', 'pedro@email.com', 'F');

-- Tabela pessoa_fisica
INSERT INTO Pessoa_Fisica (cod_pessoa, cpf)
VALUES (@cod_pessoa_fisica7, '55555555505');

-- Tabela usuario
INSERT INTO Usuario (cod_usuario, login, senha)
VALUES (@cod_pessoa_fisica7, 'op8', 'op8');


