with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer,
        ordered_at,
        store_id 
    from source
)
select * from renamed