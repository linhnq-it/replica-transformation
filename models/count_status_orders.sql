with final as (
    select COUNT(id), status
    from {{ ref('raw_orders') }}
    group by status
)

select * from final
