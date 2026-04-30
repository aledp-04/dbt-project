with 

source as (

    select * from {{ source('deliveroo', 'corse_cancellate') }}

),

renamed as (

    select
        id,
        id_corsa,
        creato_il

    from source

    where id is not null

)

select * from renamed