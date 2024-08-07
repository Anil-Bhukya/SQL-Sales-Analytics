
-- Query to Calculate Daily Total Gross Sales Price by month of fiscal year for a croma Customer
select s.date,sum(s.sold_quantity*g.gross_price) as total_gross_price
from fact_sales_monthly s join fact_gross_price g on s.product_code=g.product_code and g.fiscal_year=get_fiscal_year(s.date)
where customer_code= 90002002 
group by s.date
order by date asc;


-- Query to Calculate Total Gross Sales Price by Fiscal Year for a croma Customer
select g.fiscal_year,sum(s.sold_quantity*g.gross_price) as total_gross_price
from fact_sales_monthly s join fact_gross_price g on s.product_code=g.product_code and g.fiscal_year=get_fiscal_year(s.date)
where customer_code= 90002002 
group by g.fiscal_year
