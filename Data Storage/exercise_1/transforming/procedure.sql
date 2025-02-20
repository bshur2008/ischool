DROP TABLE IF EXISTS production.Procedure;
CREATE TABLE production.Procedure
STORED AS ORC 
AS
SELECT 
provider_id ,
measure_id ,
'Effective_Care' as procedure_type ,
case when score='Not Available' then null 
	when score like 'Very High%' then '4'
	when score like 'High%' then '3' 
	when score like 'Medium%' then '2' 
	when score like 'Low%' then '1' 
		else score end as score ,
footnote ,
null as Compared_to_National , 
null as Denominator ,
null as Lower_Estimate ,
null as Higher_Estimate ,
sample ,
condition 
FROM staging.effective_care
UNION ALL
SELECT
provider_id ,
measure_id ,
'Readmissions_And_Deaths' as procedure_type ,
case when score='Not Available' then null 
        when score like 'Very High%' then '4'
        when score like 'High%' then '3'
        when score like 'Medium%' then '2'
        when score like 'Low%' then '1'
                else score end as score ,
footnote ,
Compared_to_National ,
Denominator ,
Lower_Estimate ,
Higher_Estimate ,
null as sample ,
null as condition 
FROM staging.readmissions
SORT BY provider_id, measure_id, procedure_type
;
