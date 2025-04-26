-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT
  o.id_operacao,
  pc.nome AS nome_comprador,
  pv.nome AS nome_vendedor,
  pr.descricao AS produto,
  o.quantidade_operacao,
  o.preco_unitario_operacao,
  o.data_operacao,
  CASE o.tipo_operacao
    WHEN 'C' THEN 'Compra'
    WHEN 'V' THEN 'Venda'
    ELSE 'Outro'
  END AS tipo_operacao
FROM Operacao o
INNER JOIN Pessoa pc ON o.cod_comprador = pc.cod_pessoa
INNER JOIN Pessoa pv ON o.cod_vendedor = pv.cod_pessoa
INNER JOIN Produto pr ON o.cod_produto = pr.cod_produto
ORDER BY o.data_operacao DESC;
