{{ config(materialized='table') }}

select l.city,
  l.iso_country_code as counry_code,
  c.iso_currency as currency_code,
  l.location
  from RAW_POS.LOCATION as l
  join RAW_POS.COUNTRY as c 
  on l.iso_country_code = c.iso_country
