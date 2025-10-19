-- qual a receita de cada categoria de produto ?
-- e o total de vendas?
-- em unidade e em pedidos?

SELECT * 

FROM tb_order_items as t1 -- pega tudo dessa

LEFT JOIN tb_products as t2 -- cruza com essa e usa a key da linha abaixo
ON t1.product_id = t2.product_id 


