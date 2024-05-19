-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models
-- dimesnsion


-- metrics
  --conversiont rate
  --ROI
  --effectiveness Acquisition_cost/duration / clicks + impressions
select Date, Company, Campaign_Type, Target_audience, 
case
    when "Target_Audience" ilike '%women%' then 'Female'
    when "Target_Audience" ilike '%men%' then 'Male'
    
    else 'All gender'
END AS gender,"Location",
"Language","Channel_Used",
(Clicks + "Impressions") as "Engagement",
CAST(regexp_extract(Acquisition_cost, '([0-9]+)') AS INTEGER) / CAST(regexp_extract(duration, '([0-9]+)') AS INTEGER) as "Cost per DAY",
(Clicks + "Impressions") / "Cost per DAY" as "effectivness", 

ROI,

"Engagement_Score",




 from marketing_campaign_dataset