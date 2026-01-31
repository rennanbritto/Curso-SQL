-- isso não altera nada no banco de dados em si

SELECT * , 
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2,
        -- a função pegou a substring e depois passou para o formato de data

        date( substr(DtCriacao,1,19)) AS data_string,
        
        -- função que pega o dia da semana, onde domingo = 0
        strftime('%w', date( substr(DtCriacao,1,19))) AS dia_semana

FROM clientes