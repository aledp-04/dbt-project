with 

source as (

    select * from {{ source('deliveroo', 'corse') }}

),

renamed as (

    select
        id,
        id_rider,
        id_cliente,
        id_locale

    from source

)

select * from renamed

{{ config(materialized='view') }}