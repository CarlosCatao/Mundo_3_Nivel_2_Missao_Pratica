-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT 
  p.cod_pessoa,
  p.nome,
  p.tipo_pessoa,
  p.email
FROM Pessoa p
WHERE p.cod_pessoa NOT IN (
  SELECT DISTINCT o.cod_comprador
  FROM Operacao o
  WHERE o.tipo_operacao = 'C'
)
ORDER BY p.nome;
