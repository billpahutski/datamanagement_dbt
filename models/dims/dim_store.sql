{{ config(materialized='table') }}

SELECT
    stg_store.store_id as staff_id,

    stg_address.district as district,
    stg_address.address as address,
    stg_address.phone as phone,

    stg_staff.last_name as last_name
FROM
    {{ ref('stg_store') }} 
    LEFT JOIN {{ ref('stg_address') }}
        ON stg_store.address_id = stg_address.address_id
    LEFT JOIN {{ ref('stg_staff') }}
        ON stg_store.manager_staff_id = stg_staff.staff_id
