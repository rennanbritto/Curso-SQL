--eh melhor que a subquery porque cada tb filtra uma parte da tabela e depois cruza
--Contexto: clientes que estiveram no primeiro dia e também no ultimo dia

WITH tb_cliente_primeiro_dia AS (
        SELECT DISTINCT IdCliente
        FROM transacoes
        WHERE substr(dtCriacao,1,10) = '2025-08-25' 
), 

tb_cliente_ultimo_dia AS (
        SELECT DISTINCT IdCliente
        FROM transacoes
        WHERE substr(dtCriacao,1,10) = '2025-08-29' 
),

tb_join AS (
    SELECT t1.IdCliente AS primCliente,
            t2.IdCliente AS ultCliente

    FROM tb_cliente_primeiro_dia AS T1

    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.IdCliente = t2.IdCliente

)

SELECT count(primCliente),
        count(ultCLiente),
        1. * count(ultCLiente) / count(primCliente)

FROM tb_join