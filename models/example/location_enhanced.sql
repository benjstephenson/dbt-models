{{ config(materialized='table') }}

select l.city,
  l.iso_country_code as counry_code
  c.iso_currency as currency_code
  l.location
  from HOLD_DB.LOCATION as l
  join HOLD_DB.COUNTRY as c 
  on l.iso_country_code == c.iso_country
