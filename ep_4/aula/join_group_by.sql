-- qual a receita de cada categoria de produto ?
-- e o total de vendas?
-- em unidade e em pedidos?

SELECT  
        t2.product_category_name, -- apenas essa da t2
        sum(t1.price) as receita

FROM tb_order_items as t1 -- pega tudo dessa

LEFT JOIN tb_products as t2 -- cruza com essa 
ON t1.product_id = t2.product_id -- por essa kay

-- agora agrupa por categoria
GROUP BY t2.product_category_name 

-- em ordem de maior receita
ORDER BY   sum(t1.price) DESC

-- as dez maiores (como um tail)
limit 10