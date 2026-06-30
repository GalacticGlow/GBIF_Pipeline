with 

source as (

    select * from {{ source('gbiflakehouse', 'gbif_full_table') }}

),

renamed as (

    select
        gbifid,
        datasetkey,
        occurrenceid,
        kingdom,
        phylum,
        class,
        order,
        family,
        genus,
        species,
        infraspecificepithet,
        taxonrank,
        scientificname,
        verbatimscientificname,
        verbatimscientificnameauthorship,
        countrycode,
        locality,
        stateprovince,
        occurrencestatus,
        individualcount,
        publishingorgkey,
        decimallatitude,
        decimallongitude,
        elevation,
        depth,
        eventdate,
        taxonkey,
        specieskey,
        basisofrecord,
        institutioncode,
        collectioncode,
        catalognumber,
        recordnumber,
        identifiedby,
        dateidentified,
        license,
        rightsholder,
        recordedby,
        typestatus,
        establishmentmeans,
        lastinterpreted

    from source

)

select * from renamed