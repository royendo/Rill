-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models
select "RegionName", cast("Date" as date) as "RealDate", "Average Rent", "StateName"
from (
  select "RegionName", "Date", "Average Rent","StateName"
  from (
  select *
     from "Metro_zori_uc_sfrcondomfr_sm_month_1"
  ) as t
  UNPIVOT (
    "Average Rent" for "Date" in ("2015-01-31","2015-02-28", "2015-01-31","2015-02-28",
"2015-03-31","2015-04-30","2015-05-31","2015-06-30","2015-07-31","2015-08-31","2015-09-30","2015-10-31",
"2015-11-30","2015-12-31","2016-01-31","2016-02-29","2016-03-31","2016-04-30","2016-05-31","2016-06-30",
"2016-07-31","2016-08-31","2016-09-30","2016-10-31","2016-11-30","2016-12-31","2017-01-31","2017-02-28",
"2017-03-31","2017-04-30","2017-05-31","2017-06-30","2017-07-31","2017-08-31","2017-09-30","2017-10-31",
"2017-11-30","2017-12-31","2018-01-31","2018-02-28","2018-03-31","2018-04-30","2018-05-31","2018-06-30",
"2018-07-31","2018-08-31","2018-09-30","2018-10-31","2018-11-30","2018-12-31","2019-01-31","2019-02-28",
"2019-03-31","2019-04-30","2019-05-31","2019-06-30","2019-07-31","2019-08-31","2019-09-30","2019-10-31",
"2019-11-30","2019-12-31","2020-01-31","2020-02-29","2020-03-31","2020-04-30","2020-05-31","2020-06-30",
"2020-07-31","2020-08-31","2020-09-30","2020-10-31","2020-11-30","2020-12-31","2021-01-31","2021-02-28",
"2021-03-31","2021-04-30","2021-05-31","2021-06-30","2021-07-31","2021-08-31","2021-09-30","2021-10-31",
"2021-11-30","2021-12-31","2022-01-31","2022-02-28","2022-03-31","2022-04-30","2022-05-31","2022-06-30",
"2022-07-31","2022-08-31","2022-09-30","2022-10-31","2022-11-30","2022-12-31","2023-01-31","2023-02-28",
"2023-03-31","2023-04-30","2023-05-31","2023-06-30","2023-07-31","2023-08-31","2023-09-30","2023-10-31",
"2023-11-30","2023-12-31","2024-01-31","2024-02-29","2024-03-31"
)
  ) as unpvt
) as final