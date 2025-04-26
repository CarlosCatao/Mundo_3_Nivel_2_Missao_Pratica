-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT
  p.descricao AS produto,
  fornecedor.nome AS fornecedor,
  o.quantidade_operacao,
  o.preco_unitario_operacao,
  (o.quantidade_operacao * o.preco_unitario_operacao) AS valor_total,
  o.data_operacao
FROM Operacao o
INNER JOIN Produto p ON o.cod_produto = p.cod_produto
INNER JOIN Pessoa fornecedor ON o.cod_vendedor = fornecedor.cod_pessoa
WHERE o.tipo_operacao = 'C'
ORDER BY o.data_operacao DESC;
