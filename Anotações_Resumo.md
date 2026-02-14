# 📘 Dicionário de Operadores SQL

---

## 🔎 Comandos Básicos

- `SELECT * FROM` → pega todas as colunas  
- `SELECT COUNT(*) FROM` → faz a contagem de linhas retornadas  
- `WHERE` → filtra um critério para linhas; usar depois de `FROM` e antes do `GROUP BY`  
- `GROUP BY` → agrega os dados baseado em um mesmo critério  
- `HAVING` → filtra um critério após agregações; usar depois do `GROUP BY`  
- `ORDER BY(coluna)` → ordena os resultados crescentemente a partir de um parâmetro; usar após `HAVING`  
- `ORDER BY(coluna) DESC` → ordena os resultados decrescentemente; usar após `HAVING`  
- `AS` → renomear colunas ou tabelas (alias)  

---

## 🧠 Operadores Lógicos e Filtros

- `AND` → equivalente ao `&&` em C (condições múltiplas)  
- `IN` → busca uma lista de dados específicos  
- `LIKE` → busca padrões de texto (`x%`, `%x`, `%x%`)  

---

## 📊 Funções de Agregação

- `MIN(coluna)` → retorna o valor mínimo  
- `MAX(coluna)` → retorna o valor máximo  
- `AVG(coluna)` → retorna a média dos valores  

---

## 📦 Limitação de Resultados

- `LIMIT X` → retorna os `X` primeiros itens (semelhante ao `head` em Python)

---

## 🔗 JOINS

- `LEFT JOIN` → usa a tabela da esquerda como referência; se não houver correspondência na direita, preenche com `NULL`  
- `RIGHT JOIN` → inverso do `LEFT JOIN`  
- `INNER JOIN` → interseção entre as duas tabelas  

---

## 🗝️ Chaves

- `PK (PRIMARY KEY)` → identificador único; não se repete  
- `FK (FOREIGN KEY)` → chave que referencia outra tabela  

---

## 🔄 Conversão de Tipos

- `CAST(valor AS FLOAT)` → converte valores para `float` em vez de inteiro  

---

## 📅 Funções de Data e Texto

- `julianday('yyyy-mm-dd')` → converte datas em um número contínuo de dias desde uma data de referência histórica; permite calcular diferenças entre datas. Pode usar `'now'` para o dia atual  
- `substr(ref, num_ini, tamanho)` → extrai parte de um texto a partir de uma posição inicial e um tamanho definido  

---

## ➗ Operações Matemáticas

Use apenas:
- `+` (soma)  
- `-` (subtração)  
- `*` (multiplicação)  
- `/` (divisão)  

---

## ⌨️ Atalhos

- `Ctrl + Shift + Q` → roda a query

---
