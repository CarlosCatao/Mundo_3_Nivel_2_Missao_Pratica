-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT 
  p.cod_pessoa,
  p.nome,
  p.endereco,
  p.telefone,
  p.email,
  p.tipo_pessoa,
  pf.cpf
FROM Pessoa p
INNER JOIN Pessoa_Fisica pf ON p.cod_pessoa = pf.cod_pessoa
ORDER BY p.nome;

