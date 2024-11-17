SELECT *
  FROM RS;


-- Data Cleaning

select * from RS
where age is null
	or
	quantiy is null
	or
	price_per_unit is null
	or
	cogs is null
	or
	total_sale is null;

Delete  from RS
where age is null
	or
	quantiy is null
	or
	price_per_unit is null
	or
	cogs is null
	or
	total_sale is null;

-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

select * from  RS
WHERE CAST(sale_date AS DATE) = '2022-11-05';


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
select category,
	quantiy,
	year(sale_date) as year,
	month (sale_date) as month
from  RS
WHERE
	category = 'clothing'
	and
	quantiy >= '4'
	and
	year(sale_date) = '2022'
	and
	month (sale_date) = '11';




-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select category,
	sum (total_sale) as net_sale,
	count(*) as total_orders
from RS
group by category;



-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select category,
	avg (age) as average_age
from RS
where category = beauty'


-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)