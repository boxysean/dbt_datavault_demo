with source as (

    select * from {{ source('salesforce', 'accounts') }}

),

renamed as (

    select
    
        batchid as batchid,
        (companyextid + 10000) as accountid,
        company_name,
        city,
        state,
        datecreated,
        modifieddate

    from source

)

select * from renamed