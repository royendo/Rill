-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

select Timestamp, country, city, 
-- DIMENSIONS
  CASE
    when Male = 0 then 'female'
    when Male = 1 then 'male'
    else 'unknown'
  END AS gender,

  case
    when Age>10  and Age<20 then '10-20'
    when Age>20  and Age<30 then '20-30'
    when Age>30  and Age<40 then '30-40'
    when Age>40  and Age<50 then '40-50'
    else 'older'
  END as "age range",
  case
    when "area income"<30000 then 'Too Low'
    when "area income">30000 and "area income"<40000 then 'Lower'
    when "area income">40000 and "area income"<60000 then 'Mid'
    when "area income">60000 then 'Upper'
  end as "INCOME",
-- metrics
"Clicked On Ad",
from 
  test

