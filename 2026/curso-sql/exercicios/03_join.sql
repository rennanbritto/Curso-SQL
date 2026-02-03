-- qual mês tivemos mais lista de presença assinada?

SELECT substr(t1.DtCriacao, 1,7) As ano_mes,
        count(distinct t1.IdTransacao) AS qtd_transacao


FROM transacoes AS t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.Idproduto = t3.Idproduto

WHERE t3.DescNomeProduto = 'Lista de presença'

group by  substr(t1.DtCriacao, 1,7)

order by count(distinct t1.IdTransacao) DESC

LIMIT 3