with 

source as (

    select * from {{ source('deliveroo', 'corse_accettate') }}

),

renamed as (

    select
        id,
        id_corsa,
        creato_il

    from source

)

select * from renamed