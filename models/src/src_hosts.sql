with raw_hosts as (
    select * from AIRBNB.RAW.RAW_hosts
)

select
    id host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
  
from 
    raw_hosts