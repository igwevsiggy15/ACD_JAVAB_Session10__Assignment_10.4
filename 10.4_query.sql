use bank;
-- 1)
-- a. Display CNAME using the HAVING clause to filter the result set to only those records of CNAME column that
-- have a count of greater than two(i.e. HAVING COUNT(*) >2).
select cname
	from customer
    group by cname
    having count(*) > 2;
    
-- b. Select all Customers from the Customer table and group them by the CNAME.
select * from customer group by cname;

-- c. Select all records from Customer table, then orders them by the CNAME field in ascending order.
select * from customer order by cname asc;

-- 3)
-- a. Truncate all the records from Customer table.
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE customer;
SET FOREIGN_KEY_CHECKS = 1;

-- b. Rename the table ‘Account’ to ‘Customer_Account’.
RENAME TABLE account TO customer_account;

-- c. Drop the table ‘Customer’.
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE customer;
SET FOREIGN_KEY_CHECKS = 1;

-- d. Drop the table ‘Customer_Account’.
DROP TABLE customer_account;