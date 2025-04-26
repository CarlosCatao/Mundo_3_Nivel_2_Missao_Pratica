-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT
  p.descricao AS produto,
  SUM(o.quantidade_operacao) AS quantidade_total,
  SUM(o.quantidade_operacao * o.preco_unitario_operacao) AS valor_total
FROM Operacao o
INNER JOIN Produto p ON o.cod_produto = p.cod_produto
WHERE o.tipo_operacao = 'C'
GROUP BY p.descricao
ORDER BY valor_total DESC;


