-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT 
  p.cod_pessoa,
  p.nome AS operador,
  p.tipo_pessoa,
  SUM(o.quantidade_operacao * o.preco_unitario_operacao) AS valor_total_entrada
FROM Operacao o
INNER JOIN Pessoa p ON o.cod_comprador = p.cod_pessoa
WHERE o.tipo_operacao = 'C'
GROUP BY p.cod_pessoa, p.nome, p.tipo_pessoa
ORDER BY valor_total_entrada DESC;

