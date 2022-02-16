
{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'store') }}
WHERE _FIVETRAN_DELETED = False