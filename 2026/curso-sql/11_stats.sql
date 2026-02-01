SELECT round(avg(QtdePontos), 2) AS mediaCarteira, -- arrendonda para duas casas decimais
        min(QtdePontos) AS mincarteira,
        max(QtdePontos) AS maxCarteira,
        --aqui não usamos count pois os dados são 0 ou 1, eles existem
        --o sum conta esses inteiros
        sum(FlTwitch),
        sum(FlEmail)

FROM clientes