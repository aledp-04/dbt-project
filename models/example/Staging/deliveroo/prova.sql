SELECT *
FROM {{ ref('stg_rawrides__corse') }}
WHERE id = 3