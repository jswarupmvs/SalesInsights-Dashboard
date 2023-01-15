# use database sales
use sales;

#Show all customer records
SELECT * FROM customers;

SELECT * FROM transactions;

#Show total number of customers
SELECT count(*) FROM customers;

#Show transactions for Chennai market (market code for chennai is Mark001

SELECT * FROM transactions where market_code='Mark001';

#Show distrinct product codes that were sold in chennai

SELECT distinct product_code FROM transactions where market_code='Mark001';

#Show transactions where currency is US dollars

SELECT * from transactions where currency="USD";

#Show transactions in 2020 join by date table

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

select * from transactions t inner join date d on t.order_date = d.date where year = 2020; # in another way

#Show total revenue in year 2020,

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and
 transactions.currency="INR\r" or transactions.currency="USD\r";

select sum(t.sales_amount) from transactions t inner join date d on t.order_date = d.date where year = 2020; #in another way

#Show total revenue in year 2020, January Month,

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

select sum(t.sales_amount) from transactions t inner join date d on t.order_date = d.date where year = 2020 and month_name = 'january'; #in another way

#Show total revenue in year 2020 in Chennai

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";

select sum(t.sales_amount) from transactions t inner join date d on t.order_date = d.date where year = 2020 and market_code="Mark001"; #in another way



# while analysing in power bi using sql for knowing data
select * from transactions where sales_amount <= 0;

