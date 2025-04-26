-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT 
  p.cod_produto,
  p.descricao AS produto,
  SUM(o.quantidade_operacao * o.preco_unitario_operacao) / SUM(o.quantidade_operacao) AS preco_medio_ponderado
FROM Operacao o
INNER JOIN Produto p ON o.cod_produto = p.cod_produto
WHERE o.tipo_operacao = 'V'
GROUP BY p.cod_produto, p.descricao
ORDER BY preco_medio_ponderado DESC;

