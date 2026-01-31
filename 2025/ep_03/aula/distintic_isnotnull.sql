--lista das categorias por ordem alfabetica, sem repetição

SELECT DISTINCT product_category_name

FROM tb_products

-- remove os NULL
WHERE product_category_name IS NOT NULL

-- ordena em ordem alfabética
ORDER BY product_category_name
