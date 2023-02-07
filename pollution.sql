create database pollution;
use pollution;

drop table pollution_cleaned;


select * from pollution_cleaned;

select right(date, 4) as year, count(*) 
from pollution_cleaned
where date <> ''
group by 1;

select ship_type, count(*) from pollution_cleaned
group by 1;

select region , count(*) from pollution_cleaned
WHERE region <> 'At Sea'
group by 1;

select  region,right(date, 4) as year, sum(estimated_litres) as total
from pollution.pollution_final
where region <> 'At Sea' and date <> ''
group by 1 ,2 order by 1;