select t1.country_name,npop,nairports,cast(nairports as float)/npop*1000 as pc
from
    (select country_name ,sum(population) as npop
    from optd_por_public
    where country_name is not null
    group by country_name) as t1,

    (select  country_name   ,count(*) nairports 
    from optd_por_public  
    where location_type in ('A','CA')
    group  by country_name) as t2
where t1.country_name = t2.country_name
and npop>0
order by pc desc limit 10;

 select population.country_name,npop ,nairports
from population,airports
where population.country_name= airports.country_name
order by npop desc limit 10;


 select population.country_name,npop ,nairports
from population inner join airports
on population.country_name= airports.country_name
order by npop desc limit 10;



 select population.country_name,npop ,nairports
from population left outer join airports
on population.country_name= airports.country_name
order by npop desc limit 10;



select name ,"2char_code",airline_code_2c,flight_freq 
from optd_airlines 
left outer join ref_airline_nb_of_flights
on "2char_code" = airline_code_2c;


select airline_code_2c, name ,"2char_code",flight_freq 
from ref_airline_nb_of_flights
left outer join optd_airlines 
on "2char_code" = airline_code_2c
order by flight_freq desc limit 10;




select airline_code_2c, name ,flight_freq 
from optd_airlines                            --(1253 filas)
left outer join ref_airline_nb_of_flights
on "2char_code" = airline_code_2c;

select airline_code_2c, name ,"2char_code",flight_freq 
from ref_airline_nb_of_flights
right outer join optd_airlines                         -- (1253 filas)
on "2char_code" = airline_code_2c;


select airline_code_2c, name ,"2char_code",flight_freq 
from ref_airline_nb_of_flights
left outer join optd_airlines 
on "2char_code" = airline_code_2c
order by flight_freq desc limit 10;


select name,country_name,elevation
from optd_por_public
 where elevation > (select avg(elevation) 
                    from optd_por_public where elevation is not null 
                    and elevation >0 and location_type ='C')
 and location_type ='C'  limit 10;

 
 
 
select count(*),country_name
from optd_por_public
 where elevation > (select avg(elevation) 
                    from optd_por_public where elevation is not null 
                    and elevation >0 and location_type ='C')
 and location_type ='C'  
 group by country_name
 having count (*) >10 ;
 limit 10;


CREATE TABLE FABRICANTES
(CODIGO INT PRIMARY KEY,
 NOMBRE VARCHAR);
 
 
CREATE TABLE ARTICULOS
(CODIGO INT PRIMARY KEY,
 NOMBRE VARCHAR,
 PRECIO INT
 FABRICANTE INT REFERENCES FABRICANTES(CODIGO));
 
 
 
 



