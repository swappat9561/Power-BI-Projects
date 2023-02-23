use sales;

/* see the containt of each table */

select * from customers;
select * from date;
select * from markets;
select * from products;
select * from transactions;

/* now we will see count of rows in each table */

select count(*) from customers;
select count(*) from date;
select count(*) from markets;
select count(*) from products;
select count(*) from transactions;

select * from transactions
where currency = "USD";

/* now inner join date and transaction table */

select sales.date.*,sales.transactions.* from
sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where year=2020;

/* 
select date,sales_amount from
sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date;
where year=2020;
*/


/*  calculate sales in year 2020 */
select sum(sales.transactions.sales_amount) from
sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where year=2020;

/*  calculate sales in year 2019 */

select sum(sales.transactions.sales_amount) from
sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where year=2019;

/* see sales in chennai */

select sales.transactions.* , sales.markets.* from
sales.transactions
inner join
sales.markets
on
sales.transactions.market_code=sales.markets.markets_code
where markets_name="Chennai";

/*  to see sales in chennai from year 2020 also you can use join between transaction and date table as 
the market code for chennai is Mark001 */

select sum(sales.transactions.sales_amount) from
sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where year=2020 and market_code="Mark001";

select distinct product_code from products;
select count(distinct product_code) from products;

select distinct markets_code from markets;
select count(distinct markets_code) from markets;


select count(*) from transactions
where sales_amount=0;

select count(*) from transactions
where sales_amount <0;

