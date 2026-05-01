with 

source as (

    select * from {{ source('deliveroo', 'corse_cancellate') }}

),

renamed as (

    select
        id,
        id_corsa,
        creato_il,
        motivo

    from source

)

select * from renamed