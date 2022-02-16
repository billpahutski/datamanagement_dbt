
{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'staff') }}
WHERE _FIVETRAN_DELETED = False

