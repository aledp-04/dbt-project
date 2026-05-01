with 

source as (

    select * from {{ source('deliveroo', 'riders') }}

),

renamed as (

    select
        id,
        nome,
        telefono

    from source

)

select * from renamed