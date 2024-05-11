-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

 -- used for transformations / intermediate processing

SELECT t1.*, t2.age, t2.gender, t2.revenue, t2.price_purchased
FROM web_history_gcs t1
JOIN (
    SELECT
        EXTRACT(YEAR FROM age(current_date(), birth)) AS age,
        customer_id, 
        gender,
        revenue,
        price_purchased
    FROM crm_history_gcs
) t2 ON t1.customer_id = t2.customer_id
WHERE t2.age <= 100 {{ if dev }} LIMIT 100 {{ end }}

-- can do various types of if else stuff
-- https://docs.rilldata.com/build/models/environments 