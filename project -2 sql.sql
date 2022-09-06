select * from nyc_1 ;


select * from nyc_2;


#1. write query to show name from NYC_1

select name  from nyc_1 ; # this is right answer

#2. write query to show count of id in nyc_1

select count(id) from nyc_1 ; #this is right answer

#3. write query to show count of id in nyc_2
select count(id) from nyc_2 ; #this is right answer

#4. write query to show host id in nyc_1
select host_id  from nyc_1; # this is right answer

#5. write query to show all unique host id from nyc_1
select distinct host_id  from nyc_1;


#6. write query to show all unique neighbourhood_group from
nyc_1

select distinct neighbourhood_group  from nyc_1 ; #this is right answer

#7. write query to show all unique neighbourhood from nyc_1
select distinct neighbourhood  from nyc_1 ; # this is right answer

#8. write query to show room_type from nyc_1
select room_type  from nyc_1 ;

#9. write query to show all values of Brooklyn & Manhattan from
nyc_1

select * from nyc_1 where neighbourhood_group in ('Brooklyn','manhattan') ; #this is right answer

select * from nyc_1 ;

#10. write query to show unique value of room type from nyc_1

select distinct room_type  from nyc_1 ; # this is right answer

#11. write query to show maximum price from nyc_2

select max(price) from nyc_2 ; # this is right answer

#12.write query to show minimum price from nyc_2

select min(price) from nyc_2 ; #this is right answer

#13. write query to show average price from nyc_2

select avg(price) from nyc_2 ; #this is right answer


#14.write query to show minimum value of minimum_nights from
nyc_2

select min(minimum_nights) from nyc_2 ; # this is right answer

#15.write query to show maximum value of minimum_nights from
nyc_2

select max(minimum_nights) from nyc_2 ; # this is right answer

#16. write query to show average availability_365

select avg(availability_365) from nyc_2 ; #this is right answer

#17.write query to show id , availability_365 and all availability_365
value is greater than 300


select id , availability_365  from nyc_2 where availability_365 > 300 ; #this is right answer

#18. write query to show count of id where price is in between 300 to
400

select id,price  from nyc_2 where price between 300 and 400 ; #this is right answer

#19. write query to show count of id where minimum_nights spend
is less than 5

select id,minimum_nights  from nyc_2 where minimum_nights < 5 ; # this is right answer

#20.write query to show count where minimum_nights spend is
greater than 100

select id, minimum_nights  from nyc_2 where minimum_nights > 100 ; # this is right answer

# 21 write query to show all data of nyc_1 & nyc_2

select nyc_1.*,nyc_2.* from nyc_1 join nyc_2 on nyc_1.id = nyc_2.id ; # this is right answer

#22. write query to show host name and price
 
select nyc_1.host_name ,nyc_2.price from nyc_1 join nyc_2 on nyc_1.id=nyc_2.id;

#write query to show room_type and price

select nyc_1.room_type  ,nyc_2.price from nyc_1 join nyc_2 on nyc_1.id=nyc_2.id

#24. write query to show neighbourhood_group&minimum_nights
spend

select nyc_1.neighbourhood_group  ,nyc_2.minimum_nights  from nyc_1 join nyc_2 on nyc_1.id=nyc_2.id;

#25. write query to show neighbourhood & availability_365
select nyc_1.neighbourhood ,nyc_2.availability_365  from nyc_1 join nyc_2 on nyc_1.id = nyc_2.id;

#26.write query to show total price by neighbourhood_group.........

create view new3 as select nyc_1.*,nyc_2.* from nyc_1 join nyc_2 on nyc_1.id1 = nyc_2.id;

alter table nyc_1 change   id id1 int;

select * from new3 ;

select neighbourhood_group, sum(price) total_price from new3 
group by neighbourhood_group  ; # this is right answer

# 27 write query to show maximum price by neighbourhood_group

select neighbourhood_group,max(price) from new3  group by neighbourhood_group; # this is right answer

# 28.write query to show maximum night spend by
neighbourhood_group

select neighbourhood_group,max(minimum_nights) from new3 group by neighbourhood_group; # this is right answer

#29.write query to show maximum reviews_per_month spend by
neighbourhood

