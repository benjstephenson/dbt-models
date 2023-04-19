{{ config(materialized='table') }}

select l.city,
  l.iso_country_code as counry_code,
  c.iso_currency as currency_code,
  l.location
  from LOCATION as l
  join COUNTRY as c 
  on l.iso_country_code == c.iso_country
