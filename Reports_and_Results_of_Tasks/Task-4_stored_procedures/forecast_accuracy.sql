CREATE DEFINER=`root`@`localhost` PROCEDURE `forecast_accuracy_customer`(
	in_fiscal_year int
    )
BEGIN
	-- Stored Procedure for Calculating Forecast Accuracy by Customer
	SET SESSION sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
	with for_forecast_accuracy as (SELECT customer_code, (sold_quantity) as total_sold_quantity,
	sum(forecast_quantity) as total_forecast_quantity,
	sum((forecast_quantity-sold_quantity)) as net_err,
	sum((forecast_quantity-sold_quantity))*100/sum(forecast_quantity) as net_err_pct,
	sum(abs(forecast_quantity-sold_quantity)) as abs_err,
	sum(abs(forecast_quantity-sold_quantity))*100/sum(forecast_quantity) as abs_err_pct FROM fact_act_est s 
	where s.fiscal_year= in_fiscal_year
	group by customer_code
	order by abs_err_pct desc)
	select f.*,c.customer,c.market, if(abs_err_pct>100,0,100-abs_err_pct) as forecast_accuracy from for_forecast_accuracy f
	join dim_customer c on f.customer_code=c.customer_code
	order by forecast_accuracy desc;
END