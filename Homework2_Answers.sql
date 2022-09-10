show databases;
use classicmodels;
-- show all customers in Australia
select * from classicmodels.customers where country = "Australia";
-- show First and Last name of customers in Melbourne
select contactFirstName, contactLastName from classicmodels.customers where city = "Melbourne";
-- show all customers with Credit Limit over $200,000
select * from classicmodels.customers where creditLimit > 200000;
-- who is the president of the company?
select firstName, lastName from classicmodels.employees where jobTitle = "President";
-- how many Sales Reps are in the company?
select count(jobTitle) from classicmodels.employees where jobTitle = "Sales Rep";
-- show payments in descending order
select * from classicmodels.payments order by amount desc;
-- what was the check# for the payment done on December 17th 2004
select checkNumber from classicmodels.payments where paymentDate = "2004-12-17";
-- show product line with the word 'replica' in the description
select productLine from classicmodels.products where productDescription like "%replica%";
-- show product name for vendor 'Unimax Art Galleries'
select productName from classicmodels.products where productVendor = "Unimax Art Galleries";
-- what is the customer number for the highest amount of payment
select customerNumber, sum(amount) from classicmodels.payments group by customerNumber order by `sum(amount)` desc limit 1;