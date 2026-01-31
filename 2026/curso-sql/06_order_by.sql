-- ordenar os 10 melhores clientes (possuem mais pontos), 

SELECT idCliente, qtdePontos

FROM clientes

ORDER BY qtdePontos DESC,

LIMIT 15;

-- clientes mais antigos cadastrados que tem twitch e desempata pela quantidade de pontos

SELECT *

FROM clientes

where flTwitch = 1

ORDER BY DtCriacao ASC, QtdePontos DESC;