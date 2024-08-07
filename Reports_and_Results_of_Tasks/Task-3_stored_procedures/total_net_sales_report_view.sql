CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `net_sales_details` AS
    SELECT 
        `sales_post_invoice_details`.`date` AS `date`,
        `sales_post_invoice_details`.`fiscal_year` AS `fiscal_year`,
        `sales_post_invoice_details`.`customer_code` AS `customer_code`,
        `sales_post_invoice_details`.`market` AS `market`,
        `sales_post_invoice_details`.`product_code` AS `product_code`,
        `sales_post_invoice_details`.`product` AS `product`,
        `sales_post_invoice_details`.`variant` AS `variant`,
        `sales_post_invoice_details`.`sold_quantity` AS `sold_quantity`,
        `sales_post_invoice_details`.`gross_price_per_item` AS `gross_price_per_item`,
        `sales_post_invoice_details`.`total_gross_price` AS `total_gross_price`,
        `sales_post_invoice_details`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,
        `sales_post_invoice_details`.`net_invoice_sales` AS `net_invoice_sales`,
        `sales_post_invoice_details`.`post_discount_pct` AS `post_discount_pct`,
        ((1 - `sales_post_invoice_details`.`post_discount_pct`) * `sales_post_invoice_details`.`net_invoice_sales`) AS `net_sales`
    FROM
        `sales_post_invoice_details`