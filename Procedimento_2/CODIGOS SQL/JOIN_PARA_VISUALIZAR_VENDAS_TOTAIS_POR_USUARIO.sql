-- Especifica o banco de dados a ser objeto das operacoes
USE Missao_Pratica_DB_Loja;

SELECT 
  p.cod_pessoa,
  p.nome AS operador,
  p.tipo_pessoa,
  SUM(o.quantidade_operacao * o.preco_unitario_operacao) AS valor_total_saida
FROM Operacao o
INNER JOIN Pessoa p ON o.cod_vendedor = p.cod_pessoa
WHERE o.tipo_operacao = 'V'
GROUP BY p.cod_pessoa, p.nome, p.tipo_pessoa
ORDER BY valor_total_saida DESC;


