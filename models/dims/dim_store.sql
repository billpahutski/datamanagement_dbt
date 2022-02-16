{{ config(materialized='table') }}

SELECT
    actor_id as actor_key,
    CONCAT_WS(' ', last_name, first_name ) as full_name
FROM {{ ref('stg_store') }}