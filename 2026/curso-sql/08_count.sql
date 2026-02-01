SELECT COUNT(*) --mostra a quantidade de linhas que a tabela possui

FROM clientes;

--busca os id distintos, ele busca pela LINHA
-- nesse caso, não muda pois cada cliente tem apenas um id
SELECT count(DISTINCT idCliente)

FROM clientes