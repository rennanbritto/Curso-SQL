SELECT  t2.DescCategoriaProduto,
            count(distinct t1.IdTransacao)
FROM transacao_produto as t1

LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto