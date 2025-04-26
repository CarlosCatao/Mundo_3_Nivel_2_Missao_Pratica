-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT
  p.descricao AS produto,
  comprador.nome AS comprador,
  o.quantidade_operacao,
  o.preco_unitario_operacao,
  (o.quantidade_operacao * o.preco_unitario_operacao) AS valor_total,
  o.data_operacao
FROM Operacao o
INNER JOIN Produto p ON o.cod_produto = p.cod_produto
INNER JOIN Pessoa comprador ON o.cod_comprador = comprador.cod_pessoa
WHERE o.tipo_operacao = 'V'
ORDER BY o.data_operacao DESC;

