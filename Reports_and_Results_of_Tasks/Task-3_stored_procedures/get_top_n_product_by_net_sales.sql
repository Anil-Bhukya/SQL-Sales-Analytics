CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_product_by_net_sales`(
	in_fiscal_year int,
    in_top_n int
)
BEGIN
	-- Created a stored procedure for retrieving the top n products by net sales. companies products
	SELECT p.product, round(sum(n.net_sales)/1000000,2) as net_sales_mln FROM net_sales_details n join dim_product p
	on n.product_code=p.product_code
	where fiscal_year= in_fiscal_year
	group by product
	order by net_sales_mln desc
	limit in_top_n;
END