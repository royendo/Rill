-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models



SELECT t1.*, t2.age, t2.gender, t2.revenue, t2.purchased
FROM web_history_gcs t1
JOIN (
    SELECT
        EXTRACT(YEAR FROM age(current_date(), birth)) AS age,
        customer_id,
        gender,
        revenue,
        purchased
    FROM crm_history_gcs
) t2 ON t1.customer_id = t2.customer_id
WHERE t2.age <= 100;
