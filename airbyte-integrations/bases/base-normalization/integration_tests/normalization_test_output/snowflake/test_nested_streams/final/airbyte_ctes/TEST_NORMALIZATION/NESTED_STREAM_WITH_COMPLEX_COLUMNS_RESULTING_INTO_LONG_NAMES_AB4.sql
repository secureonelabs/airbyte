
  create or replace  view "AIRBYTE_DATABASE"._AIRBYTE_TEST_NORMALIZATION."NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES_AB4"  as (
    
-- SQL model to prepare for deduplicating records based on the hash record column
select
  row_number() over (
    partition by _AIRBYTE_NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES_HASHID
    order by _AIRBYTE_EMITTED_AT asc
  ) as _AIRBYTE_ROW_NUM,
  tmp.*
from "AIRBYTE_DATABASE"._AIRBYTE_TEST_NORMALIZATION."NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES_AB3" tmp
-- NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES from "AIRBYTE_DATABASE".TEST_NORMALIZATION._AIRBYTE_RAW_NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES
  );
