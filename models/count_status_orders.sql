with final as (
    select COUNT(id), status
    from {{ ref('meey_id_users') }}
    group by status
)

select * from final
