WITH tb_transacoes AS (
    
    SELECT IdTransacao,
        IdCliente,
        QtdePontos,
        datetime(substr(dtCriacao,1,19)) AS dtCriacao,
        julianday('now') - julianday(substr(dtCriacao,1,10)) AS diffDate

    FROM transacoes
)

SELECT IdCLiente, --qtd de engajamento nos ultimos x dias
        count(IdTransacao) AS qtdeTransacoesVida,
        count(CASE WHEN diffDate <=56 THEN IdTransacao END) AS qtdeTransacoes56,
        count(CASE WHEN diffDate <=28 THEN IdTransacao END) AS qtdeTransacoes28,
        count(CASE WHEN diffDate <=14 THEN IdTransacao END) AS qtdeTransacoes14,
        count(CASE WHEN diffDate <=7 THEN IdTransacao END) AS qtdeTransacoes7,
        min(difdDate) AS diasUltimaInteração