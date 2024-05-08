-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

select "Ticker",
CAST("Open" as DOUBLE) as "Open",
CAST("High" as DOUBLE) as "High",
CAST("Low" as DOUBLE) as "Low",
cast("Close" as DOUBLE)  as "Close",
cast("Adj Close" as DOUBLE) as "Adj Close",
cast("Volume" as INT) as "Volume",
cast("Date" as DATE) as "Date"
 
from airline_stocks 

