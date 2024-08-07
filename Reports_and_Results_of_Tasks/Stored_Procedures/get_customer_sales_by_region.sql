CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customers_Sales_by_region`(
	in_fiscal_year int)
BEGIN
	-- Created a stored procedure for retrieving  customers sales  by region. here customers like croma,amazon etc...
	with cte1 as (SELECT c.region, c.customer ,round(sum(n.net_sales)/1000000,2) as net_sales_mln FROM net_sales_details n join dim_customer c
	on n.customer_code=c.customer_code
	where fiscal_year = in_fiscal_year
	group by customer,region
	order by net_sales_mln desc)
	select *,net_sales_mln*100/sum(net_sales_mln) over(partition by region) as pct  from cte1;
END