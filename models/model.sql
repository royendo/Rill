-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

SELECT * from crm_history_gcs JOIN web_new_customers_gcs ON (crm_history_gcs.customer_id = web_new_customers_gcs.customer_id)