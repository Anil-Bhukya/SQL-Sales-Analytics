CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customers`(
	cust_id text)
BEGIN
		-- Created a stored procedure for retrieving the monthly gross sales for customers.
	select 
		s.date,sum(s.sold_quantity*g.gross_price) as total_gross_price
	from fact_sales_monthly s join fact_gross_price g on s.product_code=g.product_code and g.fiscal_year=get_fiscal_year(s.date)
	where find_in_set(s.customer_code,cust_id)>0
	group by s.date;
END