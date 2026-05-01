with 

source as (

    select * from {{ source('deliveroo', 'clienti') }}

),

renamed as (

    select
        id,
        nome,
        telefono,
        email,
        indirizzo

    from source

)

select * from renamed