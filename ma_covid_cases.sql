--CTAS to create MA_PA_COVID_CASES view
--add cases column
CREATE OR REPLACE VIEW ma_covid_cases AS 
(
select country_region, province_state, county, fips, date, case_type, cases
from "COVID19_BY_STARSCHEMA"."PUBLIC"."JHU_COVID_19"
where country_region = 'United States' and case_type = 'Confirmed' and province_state in ('Massachusetts') and county is not null and fips is not null
order by date
);
