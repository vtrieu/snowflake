--CTAS to create MA_PA_COVID_CASES views
CREATE OR REPLACE VIEW MA_PA_COVID_CASES AS 
(
select country_region, province_state, county, fips, date, case_type
from "COVID19_BY_STARSCHEMA"."PUBLIC"."JHU_COVID_19"
where country_region = 'United States' and case_type = 'Confirmed' and province_state in ('Massachusetts','Pennsylvania') and county is not null and fips is not null
order by date
);
