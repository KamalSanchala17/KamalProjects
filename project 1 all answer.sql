

select * from big_mart;

# 1. WRITE a sql query to show all Item_Identifier

select Item_Identifier  from big_mart ; # this is right answer

# 2. WRITE a sql query to show count of total Item_Identifier

select count(Item_Identifier) from big_mart ; #this is right answer

# 3. WRITE a sql query to show maximum Item Weight

select max(Item_Weight) from big_mart ; #this is right answer

#4. WRITE a query to show minimun Item Weight
select min(Item_Weight) from big_mart ; #this is right answer

#5. WRITE a query to show average Item_Weight

select avg(Item_Weight) from big_mart ; # this is right answer

# 6. WRITE a query to show count OF Item_Fat_Content WHERE
Item_Fat_Content IS Low Fat

select count(Item_Fat_Content) from big_mart where Item_Fat_Content = 'Low Fat' ; # this is right answer

#7. WRITE a query to show count OF Item_Fat_Content WHERE
Item_Fat_Content IS Regular

select count(Item_Fat_Content) from big_mart where Item_Fat_Content = 'regular';

#8. WRITE a query TO show maximum Item_MRP
select max(Item_MRP) from big_mart ; #this is right answer

#9. WRITE a query TO show minimum Item_MRP

select min(Item_MRP) from big_mart ;#this is right answer

#10.WRITE a query to show Item_Identifier , Item_Fat_Content
,Item_Type,Item_MRP and Item_MRP IS greater than 200


select Item_Identifier,Item_Fat_Content , Item_Type ,Item_MRP  from big_mart 
where Item_MRP > 200; #this is right answer

#11.WRITE a query to show maximum Item_MRP WHERE
Item_Fat_Content IS Low Fat

select Item_MRP  from big_mart  where Item_Fat_Content = 'Low Fat' ; # this is right answer

select Item_MRP, Item_Fat_Content  from big_mart  where Item_Fat_Content = 'Low Fat' ;

#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS
Low Fat

select Item_Fat_Content ,min(Item_MRP) from big_mart 
group by Item_Fat_Content having Item_Fat_Content ="low fat" ; #this is right answer

select min(Item_MRP) from big_mart where Item_Fat_Content =  'low fat'; # also this is right answer


#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO
100

select * from big_mart where Item_MRP between 50 and 100 ;

#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content

select distinct (Item_Fat_Content) from big_mart ; # this is right answer

select * from big_mart ;

#15.WRITE a query to show ALL UNIQUE value Item_Type

select distinct (Item_Type) from big_mart ; # this is right answer

#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP

select * from big_mart order by Item_MRP desc; # this is right answer

#17.WRITE a query to show ALL DATA IN ascending ORDER BY
Item_Outlet_Sales

select * from big_mart order by Item_Outlet_Sales ;

#18.WRITE a query to show ALL DATA IN ascending BY Item_Type

select * from big_mart order by Item_Type  ;

#19.WRITE a query to show DATA OF item_type dairy & Meat

select * from big_mart where Item_Type in ('dairy','meat'); # this is right answer

#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size

select distinct (Outlet_Size) from big_mart; # this is right answer

select Outlet_Size , sum(Item_Outlet_Sales) sales from big_mart group by Outlet_Size  ; # also this is right answer

select * from big_mart ;

#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type

select distinct (Outlet_Location_Type) from big_mart; # this is right answer

#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type

select distinct(Outlet_Type) from big_mart ; # this is right answer


#23.WRITE a query to show count NO. OF item BY Item_Type AND ordered
it IN descending

select Item_Type , count(Item_Type)  from big_mart 
group by Item_Type order by Item_Type desc; # this is right answer

#24.WRITE a query to show count NO. OF item BY Outlet_Size AND
ordered it IN ascending

select * from big_mart;

select Outlet_Size  ,count(Item_Type)  from big_mart
group by Outlet_Size  order by Outlet_Size ; # this is right answer

#25.WRITE a query to show count NO. OF item BY
select count(Item_Type) from big_mart ; # this is right answer


#26.WRITE a query to show count NO. OF item BY Outlet_Type AND
ordered it IN descending

select Outlet_Type  ,count(Item_Type) from big_mart
group by Outlet_Type order by Outlet_Type desc ; # this is right answer

#27.WRITE a query to show count of item BY Outlet_Location_Type AND
ordered it IN descending

select Outlet_Location_Type , count(Item_Type) from big_mart
group by Outlet_Location_Type order by Outlet_Location_Type  desc  ;

#28.WRITE a query to show maximum MRP BY Item_Type

select Item_Type , max(Item_MRP) max_MRP from big_mart group by Item_Type  ; # THIS is right ANSWER

#29.WRITE a query to show minimum MRP BY Item_Type

select Item_Type , min(Item_MRP) min_MRP from big_mart group by Item_Type;

