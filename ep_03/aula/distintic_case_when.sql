--lista das categorias por ordem alfabetica, sem repetição (DISTINCT)

SELECT
   DISTINCT CASE WHEN product_category_name IS NULL THEN 'outros'
                ELSE product_category_name 
            END AS categoria_fillna
        -- CASE abre a sintaxe e END avisa que fechou a cláusula de CASE

FROM tb_products

ORDER BY 1 -- 1 refere-se ao nosso produto ali em cima (categoria_fillna)
