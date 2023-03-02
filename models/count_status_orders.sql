with final as (
    SELECT COUNT(id), status
        FROM {{ ref('raw_orders') }}
        GROUP BY status;
)

select * from final
