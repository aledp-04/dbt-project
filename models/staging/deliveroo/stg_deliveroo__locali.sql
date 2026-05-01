with 

source as (

    select * from {{ source('deliveroo', 'locali') }}

),

renamed as (

    select
        id,
        nome,
        indirizzo

    from source

)

select * from renamed