--quem iniciou o curso, assistiu quantas aulas no total?

-- quem foi pra primeira aula
WITH tb_prim_dia AS (
        SELECT DISTINCT IdCliente
        FROM transacoes
        WHERE substr(dtCriacao,1,10) = '2025-08-25' 
), 

-- quem foi pro curso inteiro
tb_dias_curso AS (
        SELECT DISTINCT 
                Idcliente, 
                substr(dtCriacao,1,10) AS presente_dia
        FROM transacoes
        WHERE dtCriacao >= '2025-08-25'
        AND dtCriacao < '2025-08-30'
        ORDER BY IdCliente, presente_dia
),

-- conta quantas vezes quem partipou do primeir dia, voltou depois
tb_cliente_dias AS (
    SELECT t1.IdCliente,
                count(DISTINCT t2.presente_dia) AS qtdeDias
    FROM tb_prim_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.IdCliente

)

--calcula a media
SELECT AVG(qtdeDias) FROM tb_cliente_dias