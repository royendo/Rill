-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

select CAST("Date" as DATE) as date_column, "TICKER", "Open", "High", "Low", "Close", "Adj Close", "Volume"
 from airline_stocks 
{{ if dev }} LIMIT 100 {{ end }}


