--lista das categorias por ordem alfabetica, sem repetição (DISTINCT)

SELECT
   DISTINCT CASE WHEN product_category_name IS NULL THEN 'outros'
                -- jeito 01 de usar um WHEN dentro de outro WHEN
                 WHEN product_category_name = 'alimentos'
                        or product_category_name = 'alimentos_bebidas' then 'alimentos'
                 -- jeito 02
                 WHEN product_category_name in ('artes', 'artes_e_artesanato') then 'artes'

                 --jeito 03, caso contiver a palavra 'artigos' na string, use-o
                 WHEN product_category_name like "%artigos%" then "artigos"
                 
                ELSE product_category_name 
            END AS categoria_fillna
        -- CASE abre a sintaxe e END avisa que fechou a cláusula de CASE

FROM tb_products

ORDER BY 1 -- 1 refere-se ao nosso produto ali em cima (categoria_fillna)