#30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year
AND ordered it IN descending

select Outlet_Establishment_Year  , min(Item_MRP) min_MRP from big_mart group by Outlet_Establishment_Year
order by Outlet_Establishment_Year desc ; # this is right answer

#31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year
AND ordered IN descending

select Outlet_Establishment_Year  , max(Item_MRP) min_MRP from big_mart group by Outlet_Establishment_Year
order by Outlet_Establishment_Year desc ; # this is right answer

#32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN
descending

select Outlet_Size  , avg(Item_MRP) avg_MRP from big_mart group by Outlet_Size 
order by Outlet_Size  desc ; # this is right answer


#33.WRITE a query to show average MRP BY Outlet_Size

select Outlet_Size , avg(Item_MRP) from big_mart group by Outlet_Size  ; # this is right answer

#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN
ascending

select Outlet_Type , avg(Item_MRP) avg_MRP from big_mart 
group by Outlet_Type order by  avg_MRP , Outlet_Type ; # this is right answer


#35.WRITE a query to show maximum MRP BY Outlet_Type

select Outlet_Type , max(Item_MRP) from big_mart group by Outlet_Type ;

#36.WRITE a query to show maximum Item_Weight BY Item_Type
select Item_Type  , max(Item_Weight) from big_mart group by Item_Type  ; # this is right answer

#37.WRITE a query to show maximum Item_Weight BY
Outlet_Establishment_Year

select Outlet_Establishment_Year , max(Item_Weight) from big_mart 
group by Outlet_Establishment_Year  ; # this is right answer


#38.WRITE a query to show minimum Item_Weight BY Outlet_Type

select Outlet_Type  , min(Item_Weight) from big_mart 
group by Outlet_Type  ; # this is right answer

#39.WRITE a query to show average Item_Weight BY
Outlet_Location_Type ORDER BY descending

select Outlet_Location_Type , avg(Item_Weight) from big_mart 
group by Outlet_Location_Type  ; # this is right answer

#40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type

select Item_Type ,max(Item_Outlet_Sales) from big_mart group by Item_Type ; # this is right answer

#41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select Item_Type ,min(Item_Outlet_Sales) from big_mart
group by Item_Type ; # this is right answer


#42.WRITE a query to show minimum Item_Outlet_Sales BY
Outlet_Establishment_Year

select Outlet_Establishment_Year  ,min(Item_Outlet_Sales) from big_mart 
group by Outlet_Establishment_Year  ; # this is right answer

#43.WRITE a query to show maximum Item_Outlet_Sales BY
Outlet_Establishment_Year ordered BY descending

select Outlet_Establishment_Year  ,max(Item_Outlet_Sales) from big_mart 
group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc; # this is right answer

#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
AND ORDER it itn descending

select Outlet_Size , avg(Item_Outlet_Sales) from big_mart 
group by Outlet_Size order by Outlet_Size desc ; # this is right answer

#45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size

select Outlet_Size , avg(Item_Outlet_Sales) from big_mart 
group by Outlet_Size ; # THIS is right ANSWER


#46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type

select Outlet_Size,AVG(Item_Outlet_Sales) from big_mart group by Outlet_Size  ; # THIS is right ANSWER

select * from big_mart ;

#47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type

select Outlet_Type , MAX(Item_Outlet_Sales) from big_mart group by Outlet_Type  ;

#48.WRITE a query to show total Item_Outlet_Sales BY 
 select sum(Item_Outlet_Sales) from big_mart ; # this is right answe
 
 #49.WRITE a query to show total Item_Outlet_Sales BY Item_Type
 select Item_Type , sum(Item_Outlet_Sales) from big_mart group by Item_Type  ; # this is right answer
 
 #50.WRITE a query to show total Item_Outlet_Sales BY
  select sum(Item_Outlet_Sales) from big_mart ; # this is right answe
  
#51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
  
  select Item_Fat_Content , sum(Item_Outlet_Sales) from big_mart
 group by Item_Fat_Content  ; # this is right answer
 
 #52.WRITE a query to show maximum Item_Visibility BY Item_Type
 select Item_Type ,max(Item_Visibility) from big_mart group by Item_Type  ;


#53.WRITE a query to show Minimum Item_Visibility BY Item_Type 
select Item_Type ,min(Item_Visibility) from big_mart group by Item_Type  ; # this is right answer

#54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but
ONLY WHERE Outlet_Location_Type IS Tier 1

select Item_Type ,Outlet_Location_Type ,sum(Item_Outlet_Sales) from big_mart 
where Outlet_Location_Type = 'Tier 1' group by Item_Type  ; # this is right answer



#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE
Item_Fat_Content IS ONLY Low Fat & LF


select Item_Type ,sum(Item_Outlet_Sales) from big_mart
where Item_Fat_Content in ('Low Fat','LF') group by Item_Type   ; # this is right answer



select * from big_mart ;


















