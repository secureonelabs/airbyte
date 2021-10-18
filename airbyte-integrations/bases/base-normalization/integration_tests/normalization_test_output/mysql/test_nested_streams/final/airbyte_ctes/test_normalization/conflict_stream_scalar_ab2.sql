
  create view _airbyte_test_normalization.`conflict_stream_scalar_ab2__dbt_tmp` as (
    
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    cast(id as char) as id,
    cast(conflict_stream_scalar as 
    signed
) as conflict_stream_scalar,
    _airbyte_emitted_at
from _airbyte_test_normalization.`conflict_stream_scalar_ab1`
-- conflict_stream_scalar
  );
