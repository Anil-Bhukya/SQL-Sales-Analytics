CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_sales`(
 in_fiscal_year int,
 top_n_markets int)
BEGIN
	-- Created a stored procedure for retrieving the top n markets by net sales. here markets like india,UK,US etc..
	SELECT market,round(sum(net_Sales)/1000000,2) as total_net_sales FROM gdb0041.net_sales_details
	where fiscal_year=in_fiscal_year
	group by market
	order by total_net_sales desc
	limit top_n_markets;
END