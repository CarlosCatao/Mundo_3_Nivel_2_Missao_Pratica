-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

-- Criacao da Tabela Pessoa
CREATE TABLE Pessoa (
  cod_pessoa INT NOT NULL PRIMARY KEY,
  nome VARCHAR(100),
  endereco VARCHAR(150),
  telefone VARCHAR(20),
  email VARCHAR(100),
  tipo_pessoa CHAR(1) -- 'F' = Física, 'J' = Jurídica
);


-- Criacao da Tabela Pessoa Fisica
CREATE TABLE Pessoa_Fisica (
  cod_pessoa INT NOT NULL PRIMARY KEY,
  cpf VARCHAR(11),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);

-- Criacao da Tabela Pessoa Juridica
CREATE TABLE Pessoa_Juridica (
  cod_pessoa INT NOT NULL PRIMARY KEY,
  cnpj VARCHAR(14),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);

-- Criacao da Tabela Usuario
CREATE TABLE Usuario (
  cod_usuario INT NOT NULL PRIMARY KEY,
  login VARCHAR(15) NOT NULL,
  senha VARCHAR(100) NOT NULL,
  FOREIGN KEY (cod_usuario) REFERENCES Pessoa(cod_pessoa)
);

-- Criacao da Tabela Produto
CREATE TABLE Produto (
  cod_produto INT NOT NULL PRIMARY KEY,
  descricao VARCHAR(30),
  quantidade_estoque INT,
  preco_unitario_atual DECIMAL(10,2)
);

-- Criacao da Tabela Operacao
CREATE TABLE Operacao (
  id_operacao INT IDENTITY(1,1) PRIMARY KEY,
  cod_comprador INT NOT NULL,
  cod_vendedor INT NOT NULL,
  cod_produto INT NOT NULL,
  quantidade_operacao INT,
  preco_unitario_operacao DECIMAL(10,2),
  data_operacao DATE,
  tipo_operacao CHAR(1), -- 'C' = compra, 'V' = venda
  FOREIGN KEY (cod_comprador) REFERENCES Pessoa(cod_pessoa),
  FOREIGN KEY (cod_vendedor) REFERENCES Pessoa(cod_pessoa),
  FOREIGN KEY (cod_produto) REFERENCES Produto(cod_produto)
);

-- Criacao da Tabela Pessoa_Produto
CREATE TABLE Pessoa_Produto (
  cod_pessoa INT NOT NULL,
  cod_produto INT NOT NULL,
  PRIMARY KEY (cod_pessoa, cod_produto),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa),
  FOREIGN KEY (cod_produto) REFERENCES Produto(cod_produto)
);

-- Criacao de Indices para melhorar o desempenho/performance
CREATE INDEX ind_usuario_pessoa             ON Usuario (cod_usuario);
CREATE INDEX ind_fisica_pessoa              ON Pessoa_Fisica (cod_pessoa);
CREATE INDEX ind_juridica_pessoa            ON Pessoa_Juridica (cod_pessoa);
CREATE INDEX ind_operacao_comprador         ON Operacao (cod_comprador);
CREATE INDEX ind_operacao_vendedor          ON Operacao (cod_vendedor);
CREATE INDEX ind_operacao_produto           ON Operacao (cod_produto);
CREATE INDEX ind_Pessoa_Produto_cod_pessoa  ON Pessoa_Produto (cod_pessoa);
CREATE INDEX ind_Pessoa_Produto_cod_produto ON Pessoa_Produto (cod_produto);

-- Definicao da SEQUENCE para geracao do codigo de pessoas de forma automatica e incremental
CREATE SEQUENCE seq_pessoa 
  START WITH 1
  INCREMENT BY 1;

