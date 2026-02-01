-- quantos clientes diferentes fizeram alguma transação no mês de julho

SELECT COUNT(DISTINCT IdCliente)

FROM transacoes

--aqui não precisa converter pra data, pois apenas compara a string em si
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY Dtcriacao DESC