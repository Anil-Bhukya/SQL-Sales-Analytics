CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	in market varchar(45),
    in fiscal_year year,
    out market_badge varchar(45))
BEGIN
    -- Stored Procedure to Determine Market Badge Based on Sales Quantity
	declare qty int default 0;
    
	SELECT sum(s.sold_quantity) as qty FROM fact_sales_monthly s join dim_customer c on s.customer_code=c.customer_code
	where get_fiscal_year(s.date)=fiscal_year and c.market=market
    group by market;
    if qty>5000000 then set market_badge="GOLD";
    else set market_badge="SILVER";
    end if;
END