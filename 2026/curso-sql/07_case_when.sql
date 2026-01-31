--Intervalos 
--De 0 a 500 -> ponei
--De 501 a 1000 -> ponei premium
--de 1001 a 5000 -> mago aprendiz
--de 5001 a 10000 -> mago mestre
--+ 10001 -> mago supremo

SELECT idCLiente, qtdePontos,
            CASE -- ele faz testes nessa ordem
                WHEN qtdePontos <= 500 THEN 'Ponei' 
                WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
                WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
                WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
                ELSE 'Mago Aprendiz'   
            END AS NomeGrupo

FROM clientes

ORDER BY qtdePontos DESC