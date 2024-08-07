CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	in_market varchar(45),
    in_fiscal_year int,
    in_top_n_customers int
    
)
BEGIN
	-- Created a stored procedure for retrieving the top n customers by net sales.
	SELECT c.customer ,round(sum(n.net_sales)/1000000,2) as net_sales_mln FROM net_sales_details n join dim_customer c
	on n.customer_code=c.customer_code
	where fiscal_year = in_fiscal_year and n.market=in_market
	group by customer
	order by net_sales_mln desc
	limit in_top_n_customers;
END