 
select count(distinct optd_por_public.city_code_list),optd_por_public.country_name
from (select avg(elevation)media,country_code
from optd_por_public
where elevation is not null and elevation >0 and location_type ='C' 
group by country_code) as vista,optd_por_public
where vista.country_code=optd_por_public.country_code
and elevation> media and location_type='C'
and elevation is not null
group by country_name
order by country_name;
