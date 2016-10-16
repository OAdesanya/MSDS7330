
#to select all records from out newyorktable table
select * from newyorktable;


# To get Distinct boros
select distinct boro from newyorktable;

# Count of each boros
select  Boro, count(*) as Count_of_each_Boro from newyorktable
group by Boro

#Boros by Percentage
select b.boro as Boros, count(*) as BoroCount, count(*)/c.BoroCount * 100 as Percentage
from newyorktable as b,
(select count(*) as borocount from  newyorktable) c
group by boro

#max MarketValueSqFt
SELECT max(MarketValueperSqFt) as Price_ValuePerSqFt, Boro
from newyorktable
group by Boro

#FullMarketValue
SELECT Boro,AVG(FullMarketValue) AS Avg_Price_Per_Boro , avg(NetOperatingIncome) as Avg_Operating_Income, avg(MarketValueperSqFt) as Avg_MarketValue_PerSqFt
from newyorktable
group by Boro

select boro,neighborhood, count(neighborhood) from newyorktable group by boro, neighborhood

select boro, buildingclassification, count(buildingclassification) from newyorktable group by boro, buildingclassification

select neighborhood, count(totalunits) from newyorktable group by neighborhood 

select boro, neighborhood from newyorktable group by boro


select boro , neighborhood, count(neighborhood) from newyorktable
#where boro like '%Manhattan%'
group by boro, neighborhood



select boro , neighborhood, count(neighborhood) from newyorktable
where boro like '%Manhattan%'
group by boro, neighborhood

select boro , neighborhood, count(neighborhood) from newyorktable
where boro like '%Bronx%'
group by boro, neighborhood

select boro , neighborhood, count(neighborhood) from newyorktable
where boro like '%Brooklyn%'
group by boro, neighborhood

select boro , neighborhood, count(neighborhood) from newyorktable
where boro like '%Queens%'
group by boro, neighborhood

select boro , neighborhood, count(neighborhood) from newyorktable
where boro like '%Staten Island%'
group by boro, neighborhood

select boro, max(neighborhood) from newyorktable group by boro

select boro,avg(grosssqft), avg(estimatedgrossincome), avg(grossincomepersqft), avg(estimatedexpense), avg(expensepersqft), avg(netoperatingincome), avg(fullmarketvalue)
from newyorktable
group by boro



