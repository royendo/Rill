-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

select "Crime Name1","Crime Name2","Crime Name3", "State", cast("Start_Date_Time" as date) as "DATE" from "Crime USA"
