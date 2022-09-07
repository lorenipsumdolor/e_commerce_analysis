SELECT
 f.id,
 hair_type,
 age,
 created,
 value,
 CASE 
    WHEN age >= 15 and age <= 20 THEN '15 a 20'
    WHEN age >= 21 and age <= 25 THEN '21 a 25'
    WHEN age >= 26 and age <= 30 THEN '26 a 30'
    WHEN age >= 31 and age <= 35 THEN '31 a 35'
    WHEN age >= 36 and age <= 40 THEN '36 a 40'
    WHEN age >= 41 and age <= 45 THEN '41 a 45'
    WHEN age >= 46 and age <= 50 THEN '46 a 50'
    WHEN age >= 51 and age <= 55 THEN '51 a 55'
    WHEN age >= 56 and age <= 60 THEN '56 a 60'
    WHEN age > 60 THEN '60>'
 END faixa_idade
FROM forms f LEFT JOIN orders o ON f.id = o.form_id
