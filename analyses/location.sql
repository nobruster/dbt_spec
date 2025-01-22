{{ config(
    materialized='table',
    enable=false
) }}

select
  c.city_id,
  c.state_id,
  s.country_id,
  c.city,
  s.state,
  co.country
FROM dbtspec.dbt_bnunes.city c
  left join dbtspec.dbt_bnunes.state s
    on s.state_id = c.state_id
  left join dbtspec.dbt_bnunes.country co
    on co.country_id = s.country_id