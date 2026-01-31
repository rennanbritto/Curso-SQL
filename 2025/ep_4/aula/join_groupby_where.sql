-- considerando as vendas de 2017 e pedidos entregues
-- qual a receita de cada categoria de produto ?
-- e o total de vendas?
-- em unidade e em pedidos?

SELECT  
        t2.product_category_name, -- apenas essa da t2
        sum(t1.price) as receita,
        count(*) as total_itens_vendidos, -- total de pedidos vendidos
        count(DISTINCT t1.order_id) as qtde_pedidos, -- únicos
        round( count(*) / cast( count (distinct t1.order_id) as FLOAT), 2) AS avg_item_por_pedido

FROM tb_order_items as t1 -- pega tudo dessa

LEFT JOIN tb_products as t2 -- cruza com essa 
ON t1.product_id = t2.product_id -- por essa kay

LEFT JOIN tb_orders as t3
ON t1.order_id = t3.order_id

WHERE t3.order_status = 'delivered'
AND strftime('%Y', t3.order_approved_at) = '2017' -- se a string for 2017

-- agora agrupa por categoria
GROUP BY t2.product_category_name 
-- em ordem de maior receita
ORDER BY   count (*) / cast( count (distinct t1.order_id) as FLOAT) DESC

