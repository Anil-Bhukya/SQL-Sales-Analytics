CREATE DEFINER=`root`@`localhost` PROCEDURE `top_n_market_region_gross_sales`(
	in_fiscal_year int,
    in_top_n int
	)
BEGIN
-- Created a stored procedure to retrieve the top n markets by region based on gross sales. here markets like india,UK,US etc..
with cte1 as (SELECT  c.market, c.region, round(sum(s.total_gross_price)/1000000,2) as total_gross_sales_mln FROM gross_sales  s join dim_customer c on s.customer_code=c.customer_code
where fiscal_year = in_fiscal_year
group by c.market,c.region),
	cte2 as (select *, dense_rank() over(partition by region order by total_gross_sales_mln desc) as dsrnk from cte1)
select * from cte2
where dsrnk<=in_top_n;
END