
SELECT brand, model, price FROM cars; --1

select count(*) as total_cars from cars; --2

select * from  cars where brand ='Hyundai';  --3

select * from cars where color='Red'and color='Blue'; --4

select * from cars where year_of_issue between 2000 and  2010; --5

select count(model='Chevrolet') as total_cars_Chevrolet from cars; --6

select avg(year_of_issue) from cars; --7

select * from cars where brand ='Audi' or brand='Toyota' or brand='Kia' or brand='Ford'; --8

select * from cars where brand ilike'T%'; --9

select * from cars where brand ilike '%e'; --10

select * from cars where brand ilike '_____'; --11

select count(brand='Mercedes-Benz') as total_count_Mercedes_Benz from cars; --12

select max(price)as price_max, min(price) as price_min from cars; --13

select * from cars where brand <>'TOYOTA'; --14

select * from cars order by price desc limit 10; --15

select * from cars where id >= 5 and id <= 15; --16

select * from cars where year_of_issue <>1995 and year_of_issue<>2005; --17

select color, COUNT(*) AS количество FROM cars GROUP BY color ORDER BY количество DESC LIMIT 1; --18

select brand, count(*) as количество from cars group by brand order by количество desc ; --19

select avg(price) from cars where brand='Ford'; --20

select * from cars where color<>'Red'; --21

select brand ,count(*) as количество from cars group by brand order by количество desc; --22

select * from cars order by price desc limit 1; --23

select * from cars avg(price) where year_of_issue >=2005 and color='Maroon'; --24

select count(*) as количество from cars where brand='Toyota'and price>(select avg(price) from cars ); --25

select brand ,price as цена from cars  where price >=80000 order by price desc ; --26

select brand,color as color from cars where color<>'Purple'; --27

select brand ,count(id) as количество_авто_выше_30000 from cars where price>=30000 and year_of_issue=1990 group by brand; --28

select brand, color as color_Turquoise from  cars where year_of_issue=2005 and color='Turquoise'; --29

select brand , year_of_issue as авто_которые_не_выпустились_1980 from cars where year_of_issue<>1980 order by year_of_issue desc ; --30

select model from cars group by model having sum(price) >500000; --31 таких нет

select model from cars group by model having sum(price)>(select avg(price) from cars); --32

select model from cars group by model having count(model)>2; --33

select model from cars group by model having min(price)>10000; --34

select model ,min(price) as min_price from cars group by  model having min(price)>10000 order by min(price) desc ; --34

select model from cars where color ='Goldenrod' group by model; --35

select model from cars group by model having min(price)>=5000; --36 нет таких

select model from cars where price>5000 order by  price asc;   --проверка есть ли

select model,min(price) as min_price from cars group by model having min(price)>5000 order by min_price asc ; --составил другой вариант

select model from cars  where year_of_issue=2000 group by model; --37

select * from cars where year_of_issue=2000; --другой вариант чтобы проверить там 19

select model from cars group by model having max(year_of_issue)<=2005; --38

select * from cars where year_of_issue<=2005 order by year_of_issue desc ; --38

select model from cars group by model having min(year_of_issue)=2015; --39 нет таких

select * from cars where year_of_issue=2015; -- checking

select  model from cars group by model order by avg(price) asc ; --40

select model from cars group by model having min(year_of_issue)=(select min(year_of_issue) from cars); --41

select brand from cars group by brand having sum(price)<=1000000; --42

select brand from cars group by brand having count(*)>=10; --43

select brand , count(*)>10 as total_cars from cars group by brand ;

SELECT model FROM cars GROUP BY model HAVING AVG(price) = (SELECT MAX(avg_price) FROM (SELECT AVG(price) as avg_price FROM cars GROUP BY model) AS subquery); --44

SELECT model FROM cars WHERE price <= 70000 AND year_of_issue > 2010 GROUP BY model; --46

SELECT brand FROM cars WHERE PRICE >=5000 AND color<>'Black'; --47

SELECT brand FROM cars GROUP BY brand HAVING AVG(year_of_issue) = (SELECT MAX(year_of_issue) FROM cars); --48

SELECT brand FROM cars GROUP BY brand HAVING ABS(AVG(price) - 50) = (SELECT MIN(ABS(price) - 50) FROM cars GROUP BY brand); --49

SELECT brand FROM cars GROUP BY brand HAVING MAX(price) / MIN(price) > 5; --50