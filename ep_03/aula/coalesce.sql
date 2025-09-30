-- os campos NULL da coluna product_category_name serão preenchidos por 'outros'
-- alternativa ao CASE WHEN
SELECT DISTINCT COALESCE(product_category_name, 'outros') as category_fillna

FROM tb_products

-- ordena em ordem alfabética
ORDER BY product_category_name
