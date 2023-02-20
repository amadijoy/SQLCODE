select *
from "sales_tables"
question one
select sum("PROFIT") as "anglo_fraco"
from
(select *,
case when "COUNTRIES" in ('Nigeria', 'Ghana') then 'Anglophone'
else 'Francophone' end as "TERRITORY"
from "sales_tables") as "table_one";

--Question 2
select "TERRITORY", sum("PROFIT") as "profit_sum"
from 
(select *,
case when "COUNTRIES" in ('Nigeria', 'Ghana') then 'Anglophone'
else 'Francophone' end as "TERRITORY"
from "sales_tables") as "table_one"
group by "TERRITORY"
order by "profit_sum" desc;


Question 3
select "COUNTRIES", sum("PROFIT") as "country_profit"
from "sales_tables"
where "YEARS" in (2019)
group by "COUNTRIES" 
order by "country_profit" desc;

question 4
select "YEARS", sum("PROFIT") as "year_profit"
from "sales_tables"
group by "YEARS"
order by "year_profit" desc;

question 5
select "MONTHS", "YEARS", SUM("PROFIT") as "profit_sum"
from "sales_tables"
group by "MONTHS", "YEARS"
order by "profit_sum" asc;

QUESTION 6
select min("PROFIT")
from "sales_tables"
where "MONTHS" = 'December' and "YEARS" = 2018;

QUESTION 7
select "MONTHS", round((sum("PROFIT")/sum("COST"))*100, 3) as "percentage_profit%"
from "sales_tables"
where "YEARS" in (2019)
group by "MONTHS"
order by "percentage_profit%" desc;

select *
from "sales_tables"
SECTION B (Q5)
select "BRANDS", sum("QUANTITY") as "qty"
from "sales_tables"
where "BRANDS" not like '%malt'
group by "BRANDS"
order by "qty" desc;



