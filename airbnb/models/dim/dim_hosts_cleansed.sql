{{
    config(
        materialized = 'table'
    )
}}
WITH src_hosts AS (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT 
    created_at,
    host_id,
    is_superhost,
    NVL(host_name, 'Anonymous') as host_name,
    updated_at
FROM 
    src_hosts