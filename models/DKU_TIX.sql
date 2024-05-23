-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

-- select created_at, agent, platform from cases

select cases.created_at, cases.agent, cases.platform, cases.created_at_year, "WD_workschedule_prepared"."object_Location_Address_-_Country" from cases join "WD_workschedule_prepared" on (cases.agent = "WD_workschedule_prepared"."object_Full_Legal_Name")