select  neighbourhood, max(reviews_per_month) from new3 group by neighbourhood; # this is right answer

#30.write query to show maximum price by room type

select room_type , max(price) from new3 group by room_type; # this is right answer

#31.write query to show average number_of_reviews by room_type

select room_type,avg(number_of_reviews) from new3 group by room_type; # this is right answer

#32.write query to show average price by room type

select room_type , avg(price) from new3 group by room_type; # this is right answer

#33.write query to show average night spend by room type
select room_type ,avg(minimum_nights) from new3 group by room_type;

#34.write query to show average price by room type but average
price is less than 100

select room_type , avg(price) from new3 group by room_type having avg(price)<100; #this is right answer

#35.write query to show average night by neighbourhood and
average_nights is greater than 5

select neighbourhood,avg (minimum_nights) from new3 
group by neighbourhood having avg(minimum_nights)>5; #this is right answer


#36. write query to show all data from nyc_1 and price is greater
than 200 using sub-query


select nyc_1.*,nyc_2.price from nyc_1 join nyc_2  on nyc_1.id1 = nyc_2.id 
where price in (select price from nyc_2 where price > 200) ; # this is right answer



select * from new3;



#37. write query to show all values from nyc_2 table and host id is
314941


select nyc_2.*,nyc_1.host_id from nyc_2 join nyc_1 on nyc_2.id = nyc_1.id1
where host_id  in (select host_id  from nyc_1 where host_id = 314941) ; # this is right answer

#38. Find all pairs of id having the same host id, each pair coming
once only.

select n1.id1 , n2.host_id  from nyc_1 n1,nyc_1 n2
where n1.id1 != n2.id1
and n1.host_name  = n2.host_name ; #this is right answer


select * from nyc_1 ;

#39.write sql query to show fetch all records that have the term cozy
in name

select * from new3 where name like '%cozy%'; # this is right answer

#40. write query to show price host id neighbourhood_group of
manhattanneighbourhood_group

select price,host_id,neighbourhood_group from new3 
where neighbourhood_group = 'Manhattan'; #this is right answer

#41..write query to show id , host name, neighbourhood and price
but only for Upper West Side & Williamsburg neighbourhood
also price is greater than 100


select id1 ,ltrim(upper(host_name)),ltrim(upper(neighbourhood)) ,price  
from new3 where neighbourhood = 'williamsburg' and price > 100;  # this is right answer



#42.write query to show id , host name, neighbourhood and price for
host name Elise and neighbourhood is Bedford-Stuyvesant

select id1 ,host_name , neighbourhood ,price  from new3 
where host_name = 'elise' and neighbourhood ='Bedford-Stuyvesant'  ; # this is right answer


#43. write query to show
host_name,availability_365,minimum_nights only for 100+
availability_365 and minimum_nights

select host_name , availability_365 ,minimum_nights  from new3 
where availability_365 > 100 and minimum_nights >100; # this is right answer

#44. write query to show to fetch id ,host_name , number_of_reviews,
and reviews_per_month but show only that records where
number of reviews are 500+ and review per month is 5+


select id1 ,host_name ,number_of_reviews ,reviews_per_month  from new3 
where number_of_reviews > 500 and reviews_per_month > 5; # this is right answer


#45. write query to show neighbourhood_group which have most
total number of review

select neighbourhood_group ,number_of_reviews  from new3 
order by number_of_reviews desc limit 1; # this is right answer

#46. write query to show host name which have most cheaper total
price

select host_name ,price from new3 order by price limit 1; # this is right answer

#47. write query to show host name which have most costly total price

select host_name ,price from new3   order by price desc limit 3 ; # this is right answer

#48. write query to show host name which have max price using subquery
select host_name ,price from new3 where price = (select max(price) from new3) ;# this is right answer

#49. write query to show neighbourhood_group which price are less
than 100

select neighbourhood_group ,price  from new3 where price < 100; #this is right answer

#50. write query to find max price, average availability_365 for each
room type and order in ascending by maximum price



select room_type , avg(availability_365) , max(price)   from new3 
group by room_type order by price; # this is right answer


select * from new3 ;










