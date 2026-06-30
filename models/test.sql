SELECT *
FROM {{ source('gbiflakehouse_bronze', 'gbif_full_table') }}